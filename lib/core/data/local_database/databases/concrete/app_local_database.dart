
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:fintech/core/data/local_database/daos/beneficiaries_dao.dart';
import 'package:fintech/core/data/local_database/daos/top_up_histories_dao.dart';
import 'package:fintech/core/data/local_database/daos/users_dao.dart';
import 'package:fintech/core/data/local_database/databases/abstract/i_app_local_database.dart';
import 'package:fintech/core/data/local_database/tables/beneficiaries.dart';
import 'package:fintech/core/data/local_database/tables/top_up_histories.dart';
import 'package:fintech/features/auth/data/entities/user_entity.dart';
import 'package:fintech/core/data/local_database/tables/users.dart';
import 'package:fintech/features/beneficiaries/data/entities/beneficiary_entity.dart';
import 'package:fintech/features/top_up/data/entities/top_up_history_entity.dart';
import 'package:injectable/injectable.dart';

part 'app_local_database.g.dart';

@DriftDatabase(tables: [
  Users,
  Beneficiaries,
  TopUpHistories,
], daos: [
  UsersDao,
  BeneficiariesDao,
  TopUpHistoriesDao
])
@Singleton(as: IAppLocalDatabase)
class AppLocalDatabase extends _$AppLocalDatabase implements IAppLocalDatabase {
  AppLocalDatabase() : super(driftDatabase(name: 'app_db'));
  AppLocalDatabase.test():super(NativeDatabase.memory());
  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
          onUpgrade: (final migrator, final from, final to) async {
        await transaction(() async {
        });
      });

  @override
  Future<void> logout() => Future.wait([
        usersDao.deleteUser(),
        beneficiariesDao.deleteAllEntities(),
        topUpHistoriesDao.deleteAllEntities(),
      ]);

  @override
  Future<void> createUser({required final String phoneNumber, required final bool isVerified})=>usersDao.createUser(
      phoneNumber: phoneNumber, isVerified: isVerified);
  @override
  Future<UserEntity?> getCurrentUser()=>usersDao.getCurrentUser();

  @override
  Future<void> createBeneficiary({required final String name})=>beneficiariesDao.createBeneficiary(name);

  @override
  Future<void> createTopUp({required final int beneficiaryId, required final int amount})=>topUpHistoriesDao.createTopUp(
      beneficiaryId: beneficiaryId, amount: amount);

  @override
  Future<void> deleteBeneficiary({required final int id})=>beneficiariesDao.deleteEntity(id);

  @override
  Future<List<BeneficiaryEntity>> getBeneficiaries()async=>
      (await beneficiariesDao.getAllEntities()).map( BeneficiaryEntity.fromLocalBeneficiary).toList();

  @override
  Future<void> updateUserBalance({required final int newBalance})=>usersDao.updateUserBalance(balance: newBalance);

  @override
  Future<List<TopUpHistoryEntity>> getTopUpHistories()=> topUpHistoriesDao.getAllWithBeneficiary();




}
