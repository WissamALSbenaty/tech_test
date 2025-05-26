
import 'package:fintech/features/auth/domain/usecases/login_usecase.dart';
import 'package:fintech/features/top_up/domain/usecases/execute_top_up_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockLoginUseCase extends Mock implements LoginUseCase {}

class MockExecuteTopUpUseCase extends Mock implements ExecuteTopUpUseCase {}

