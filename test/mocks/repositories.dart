

import 'package:fintech/features/auth/domain/repositories/abstract/i_auth_repository.dart';
import 'package:mocktail/mocktail.dart';


import 'package:fintech/features/beneficiaries/domain/repositories/abstract/i_beneficiaries_repository.dart';
import 'package:fintech/features/top_up/domain/repositories/abstract/i_top_up_repository.dart';

class MockAuthRepository extends Mock implements IAuthRepository{}
class MockBeneficiariesRepository extends Mock implements IBeneficiariesRepository {}

class MockTopUpRepository extends Mock implements ITopUpRepository {}

