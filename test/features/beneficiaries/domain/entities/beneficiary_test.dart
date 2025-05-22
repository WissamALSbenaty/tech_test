import 'package:flutter_test/flutter_test.dart';
import 'package:fintech/features/beneficiaries/domain/entities/beneficiary.dart';

void main() {
  group('Beneficiary', () {
    test('supports value equality', () {
      expect(
        Beneficiary(
          id: '1',
          phoneNumber: '+971501234567',
          nickname: 'Test',
          monthlyTopUpLimit: 1000.0,
          currentMonthTopUp: 0.0,
        ),
        Beneficiary(
          id: '1',
          phoneNumber: '+971501234567',
          nickname: 'Test',
          monthlyTopUpLimit: 1000.0,
          currentMonthTopUp: 0.0,
        ),
      );
    });

    test('copyWith returns a new instance with updated values', () {
      final beneficiary = Beneficiary(
        id: '2',
        phoneNumber: '+971502345678',
        nickname: 'Nick',
        monthlyTopUpLimit: 500.0,
        currentMonthTopUp: 100.0,
      );
      final updated = beneficiary.copyWith(nickname: 'Updated');
      expect(updated.nickname, 'Updated');
      expect(updated.id, '2');
    });

    test('can be created from JSON', () {
      final json = {
        'id': '3',
        'phoneNumber': '+971503456789',
        'nickname': 'Json',
        'monthlyTopUpLimit': 750.0,
        'currentMonthTopUp': 50.0,
      };
      final beneficiary = Beneficiary.fromJson(json);
      expect(beneficiary.id, '3');
      expect(beneficiary.nickname, 'Json');
    });

    test('can be converted to JSON', () {
      final beneficiary = Beneficiary(
        id: '4',
        phoneNumber: '+971504567890',
        nickname: 'ToJson',
        monthlyTopUpLimit: 900.0,
        currentMonthTopUp: 10.0,
      );
      final json = beneficiary.toJson();
      expect(json['id'], '4');
      expect(json['nickname'], 'ToJson');
    });
  });
}
