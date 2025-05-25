import 'dart:async';

import 'package:fintech/core/data/errors/core_errors.dart';
import 'package:fintech/core/data/errors/custom_error.dart';
import 'package:fintech/core/presentation/routes/app_router.dart';
import 'package:fintech/core/presentation/snake_bars/snake_bar_shower.dart';
import 'package:fintech/core/utils/enums.dart';
import 'package:fintech/features/auth/presentation/bloc/auth_bloc/auth_cubit.dart';
import 'package:fintech/features/beneficiaries/domain/usecases/add_beneficiary_usecase.dart';
import 'package:fintech/features/beneficiaries/domain/usecases/get_beneficiaries_usecase.dart';
import 'package:fintech/features/top_up/domain/usecases/execute_top_up_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:fintech/features/beneficiaries/domain/models/beneficiary_model.dart';
import 'package:fintech/features/top_up/presentation/bloc/craete_top_up_bloc/create_top_up_state.dart';

@injectable
class CreateTopUpCubit extends Cubit<CreateTopUpState> {
  final ExecuteTopUpUseCase executeCreateTopUpUseCase;
  final GetBeneficiariesUseCase getBeneficiariesUseCase;
  final AddBeneficiaryUseCase addBeneficiaryUseCase;
  final AuthBloc authBloc;
  final SnakeBarShower snackBarShower;
  final AppRouter appRouter;
  CreateTopUpCubit(
      this.executeCreateTopUpUseCase,
      this.getBeneficiariesUseCase,
      this.addBeneficiaryUseCase,
      this.authBloc,
      this.snackBarShower,
      this.appRouter
      ) : super(const CreateTopUpState.loading()){
    loadInitialData();
  }

  Future<void> loadInitialData() async {
    try {
      emit(const CreateTopUpState.loading());
      emit(CreateTopUpState.loaded(
        beneficiaries: await getBeneficiariesUseCase(),
      ));
    } on CustomError catch (e) {
      emit(CreateTopUpState.error(e));
    }
    on Exception {
      emit(CreateTopUpState.error(SomethingWentWrongError()));
    }
  }

    void selectTopUpOption(final int amount) {
      if(state is! Loaded) {
        return;
      }
      final Loaded currentState = state as Loaded;
      emit(currentState.copyWith(selectedTopUpAmount: amount));
    }

    void selectBeneficiary(final BeneficiaryModel beneficiary) {
      
      if(state is! Loaded) {
        return;
      }
      print('Wiso selected ben ${beneficiary.id}');
    final Loaded currentState = state as Loaded;
      emit(currentState.copyWith(selectedBeneficiaryId: beneficiary.id));

    }

  Future<void> addBeneficiary({
    required final String name,
  }) async {
    if(state is! Loaded)
      return ;
    Loaded currentState =state as Loaded;
    try {
      await addBeneficiaryUseCase(
        name: name,
      );
      emit(currentState.copyWith(
        beneficiaries: await getBeneficiariesUseCase()
      ));
    } on CustomError catch (e) {
      snackBarShower.showSnakeBar( e.errorMessage,ToastType.error);
    }
    on Exception {
      snackBarShower.showSnakeBar( SomethingWentWrongError().errorMessage,ToastType.error);
    }
  }


  Future<void> executeCreateTopUp() async {
      if (state is! Loaded) {
        return;
      }

      final Loaded currentState = state as Loaded;
      try {
      if(currentState.selectedBeneficiaryId == null) {
        throw IsNotSelectedError(fieldName: 'Beneficiary');
      }
      if(currentState.selectedTopUpAmount == null) {
        throw IsNotSelectedError(fieldName: 'Amount');
      }
        emit(currentState.copyWith(isSubmittingRequest: true));
        await executeCreateTopUpUseCase(
          beneficiaryId: currentState.selectedBeneficiaryId!,
          amount: currentState.selectedTopUpAmount!,
        );
       await authBloc.refreshProfile();
        snackBarShower.showSnakeBar( 'Top-up successful',ToastType.success);
        unawaited(appRouter.maybePop());
      } on CustomError catch (e) {
        snackBarShower.showSnakeBar( e.errorMessage,ToastType.error);
        emit(currentState.copyWith(isSubmittingRequest: false));
      }
      on Exception {
        snackBarShower.showSnakeBar( SomethingWentWrongError().errorMessage,ToastType.error);
        emit(currentState.copyWith(isSubmittingRequest: false));
      }
    }
  }

