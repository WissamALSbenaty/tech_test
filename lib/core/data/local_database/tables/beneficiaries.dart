import 'package:drift/drift.dart';
import 'package:fintech/core/data/local_database/tables/base_cache_table.dart';

class Beneficiaries extends BaseCacheTable {
  TextColumn get nickname => text().withLength (max: 20)();
}
