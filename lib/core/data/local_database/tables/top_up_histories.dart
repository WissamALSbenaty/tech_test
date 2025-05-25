import 'package:drift/drift.dart';
import 'package:fintech/core/data/local_database/tables/base_cache_table.dart';
import 'package:fintech/core/data/local_database/tables/beneficiaries.dart';

class TopUpHistories extends BaseCacheTable {
  IntColumn get beneficiaryId => integer().references(Beneficiaries, #id)();
  DateTimeColumn get creationTime => dateTime().withDefault(currentDateAndTime)();
  IntColumn get amount => integer()();
}
