

import 'package:fintech/core/data/errors/custom_error.dart';
import 'package:fintech/core/utils/constants.dart';

class MaximumBeneficiariesError extends CustomError {
  MaximumBeneficiariesError():super(errorMessage: 'Maximum beneficiaries reached');
}


class NotEnoughBalanceError extends CustomError {
  NotEnoughBalanceError():super(errorMessage: 'Not enough balance');
}
class MaximumTopUpsInMonthError extends CustomError {
  MaximumTopUpsInMonthError({required final bool isVerified}):super(
      errorMessage: 'The maximum amount per is ${isVerified? verifiedUserMaximumTopUpAmount:unverifiedUserMaximumTopUpAmount}'
          ' for ${!isVerified?'un':''}verified users');
}

