// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_local_database.dart';

// ignore_for_file: type=lint
class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _phoneNumberMeta =
      const VerificationMeta('phoneNumber');
  @override
  late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
      'phone_number', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isVerifiedMeta =
      const VerificationMeta('isVerified');
  @override
  late final GeneratedColumn<bool> isVerified = GeneratedColumn<bool>(
      'is_verified', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_verified" IN (0, 1))'));
  static const VerificationMeta _balanceMeta =
      const VerificationMeta('balance');
  @override
  late final GeneratedColumn<int> balance = GeneratedColumn<int>(
      'balance', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [phoneNumber, isVerified, balance];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('phone_number')) {
      context.handle(
          _phoneNumberMeta,
          phoneNumber.isAcceptableOrUnknown(
              data['phone_number']!, _phoneNumberMeta));
    } else if (isInserting) {
      context.missing(_phoneNumberMeta);
    }
    if (data.containsKey('is_verified')) {
      context.handle(
          _isVerifiedMeta,
          isVerified.isAcceptableOrUnknown(
              data['is_verified']!, _isVerifiedMeta));
    } else if (isInserting) {
      context.missing(_isVerifiedMeta);
    }
    if (data.containsKey('balance')) {
      context.handle(_balanceMeta,
          balance.isAcceptableOrUnknown(data['balance']!, _balanceMeta));
    } else if (isInserting) {
      context.missing(_balanceMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      phoneNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone_number'])!,
      isVerified: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_verified'])!,
      balance: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}balance'])!,
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final String phoneNumber;
  final bool isVerified;
  final int balance;
  const User(
      {required this.phoneNumber,
      required this.isVerified,
      required this.balance});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['phone_number'] = Variable<String>(phoneNumber);
    map['is_verified'] = Variable<bool>(isVerified);
    map['balance'] = Variable<int>(balance);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      phoneNumber: Value(phoneNumber),
      isVerified: Value(isVerified),
      balance: Value(balance),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      phoneNumber: serializer.fromJson<String>(json['phoneNumber']),
      isVerified: serializer.fromJson<bool>(json['isVerified']),
      balance: serializer.fromJson<int>(json['balance']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'phoneNumber': serializer.toJson<String>(phoneNumber),
      'isVerified': serializer.toJson<bool>(isVerified),
      'balance': serializer.toJson<int>(balance),
    };
  }

  User copyWith({String? phoneNumber, bool? isVerified, int? balance}) => User(
        phoneNumber: phoneNumber ?? this.phoneNumber,
        isVerified: isVerified ?? this.isVerified,
        balance: balance ?? this.balance,
      );
  User copyWithCompanion(UsersCompanion data) {
    return User(
      phoneNumber:
          data.phoneNumber.present ? data.phoneNumber.value : this.phoneNumber,
      isVerified:
          data.isVerified.present ? data.isVerified.value : this.isVerified,
      balance: data.balance.present ? data.balance.value : this.balance,
    );
  }

  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('isVerified: $isVerified, ')
          ..write('balance: $balance')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(phoneNumber, isVerified, balance);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.phoneNumber == this.phoneNumber &&
          other.isVerified == this.isVerified &&
          other.balance == this.balance);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> phoneNumber;
  final Value<bool> isVerified;
  final Value<int> balance;
  final Value<int> rowid;
  const UsersCompanion({
    this.phoneNumber = const Value.absent(),
    this.isVerified = const Value.absent(),
    this.balance = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UsersCompanion.insert({
    required String phoneNumber,
    required bool isVerified,
    required int balance,
    this.rowid = const Value.absent(),
  })  : phoneNumber = Value(phoneNumber),
        isVerified = Value(isVerified),
        balance = Value(balance);
  static Insertable<User> custom({
    Expression<String>? phoneNumber,
    Expression<bool>? isVerified,
    Expression<int>? balance,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (isVerified != null) 'is_verified': isVerified,
      if (balance != null) 'balance': balance,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UsersCompanion copyWith(
      {Value<String>? phoneNumber,
      Value<bool>? isVerified,
      Value<int>? balance,
      Value<int>? rowid}) {
    return UsersCompanion(
      phoneNumber: phoneNumber ?? this.phoneNumber,
      isVerified: isVerified ?? this.isVerified,
      balance: balance ?? this.balance,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (isVerified.present) {
      map['is_verified'] = Variable<bool>(isVerified.value);
    }
    if (balance.present) {
      map['balance'] = Variable<int>(balance.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('isVerified: $isVerified, ')
          ..write('balance: $balance, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BeneficiariesTable extends Beneficiaries
    with TableInfo<$BeneficiariesTable, Beneficiary> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BeneficiariesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nicknameMeta =
      const VerificationMeta('nickname');
  @override
  late final GeneratedColumn<String> nickname = GeneratedColumn<String>(
      'nickname', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 20),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, nickname];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'beneficiaries';
  @override
  VerificationContext validateIntegrity(Insertable<Beneficiary> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nickname')) {
      context.handle(_nicknameMeta,
          nickname.isAcceptableOrUnknown(data['nickname']!, _nicknameMeta));
    } else if (isInserting) {
      context.missing(_nicknameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Beneficiary map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Beneficiary(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      nickname: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nickname'])!,
    );
  }

  @override
  $BeneficiariesTable createAlias(String alias) {
    return $BeneficiariesTable(attachedDatabase, alias);
  }
}

class Beneficiary extends DataClass implements Insertable<Beneficiary> {
  final int id;
  final String nickname;
  const Beneficiary({required this.id, required this.nickname});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nickname'] = Variable<String>(nickname);
    return map;
  }

  BeneficiariesCompanion toCompanion(bool nullToAbsent) {
    return BeneficiariesCompanion(
      id: Value(id),
      nickname: Value(nickname),
    );
  }

  factory Beneficiary.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Beneficiary(
      id: serializer.fromJson<int>(json['id']),
      nickname: serializer.fromJson<String>(json['nickname']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nickname': serializer.toJson<String>(nickname),
    };
  }

  Beneficiary copyWith({int? id, String? nickname}) => Beneficiary(
        id: id ?? this.id,
        nickname: nickname ?? this.nickname,
      );
  Beneficiary copyWithCompanion(BeneficiariesCompanion data) {
    return Beneficiary(
      id: data.id.present ? data.id.value : this.id,
      nickname: data.nickname.present ? data.nickname.value : this.nickname,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Beneficiary(')
          ..write('id: $id, ')
          ..write('nickname: $nickname')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nickname);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Beneficiary &&
          other.id == this.id &&
          other.nickname == this.nickname);
}

class BeneficiariesCompanion extends UpdateCompanion<Beneficiary> {
  final Value<int> id;
  final Value<String> nickname;
  const BeneficiariesCompanion({
    this.id = const Value.absent(),
    this.nickname = const Value.absent(),
  });
  BeneficiariesCompanion.insert({
    this.id = const Value.absent(),
    required String nickname,
  }) : nickname = Value(nickname);
  static Insertable<Beneficiary> custom({
    Expression<int>? id,
    Expression<String>? nickname,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nickname != null) 'nickname': nickname,
    });
  }

  BeneficiariesCompanion copyWith({Value<int>? id, Value<String>? nickname}) {
    return BeneficiariesCompanion(
      id: id ?? this.id,
      nickname: nickname ?? this.nickname,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nickname.present) {
      map['nickname'] = Variable<String>(nickname.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BeneficiariesCompanion(')
          ..write('id: $id, ')
          ..write('nickname: $nickname')
          ..write(')'))
        .toString();
  }
}

class $TopUpHistoriesTable extends TopUpHistories
    with TableInfo<$TopUpHistoriesTable, TopUpHistory> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TopUpHistoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _beneficiaryIdMeta =
      const VerificationMeta('beneficiaryId');
  @override
  late final GeneratedColumn<int> beneficiaryId = GeneratedColumn<int>(
      'beneficiary_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES beneficiaries (id)'));
  static const VerificationMeta _creationTimeMeta =
      const VerificationMeta('creationTime');
  @override
  late final GeneratedColumn<DateTime> creationTime = GeneratedColumn<DateTime>(
      'creation_time', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<int> amount = GeneratedColumn<int>(
      'amount', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, beneficiaryId, creationTime, amount];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'top_up_histories';
  @override
  VerificationContext validateIntegrity(Insertable<TopUpHistory> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('beneficiary_id')) {
      context.handle(
          _beneficiaryIdMeta,
          beneficiaryId.isAcceptableOrUnknown(
              data['beneficiary_id']!, _beneficiaryIdMeta));
    } else if (isInserting) {
      context.missing(_beneficiaryIdMeta);
    }
    if (data.containsKey('creation_time')) {
      context.handle(
          _creationTimeMeta,
          creationTime.isAcceptableOrUnknown(
              data['creation_time']!, _creationTimeMeta));
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TopUpHistory map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TopUpHistory(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      beneficiaryId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}beneficiary_id'])!,
      creationTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}creation_time'])!,
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}amount'])!,
    );
  }

  @override
  $TopUpHistoriesTable createAlias(String alias) {
    return $TopUpHistoriesTable(attachedDatabase, alias);
  }
}

class TopUpHistory extends DataClass implements Insertable<TopUpHistory> {
  final int id;
  final int beneficiaryId;
  final DateTime creationTime;
  final int amount;
  const TopUpHistory(
      {required this.id,
      required this.beneficiaryId,
      required this.creationTime,
      required this.amount});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['beneficiary_id'] = Variable<int>(beneficiaryId);
    map['creation_time'] = Variable<DateTime>(creationTime);
    map['amount'] = Variable<int>(amount);
    return map;
  }

  TopUpHistoriesCompanion toCompanion(bool nullToAbsent) {
    return TopUpHistoriesCompanion(
      id: Value(id),
      beneficiaryId: Value(beneficiaryId),
      creationTime: Value(creationTime),
      amount: Value(amount),
    );
  }

  factory TopUpHistory.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TopUpHistory(
      id: serializer.fromJson<int>(json['id']),
      beneficiaryId: serializer.fromJson<int>(json['beneficiaryId']),
      creationTime: serializer.fromJson<DateTime>(json['creationTime']),
      amount: serializer.fromJson<int>(json['amount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'beneficiaryId': serializer.toJson<int>(beneficiaryId),
      'creationTime': serializer.toJson<DateTime>(creationTime),
      'amount': serializer.toJson<int>(amount),
    };
  }

  TopUpHistory copyWith(
          {int? id, int? beneficiaryId, DateTime? creationTime, int? amount}) =>
      TopUpHistory(
        id: id ?? this.id,
        beneficiaryId: beneficiaryId ?? this.beneficiaryId,
        creationTime: creationTime ?? this.creationTime,
        amount: amount ?? this.amount,
      );
  TopUpHistory copyWithCompanion(TopUpHistoriesCompanion data) {
    return TopUpHistory(
      id: data.id.present ? data.id.value : this.id,
      beneficiaryId: data.beneficiaryId.present
          ? data.beneficiaryId.value
          : this.beneficiaryId,
      creationTime: data.creationTime.present
          ? data.creationTime.value
          : this.creationTime,
      amount: data.amount.present ? data.amount.value : this.amount,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TopUpHistory(')
          ..write('id: $id, ')
          ..write('beneficiaryId: $beneficiaryId, ')
          ..write('creationTime: $creationTime, ')
          ..write('amount: $amount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, beneficiaryId, creationTime, amount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TopUpHistory &&
          other.id == this.id &&
          other.beneficiaryId == this.beneficiaryId &&
          other.creationTime == this.creationTime &&
          other.amount == this.amount);
}

class TopUpHistoriesCompanion extends UpdateCompanion<TopUpHistory> {
  final Value<int> id;
  final Value<int> beneficiaryId;
  final Value<DateTime> creationTime;
  final Value<int> amount;
  const TopUpHistoriesCompanion({
    this.id = const Value.absent(),
    this.beneficiaryId = const Value.absent(),
    this.creationTime = const Value.absent(),
    this.amount = const Value.absent(),
  });
  TopUpHistoriesCompanion.insert({
    this.id = const Value.absent(),
    required int beneficiaryId,
    this.creationTime = const Value.absent(),
    required int amount,
  })  : beneficiaryId = Value(beneficiaryId),
        amount = Value(amount);
  static Insertable<TopUpHistory> custom({
    Expression<int>? id,
    Expression<int>? beneficiaryId,
    Expression<DateTime>? creationTime,
    Expression<int>? amount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (beneficiaryId != null) 'beneficiary_id': beneficiaryId,
      if (creationTime != null) 'creation_time': creationTime,
      if (amount != null) 'amount': amount,
    });
  }

  TopUpHistoriesCompanion copyWith(
      {Value<int>? id,
      Value<int>? beneficiaryId,
      Value<DateTime>? creationTime,
      Value<int>? amount}) {
    return TopUpHistoriesCompanion(
      id: id ?? this.id,
      beneficiaryId: beneficiaryId ?? this.beneficiaryId,
      creationTime: creationTime ?? this.creationTime,
      amount: amount ?? this.amount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (beneficiaryId.present) {
      map['beneficiary_id'] = Variable<int>(beneficiaryId.value);
    }
    if (creationTime.present) {
      map['creation_time'] = Variable<DateTime>(creationTime.value);
    }
    if (amount.present) {
      map['amount'] = Variable<int>(amount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TopUpHistoriesCompanion(')
          ..write('id: $id, ')
          ..write('beneficiaryId: $beneficiaryId, ')
          ..write('creationTime: $creationTime, ')
          ..write('amount: $amount')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppLocalDatabase extends GeneratedDatabase {
  _$AppLocalDatabase(QueryExecutor e) : super(e);
  $AppLocalDatabaseManager get managers => $AppLocalDatabaseManager(this);
  late final $UsersTable users = $UsersTable(this);
  late final $BeneficiariesTable beneficiaries = $BeneficiariesTable(this);
  late final $TopUpHistoriesTable topUpHistories = $TopUpHistoriesTable(this);
  late final UsersDao usersDao = UsersDao(this as AppLocalDatabase);
  late final BeneficiariesDao beneficiariesDao =
      BeneficiariesDao(this as AppLocalDatabase);
  late final TopUpHistoriesDao topUpHistoriesDao =
      TopUpHistoriesDao(this as AppLocalDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [users, beneficiaries, topUpHistories];
}

typedef $$UsersTableCreateCompanionBuilder = UsersCompanion Function({
  required String phoneNumber,
  required bool isVerified,
  required int balance,
  Value<int> rowid,
});
typedef $$UsersTableUpdateCompanionBuilder = UsersCompanion Function({
  Value<String> phoneNumber,
  Value<bool> isVerified,
  Value<int> balance,
  Value<int> rowid,
});

class $$UsersTableFilterComposer
    extends Composer<_$AppLocalDatabase, $UsersTable> {
  $$UsersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get phoneNumber => $composableBuilder(
      column: $table.phoneNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isVerified => $composableBuilder(
      column: $table.isVerified, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get balance => $composableBuilder(
      column: $table.balance, builder: (column) => ColumnFilters(column));
}

class $$UsersTableOrderingComposer
    extends Composer<_$AppLocalDatabase, $UsersTable> {
  $$UsersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get phoneNumber => $composableBuilder(
      column: $table.phoneNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isVerified => $composableBuilder(
      column: $table.isVerified, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get balance => $composableBuilder(
      column: $table.balance, builder: (column) => ColumnOrderings(column));
}

class $$UsersTableAnnotationComposer
    extends Composer<_$AppLocalDatabase, $UsersTable> {
  $$UsersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get phoneNumber => $composableBuilder(
      column: $table.phoneNumber, builder: (column) => column);

  GeneratedColumn<bool> get isVerified => $composableBuilder(
      column: $table.isVerified, builder: (column) => column);

  GeneratedColumn<int> get balance =>
      $composableBuilder(column: $table.balance, builder: (column) => column);
}

class $$UsersTableTableManager extends RootTableManager<
    _$AppLocalDatabase,
    $UsersTable,
    User,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableAnnotationComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (User, BaseReferences<_$AppLocalDatabase, $UsersTable, User>),
    User,
    PrefetchHooks Function()> {
  $$UsersTableTableManager(_$AppLocalDatabase db, $UsersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UsersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UsersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UsersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> phoneNumber = const Value.absent(),
            Value<bool> isVerified = const Value.absent(),
            Value<int> balance = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UsersCompanion(
            phoneNumber: phoneNumber,
            isVerified: isVerified,
            balance: balance,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String phoneNumber,
            required bool isVerified,
            required int balance,
            Value<int> rowid = const Value.absent(),
          }) =>
              UsersCompanion.insert(
            phoneNumber: phoneNumber,
            isVerified: isVerified,
            balance: balance,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UsersTableProcessedTableManager = ProcessedTableManager<
    _$AppLocalDatabase,
    $UsersTable,
    User,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableAnnotationComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (User, BaseReferences<_$AppLocalDatabase, $UsersTable, User>),
    User,
    PrefetchHooks Function()>;
typedef $$BeneficiariesTableCreateCompanionBuilder = BeneficiariesCompanion
    Function({
  Value<int> id,
  required String nickname,
});
typedef $$BeneficiariesTableUpdateCompanionBuilder = BeneficiariesCompanion
    Function({
  Value<int> id,
  Value<String> nickname,
});

final class $$BeneficiariesTableReferences extends BaseReferences<
    _$AppLocalDatabase, $BeneficiariesTable, Beneficiary> {
  $$BeneficiariesTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$TopUpHistoriesTable, List<TopUpHistory>>
      _topUpHistoriesRefsTable(_$AppLocalDatabase db) =>
          MultiTypedResultKey.fromTable(db.topUpHistories,
              aliasName: $_aliasNameGenerator(
                  db.beneficiaries.id, db.topUpHistories.beneficiaryId));

  $$TopUpHistoriesTableProcessedTableManager get topUpHistoriesRefs {
    final manager = $$TopUpHistoriesTableTableManager($_db, $_db.topUpHistories)
        .filter((f) => f.beneficiaryId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_topUpHistoriesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$BeneficiariesTableFilterComposer
    extends Composer<_$AppLocalDatabase, $BeneficiariesTable> {
  $$BeneficiariesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nickname => $composableBuilder(
      column: $table.nickname, builder: (column) => ColumnFilters(column));

  Expression<bool> topUpHistoriesRefs(
      Expression<bool> Function($$TopUpHistoriesTableFilterComposer f) f) {
    final $$TopUpHistoriesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.topUpHistories,
        getReferencedColumn: (t) => t.beneficiaryId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TopUpHistoriesTableFilterComposer(
              $db: $db,
              $table: $db.topUpHistories,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$BeneficiariesTableOrderingComposer
    extends Composer<_$AppLocalDatabase, $BeneficiariesTable> {
  $$BeneficiariesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nickname => $composableBuilder(
      column: $table.nickname, builder: (column) => ColumnOrderings(column));
}

class $$BeneficiariesTableAnnotationComposer
    extends Composer<_$AppLocalDatabase, $BeneficiariesTable> {
  $$BeneficiariesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nickname =>
      $composableBuilder(column: $table.nickname, builder: (column) => column);

  Expression<T> topUpHistoriesRefs<T extends Object>(
      Expression<T> Function($$TopUpHistoriesTableAnnotationComposer a) f) {
    final $$TopUpHistoriesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.topUpHistories,
        getReferencedColumn: (t) => t.beneficiaryId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TopUpHistoriesTableAnnotationComposer(
              $db: $db,
              $table: $db.topUpHistories,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$BeneficiariesTableTableManager extends RootTableManager<
    _$AppLocalDatabase,
    $BeneficiariesTable,
    Beneficiary,
    $$BeneficiariesTableFilterComposer,
    $$BeneficiariesTableOrderingComposer,
    $$BeneficiariesTableAnnotationComposer,
    $$BeneficiariesTableCreateCompanionBuilder,
    $$BeneficiariesTableUpdateCompanionBuilder,
    (Beneficiary, $$BeneficiariesTableReferences),
    Beneficiary,
    PrefetchHooks Function({bool topUpHistoriesRefs})> {
  $$BeneficiariesTableTableManager(
      _$AppLocalDatabase db, $BeneficiariesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BeneficiariesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BeneficiariesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BeneficiariesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> nickname = const Value.absent(),
          }) =>
              BeneficiariesCompanion(
            id: id,
            nickname: nickname,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String nickname,
          }) =>
              BeneficiariesCompanion.insert(
            id: id,
            nickname: nickname,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$BeneficiariesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({topUpHistoriesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (topUpHistoriesRefs) db.topUpHistories
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (topUpHistoriesRefs)
                    await $_getPrefetchedData<Beneficiary, $BeneficiariesTable,
                            TopUpHistory>(
                        currentTable: table,
                        referencedTable: $$BeneficiariesTableReferences
                            ._topUpHistoriesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$BeneficiariesTableReferences(db, table, p0)
                                .topUpHistoriesRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.beneficiaryId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$BeneficiariesTableProcessedTableManager = ProcessedTableManager<
    _$AppLocalDatabase,
    $BeneficiariesTable,
    Beneficiary,
    $$BeneficiariesTableFilterComposer,
    $$BeneficiariesTableOrderingComposer,
    $$BeneficiariesTableAnnotationComposer,
    $$BeneficiariesTableCreateCompanionBuilder,
    $$BeneficiariesTableUpdateCompanionBuilder,
    (Beneficiary, $$BeneficiariesTableReferences),
    Beneficiary,
    PrefetchHooks Function({bool topUpHistoriesRefs})>;
typedef $$TopUpHistoriesTableCreateCompanionBuilder = TopUpHistoriesCompanion
    Function({
  Value<int> id,
  required int beneficiaryId,
  Value<DateTime> creationTime,
  required int amount,
});
typedef $$TopUpHistoriesTableUpdateCompanionBuilder = TopUpHistoriesCompanion
    Function({
  Value<int> id,
  Value<int> beneficiaryId,
  Value<DateTime> creationTime,
  Value<int> amount,
});

final class $$TopUpHistoriesTableReferences extends BaseReferences<
    _$AppLocalDatabase, $TopUpHistoriesTable, TopUpHistory> {
  $$TopUpHistoriesTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $BeneficiariesTable _beneficiaryIdTable(_$AppLocalDatabase db) =>
      db.beneficiaries.createAlias($_aliasNameGenerator(
          db.topUpHistories.beneficiaryId, db.beneficiaries.id));

  $$BeneficiariesTableProcessedTableManager get beneficiaryId {
    final $_column = $_itemColumn<int>('beneficiary_id')!;

    final manager = $$BeneficiariesTableTableManager($_db, $_db.beneficiaries)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_beneficiaryIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$TopUpHistoriesTableFilterComposer
    extends Composer<_$AppLocalDatabase, $TopUpHistoriesTable> {
  $$TopUpHistoriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get creationTime => $composableBuilder(
      column: $table.creationTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnFilters(column));

  $$BeneficiariesTableFilterComposer get beneficiaryId {
    final $$BeneficiariesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.beneficiaryId,
        referencedTable: $db.beneficiaries,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BeneficiariesTableFilterComposer(
              $db: $db,
              $table: $db.beneficiaries,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TopUpHistoriesTableOrderingComposer
    extends Composer<_$AppLocalDatabase, $TopUpHistoriesTable> {
  $$TopUpHistoriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get creationTime => $composableBuilder(
      column: $table.creationTime,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnOrderings(column));

  $$BeneficiariesTableOrderingComposer get beneficiaryId {
    final $$BeneficiariesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.beneficiaryId,
        referencedTable: $db.beneficiaries,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BeneficiariesTableOrderingComposer(
              $db: $db,
              $table: $db.beneficiaries,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TopUpHistoriesTableAnnotationComposer
    extends Composer<_$AppLocalDatabase, $TopUpHistoriesTable> {
  $$TopUpHistoriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get creationTime => $composableBuilder(
      column: $table.creationTime, builder: (column) => column);

  GeneratedColumn<int> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  $$BeneficiariesTableAnnotationComposer get beneficiaryId {
    final $$BeneficiariesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.beneficiaryId,
        referencedTable: $db.beneficiaries,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BeneficiariesTableAnnotationComposer(
              $db: $db,
              $table: $db.beneficiaries,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TopUpHistoriesTableTableManager extends RootTableManager<
    _$AppLocalDatabase,
    $TopUpHistoriesTable,
    TopUpHistory,
    $$TopUpHistoriesTableFilterComposer,
    $$TopUpHistoriesTableOrderingComposer,
    $$TopUpHistoriesTableAnnotationComposer,
    $$TopUpHistoriesTableCreateCompanionBuilder,
    $$TopUpHistoriesTableUpdateCompanionBuilder,
    (TopUpHistory, $$TopUpHistoriesTableReferences),
    TopUpHistory,
    PrefetchHooks Function({bool beneficiaryId})> {
  $$TopUpHistoriesTableTableManager(
      _$AppLocalDatabase db, $TopUpHistoriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TopUpHistoriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TopUpHistoriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TopUpHistoriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> beneficiaryId = const Value.absent(),
            Value<DateTime> creationTime = const Value.absent(),
            Value<int> amount = const Value.absent(),
          }) =>
              TopUpHistoriesCompanion(
            id: id,
            beneficiaryId: beneficiaryId,
            creationTime: creationTime,
            amount: amount,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int beneficiaryId,
            Value<DateTime> creationTime = const Value.absent(),
            required int amount,
          }) =>
              TopUpHistoriesCompanion.insert(
            id: id,
            beneficiaryId: beneficiaryId,
            creationTime: creationTime,
            amount: amount,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$TopUpHistoriesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({beneficiaryId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (beneficiaryId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.beneficiaryId,
                    referencedTable:
                        $$TopUpHistoriesTableReferences._beneficiaryIdTable(db),
                    referencedColumn: $$TopUpHistoriesTableReferences
                        ._beneficiaryIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$TopUpHistoriesTableProcessedTableManager = ProcessedTableManager<
    _$AppLocalDatabase,
    $TopUpHistoriesTable,
    TopUpHistory,
    $$TopUpHistoriesTableFilterComposer,
    $$TopUpHistoriesTableOrderingComposer,
    $$TopUpHistoriesTableAnnotationComposer,
    $$TopUpHistoriesTableCreateCompanionBuilder,
    $$TopUpHistoriesTableUpdateCompanionBuilder,
    (TopUpHistory, $$TopUpHistoriesTableReferences),
    TopUpHistory,
    PrefetchHooks Function({bool beneficiaryId})>;

class $AppLocalDatabaseManager {
  final _$AppLocalDatabase _db;
  $AppLocalDatabaseManager(this._db);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db, _db.users);
  $$BeneficiariesTableTableManager get beneficiaries =>
      $$BeneficiariesTableTableManager(_db, _db.beneficiaries);
  $$TopUpHistoriesTableTableManager get topUpHistories =>
      $$TopUpHistoriesTableTableManager(_db, _db.topUpHistories);
}
