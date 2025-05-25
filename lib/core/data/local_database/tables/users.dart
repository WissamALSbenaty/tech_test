import 'package:drift/drift.dart';

class Users extends Table {
  TextColumn get phoneNumber => text()();
  BoolColumn get isVerified => boolean()();
  IntColumn get balance => integer()();

}
