import 'package:fintech/features/auth/data/entities/user_entity.dart';

class UserProfileModel  {
  final String phoneNumber;
  final bool isVerified;
  final int balance;

  UserProfileModel({
    required this.phoneNumber,
    required this.isVerified,
    required this.balance
  });

  factory UserProfileModel.fromEntity(final UserEntity entity) => UserProfileModel(
    phoneNumber: entity.phoneNumber,
    isVerified: entity.isVerified,
    balance: entity.balance
  );
}
