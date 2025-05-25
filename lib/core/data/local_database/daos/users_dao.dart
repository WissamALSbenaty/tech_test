import 'package:drift/drift.dart';
import 'package:fintech/core/data/local_database/databases/concrete/app_local_database.dart';
import 'package:fintech/core/utils/constants.dart';
import 'package:fintech/features/auth/data/entities/user_entity.dart';
import 'package:fintech/core/data/local_database/tables/users.dart';

part 'users_dao.g.dart';

@DriftAccessor(tables: [Users])
class UsersDao extends DatabaseAccessor<AppLocalDatabase> with _$UsersDaoMixin {
  UsersDao(super.attachedDatabase);

  Future<UserEntity?> getCurrentUser() async {
    final User? result = await select(attachedDatabase.users).getSingleOrNull();
    return result != null ? UserEntity.fromLocalUser(result) : null;
  }

  Future<void> createUser(
      {required final String phoneNumber, required final bool isVerified}) async {
    await deleteUser();

    await into(attachedDatabase.users).insert(UserEntity(
      phoneNumber: phoneNumber,
      isVerified: isVerified,
      balance: initialBalance,
    ).toLocalUser());
    return;
  }

  Future<void> updateUserBalance({required final int balance}) async {
    final UserEntity currentUser = (await getCurrentUser())!;
    await deleteUser();

    await into(attachedDatabase.users).insert(currentUser
        .copyWith(
          balance: balance,
        )
        .toLocalUser());
  }

  Future<void> deleteUser() => attachedDatabase.users.deleteAll();
}
