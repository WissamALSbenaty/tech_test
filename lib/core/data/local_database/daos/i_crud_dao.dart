import 'package:drift/drift.dart';
import 'package:fintech/core/data/local_database/databases/concrete/app_local_database.dart';
import 'package:fintech/core/data/local_database/tables/base_cache_table.dart';
import 'package:fintech/core/domain/models/pagination_data_model.dart';

abstract class ICrudDao<T> extends DatabaseAccessor<AppLocalDatabase> {
  ICrudDao(super.attachedDatabase);

  TableInfo<BaseCacheTable, T> get table;

  int entityIdGetter(final T entity);

  Future<T?> getEntityById(final int id) =>
      (select(table)..where((final entity) => entity.id.equals(id)))
          .getSingleOrNull();

  Future<List<T>> getAllEntities() => select(table).get();

  Future<PaginationDataModel<T>> getPaginatedEntities(
      {required final int page,
      final Expression<bool> Function(BaseCacheTable)? whereExpression}) async {
    final query = select(table);
    if (whereExpression != null) {
      query.where(whereExpression);
    }
    query.limit(10, offset: page * 10);
    final List<T> data = await query.get();
    return PaginationDataModel(items: data, totalItems: data.length);
  }

  Future<int> insertCompanion(final UpdateCompanion<T> entity) =>
      into(table).insert(entity);
  Future<int> insertEntity(final T entity) =>
      into(table).insert(entity as Insertable<T>);

  Future<void> insertAll(final List<T> entities) =>
      table.insertAll(entities.map((final e)=>e as Insertable<T>) );

  Future<void> updateEntity(
          final int id, final UpdateCompanion<T> newCompanion) =>
      (update(table)..where((final tbl) => tbl.id.equals(id)))
          .replace(newCompanion);

  Future<void> deleteEntity(final int id) =>
      (delete(table)..where((final tbl) => tbl.id.equals(id))).go();

  Future<void> deleteAllEntities() => table.deleteAll();

  Future<bool> checkIfExist(final int id) async =>
      (await getEntityById(id)) != null;

  Future<void> upsertEntity(final T entity) => upsertAll([entity]);

  Future<void> upsertAll(final List<T> entities) async {
    final futures = <Future>[];
    for (T entity in entities) {
      final query = select(table)
        ..where((final tbl) => tbl.id.equals(entityIdGetter(entity)));
      final result = await query.getSingleOrNull();
      if (result != null) {
        futures.add(update(table).replace(entity as Insertable<T>));
      } else {
        futures.add(into(table).insert(entity as Insertable<T>));
      }
    }
    await Future.wait(futures);
  }
}
