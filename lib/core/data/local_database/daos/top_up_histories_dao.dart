import 'package:drift/drift.dart';
import 'package:fintech/core/data/errors/core_errors.dart';
import 'package:fintech/core/data/errors/top_up_errors.dart';
import 'package:fintech/core/data/local_database/daos/i_crud_dao.dart';
import 'package:fintech/core/data/local_database/databases/concrete/app_local_database.dart';
import 'package:fintech/core/data/local_database/tables/base_cache_table.dart';
import 'package:fintech/core/data/local_database/tables/beneficiaries.dart';
import 'package:fintech/core/data/local_database/tables/top_up_histories.dart';
import 'package:fintech/core/data/local_database/tables/users.dart';
import 'package:fintech/core/utils/constants.dart';
import 'package:fintech/features/auth/data/entities/user_entity.dart';
import 'package:fintech/features/top_up/data/entities/top_up_history_entity.dart';

part 'top_up_histories_dao.g.dart';


@DriftAccessor(tables: [TopUpHistories,Users, Beneficiaries])
class TopUpHistoriesDao extends ICrudDao<TopUpHistory> with _$TopUpHistoriesDaoMixin {
  TopUpHistoriesDao(super.attachedDatabase);
  @override
  TableInfo<BaseCacheTable, TopUpHistory> get table => topUpHistories;

  @override
  int entityIdGetter(final TopUpHistory entity) => entity.id;

  Future<void>createTopUp({required final int amount, required final int beneficiaryId})async{
    final UserEntity? currentUser = await attachedDatabase.usersDao.getCurrentUser();
    if(currentUser==null) {
      throw UnAuthorizedError();
    }
    final int totalCharge=amount+topUpCharge;
    if(totalCharge>currentUser.balance)
      throw NotEnoughBalanceError();
    final int monthTotalTopUps= await getTotalTopUpThisMonth();
    final int afterSuccessTopUp=monthTotalTopUps+totalCharge;
    if(
      (currentUser.isVerified && afterSuccessTopUp>verifiedUserMaximumTopUpAmount)
      ||( !currentUser.isVerified && afterSuccessTopUp>unverifiedUserMaximumTopUpAmount)
    ) {
      throw MaximumTopUpsInMonthError(isVerified: currentUser.isVerified);
    }

    await attachedDatabase.usersDao.updateUserBalance(balance: currentUser.balance-totalCharge);
    await insertCompanion(TopUpHistoriesCompanion(beneficiaryId: Value(beneficiaryId),
        amount: Value(totalCharge)));
  }

  Future<int> getTotalTopUpThisMonth() async {
    final DateTime now = DateTime.now();
    final DateTime startOfMonth = DateTime(now.year, now.month, 1);
    final DateTime endOfMonth = DateTime(now.year, now.month + 1, 1);

    final query = select(topUpHistories)
      ..where((final t) =>
      t.creationTime.isBiggerOrEqualValue(startOfMonth) &
      t.creationTime.isSmallerOrEqualValue(endOfMonth));

    final results = await query.get();

    final total = results.fold<int>(0, (final sum, final item) => sum + item.amount );
    return total;
  }

  Future<List<TopUpHistoryEntity>> getAllWithBeneficiary() async {
    final query = select(topUpHistories).join([
      innerJoin(beneficiaries, beneficiaries.id.equalsExp(topUpHistories.beneficiaryId)),
    ]);

    final rows = await query.get();

    return rows.map((final row) {
      final topUp = row.readTable(topUpHistories);
      final beneficiary = row.readTable(beneficiaries);

      return TopUpHistoryEntity.fromLocalData(
        topUp: topUp,
        beneficiary: beneficiary,
      );
    }).toList();
  }



}