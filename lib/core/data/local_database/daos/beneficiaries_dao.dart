import 'package:drift/drift.dart';
import 'package:fintech/core/data/errors/top_up_errors.dart';
import 'package:fintech/core/data/local_database/daos/i_crud_dao.dart';
import 'package:fintech/core/data/local_database/databases/concrete/app_local_database.dart';
import 'package:fintech/core/data/local_database/tables/base_cache_table.dart';
import 'package:fintech/core/data/local_database/tables/beneficiaries.dart';
import 'package:fintech/core/utils/constants.dart';

part 'beneficiaries_dao.g.dart';


@DriftAccessor(tables: [Beneficiaries])
class BeneficiariesDao extends ICrudDao<Beneficiary> with _$BeneficiariesDaoMixin {
  BeneficiariesDao(super.attachedDatabase);

  @override
  TableInfo<BaseCacheTable, Beneficiary> get table => beneficiaries;

  @override
  int entityIdGetter(final Beneficiary entity) => entity.id;

  Future<void>createBeneficiary(final String beneficiaryName) async{
    final List<Beneficiary> beneficiaries = await getAllEntities();
    if(beneficiaries.length >= maxBeneficiaryCount) {
      throw MaximumBeneficiariesError();
    }
    await insertCompanion(BeneficiariesCompanion( nickname: Value(beneficiaryName)));
  }

}