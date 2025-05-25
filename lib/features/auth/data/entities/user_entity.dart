import 'package:fintech/core/data/local_database/databases/concrete/app_local_database.dart';

class UserEntity {
  final String phoneNumber;
  final bool isVerified;
  final int balance;

  const UserEntity({
    required this.phoneNumber,
    required this.isVerified,
    required this.balance,
  });

  factory UserEntity.fromLocalUser(final User user) => UserEntity(
        phoneNumber: user.phoneNumber,
        isVerified: user.isVerified,
        balance: user.balance,
      );

  User toLocalUser() => User(
        phoneNumber: phoneNumber,
        isVerified: isVerified,
        balance: balance,
      );

  UserEntity copyWith({
    final String? phoneNumber,
    final bool? isVerified,
    final int? balance,
  }) =>
      UserEntity(
          phoneNumber: phoneNumber ?? this.phoneNumber,
          isVerified: isVerified ?? this.isVerified,
          balance: balance ?? this.balance);
}
