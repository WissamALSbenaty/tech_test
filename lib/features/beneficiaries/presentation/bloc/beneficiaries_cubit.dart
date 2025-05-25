import 'package:fintech/core/data/errors/core_errors.dart';
import 'package:fintech/core/data/errors/custom_error.dart';
import 'package:fintech/core/presentation/snake_bars/snake_bar_shower.dart';
import 'package:fintech/core/utils/enums.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fintech/features/beneficiaries/domain/usecases/get_beneficiaries_usecase.dart';
import 'package:fintech/features/beneficiaries/domain/usecases/add_beneficiary_usecase.dart';
import 'package:fintech/features/beneficiaries/domain/usecases/remove_beneficiary_usecase.dart';
import 'package:fintech/features/beneficiaries/presentation/bloc/beneficiaries_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class BeneficiariesCubit extends Cubit<BeneficiariesState> {
  final GetBeneficiariesUseCase getBeneficiariesUseCase;
  final AddBeneficiaryUseCase addBeneficiaryUseCase;
  final RemoveBeneficiaryUseCase removeBeneficiaryUseCase;
  final SnakeBarShower snakeBarShower;

  BeneficiariesCubit(
      this.getBeneficiariesUseCase, this.addBeneficiaryUseCase, this.removeBeneficiaryUseCase, this.snakeBarShower)
      : super(const BeneficiariesState.loading()) {
    loadBeneficiaries();
  }

  Future<void> loadBeneficiaries() async {
    try {
      emit(BeneficiariesState.loading());
      final beneficiaries = await getBeneficiariesUseCase();
      emit(BeneficiariesState.loaded(beneficiaries));
    } on CustomError catch (e) {
      emit( BeneficiariesState.error(e));
    }
    on Exception {
      emit( BeneficiariesState.error(SomethingWentWrongError()));
    }
  }

  Future<void> addBeneficiary({
    required final String name,
  }) async {
    try {
      await addBeneficiaryUseCase(
        name: name,
      );
      await loadBeneficiaries();
    } on CustomError catch (e) {
      snakeBarShower.showSnakeBar( e.errorMessage,ToastType.error);
    }
    on Exception {
      snakeBarShower.showSnakeBar( SomethingWentWrongError().errorMessage,ToastType.error);
    }
  }

  Future<void> removeBeneficiary(final int id) async {
    try {
      await removeBeneficiaryUseCase(id);
      await loadBeneficiaries();
    } on CustomError catch (e) {
      snakeBarShower.showSnakeBar( e.errorMessage,ToastType.error);
    }
    on Exception {
      snakeBarShower.showSnakeBar( SomethingWentWrongError().errorMessage,ToastType.error);
    }
  }
}
