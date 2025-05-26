import 'package:drift/drift.dart';
import 'package:fintech/core/data/errors/core_errors.dart';
import 'package:fintech/core/data/errors/top_up_errors.dart';
import 'package:fintech/core/data/local_database/databases/concrete/app_local_database.dart';
import 'package:fintech/core/utils/constants.dart';
import 'package:flutter_test/flutter_test.dart';



void main() {
  TestWidgetsFlutterBinding.ensureInitialized();


  test('create user works correctly', ()async {
    final AppLocalDatabase database=AppLocalDatabase.test();

    await database.createUser(phoneNumber: '+1234567890', isVerified: true);
    final user = await database.getCurrentUser();
    expect(user?.phoneNumber, '+1234567890');
    expect(user?.isVerified, true);
    await database.close();
  });

  test('update user balance works correctly', () async {
    final AppLocalDatabase database = AppLocalDatabase.test();
    
    await database.createUser(phoneNumber: '+1234567890', isVerified: true);
    await database.updateUserBalance(newBalance: 1000);
    
    final user = await database.getCurrentUser();
    expect(user?.balance, 1000);
    await database.close();
  });

  test('delete user works correctly', () async {
    final AppLocalDatabase database = AppLocalDatabase.test();
    
    await database.createUser(phoneNumber: '+1234567890', isVerified: true);
    await database.logout();
    
    final user = await database.getCurrentUser();
    expect(user, null);
    await database.close();
  });

  test('get current user returns null when no user exists', () async {
    final AppLocalDatabase database = AppLocalDatabase.test();
    
    final user = await database.getCurrentUser();
    expect(user, null);
    await database.close();
  });

  test('create user overwrites existing user', () async {
    final AppLocalDatabase database = AppLocalDatabase.test();
    
    await database.createUser(phoneNumber: '+1234567890', isVerified: true);
    await database.createUser(phoneNumber: '+0987654321', isVerified: false);
    
    final user = await database.getCurrentUser();
    expect(user?.phoneNumber, '+0987654321');
    expect(user?.isVerified, false);
    await database.close();
  });


  test('create beneficiary works correctly', () async {
    final AppLocalDatabase database = AppLocalDatabase.test();
    
    await database.createBeneficiary(name: 'Test Beneficiary');
    final beneficiaries = await database.getBeneficiaries();
    
    expect(beneficiaries.length, 1);
    expect(beneficiaries.first.nickname, 'Test Beneficiary');
    await database.close();
  });

  test('delete beneficiary works correctly', () async {
    final AppLocalDatabase database = AppLocalDatabase.test();
    
    await database.createBeneficiary(name: 'Test Beneficiary');
    final beneficiaries = await database.getBeneficiaries();
    await database.deleteBeneficiary(id: beneficiaries.first.id);
    
    final updatedBeneficiaries = await database.getBeneficiaries();
    expect(updatedBeneficiaries.isEmpty, true);
    await database.close();
  });

  test('get beneficiaries returns empty list when no beneficiaries exist', () async {
    final AppLocalDatabase database = AppLocalDatabase.test();
    
    final beneficiaries = await database.getBeneficiaries();
    expect(beneficiaries.isEmpty, true);
    await database.close();
  });

  test('create top up works correctly', () async {
    final AppLocalDatabase database = AppLocalDatabase.test();
    await database.createUser(phoneNumber: '+1234567890', isVerified: true);

    await database.createBeneficiary(name: 'Test Beneficiary');
    final beneficiaries = await database.getBeneficiaries();
    
    await database.createTopUp(
      beneficiaryId: beneficiaries.first.id,
      amount: 30
    );
    
    final histories = await database.getTopUpHistories();
    expect(histories.length, 1);
    expect(histories.first.amount, 30+topUpCharge);
    expect(histories.first.beneficiary.id, beneficiaries.first.id);
    await database.close();
  });

  test('get top up histories returns empty list when no histories exist', () async {
    final AppLocalDatabase database = AppLocalDatabase.test();
    
    final histories = await database.getTopUpHistories();
    expect(histories.isEmpty, true);
    await database.close();
  });

  test('logout deletes all data', () async {
    final AppLocalDatabase database = AppLocalDatabase.test();
    
    await database.createUser(phoneNumber: '+1234567890', isVerified: true);
    await database.createBeneficiary(name: 'Test Beneficiary');
    final beneficiaries = await database.getBeneficiaries();
    await database.createTopUp(
      beneficiaryId: beneficiaries.first.id,
      amount:30
    );
    
    await database.logout();
    
    final user = await database.getCurrentUser();
    final updatedBeneficiaries = await database.getBeneficiaries();
    final histories = await database.getTopUpHistories();
    
    expect(user, null);
    expect(updatedBeneficiaries.isEmpty, true); 
    expect(histories.isEmpty, true);
    await database.close();
  });

  test('creating more than 5 beneficiaries throws MaximumBeneficiariesError', () async {
    final AppLocalDatabase database = AppLocalDatabase.test();
    
    // Create 5 beneficiaries (max limit)
    await database.createBeneficiary(name: 'Beneficiary 1');
    await database.createBeneficiary(name: 'Beneficiary 2'); 
    await database.createBeneficiary(name: 'Beneficiary 3');
    await database.createBeneficiary(name: 'Beneficiary 4');
    await database.createBeneficiary(name: 'Beneficiary 5');

    // Attempt to create 6th beneficiary
    expect(
      () => database.createBeneficiary(name: 'Beneficiary 6'),
      throwsA(isA<MaximumBeneficiariesError>())
    );

    final beneficiaries = await database.getBeneficiaries();
    expect(beneficiaries.length, 5);
    await database.close();
  });

  test('creating top up without user throws UnAuthorizedError', () async {
    final AppLocalDatabase database = AppLocalDatabase.test();
    await database.createBeneficiary(name: 'Test Beneficiary');
    final beneficiaries = await database.getBeneficiaries();

    expect(
      () => database.createTopUp(
        beneficiaryId: beneficiaries.first.id,
        amount: 500
      ),
      throwsA(isA<UnAuthorizedError>())
    );
    await database.close();
  });

  test('creating top up with insufficient balance throws NotEnoughBalanceError', () async {
    final AppLocalDatabase database = AppLocalDatabase.test();
    await database.createUser(phoneNumber: '+1234567890', isVerified: true);
    await database.createBeneficiary(name: 'Test Beneficiary');
    final beneficiaries = await database.getBeneficiaries();

    expect(
      () => database.createTopUp(
        beneficiaryId: beneficiaries.first.id,
        amount: 1100 // Balance is 1000 by default + charge will exceed balance
      ),
      throwsA(isA<NotEnoughBalanceError>())
    );
    await database.close();
  });
/*
  test('exceeding monthly limit for verified user throws MaximumTopUpsInMonthError', () async {
    final AppLocalDatabase database = AppLocalDatabase.test();
    await database.createUser(phoneNumber: '+1234567890', isVerified: true);
    await database.createBeneficiary(name: 'Test Beneficiary');
    final beneficiaries = await database.getBeneficiaries();

    // Create top ups until reaching limit
    await database.createTopUp(beneficiaryId: beneficiaries.first.id, amount: 4000);
    await database.createTopUp(beneficiaryId: beneficiaries.first.id, amount: 4000);

    // This should exceed the monthly limit for verified users
    expect(
      () => database.createTopUp(
        beneficiaryId: beneficiaries.first.id,
        amount: 4000
      ),
      throwsA(isA<MaximumTopUpsInMonthError>())
    );
    await database.close();
  });*/

/*  test('exceeding monthly limit for unverified user throws MaximumTopUpsInMonthError', () async {
    final AppLocalDatabase database = AppLocalDatabase.test();
    await database.createUser(phoneNumber: '+1234567890', isVerified: false);
    await database.createBeneficiary(name: 'Test Beneficiary');
    final beneficiaries = await database.getBeneficiaries();

    // Create top up close to unverified limit
    await database.createTopUp(beneficiaryId: beneficiaries.first.id, amount: 1800);

    // This should exceed the monthly limit for unverified users
    expect(
      () => database.createTopUp(
        beneficiaryId: beneficiaries.first.id,
        amount: 500
      ),
      throwsA(isA<MaximumTopUpsInMonthError>())
    );
    await database.close();
  });*/
}
