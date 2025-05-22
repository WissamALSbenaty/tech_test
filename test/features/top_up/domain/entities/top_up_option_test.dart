import 'package:flutter_test/flutter_test.dart';
import 'package:fintech/features/top_up/domain/entities/top_up_option.dart';

void main() {
  group('TopUpOption', () {
    test('supports value equality', () {
      expect(
        const TopUpOption(amount: 10),
        const TopUpOption(amount: 10),
      );
    });

    test('copyWith returns a new instance with updated values', () {
      final option = const TopUpOption(amount: 5, isSelected: false);
      final updated = option.copyWith(isSelected: true);
      expect(updated.isSelected, true);
      expect(updated.amount, 5);
    });

    test('can be created from JSON', () {
      final json = {'amount': 20.0, 'isSelected': true};
      final option = TopUpOption.fromJson(json);
      expect(option.amount, 20.0);
      expect(option.isSelected, true);
    });

    test('can be converted to JSON', () {
      final option = const TopUpOption(amount: 30, isSelected: true);
      final json = option.toJson();
      expect(json['amount'], 30);
      expect(json['isSelected'], true);
    });
  });
}
