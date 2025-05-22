  import 'package:fintech/core/data/errors/custom_error.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:fintech/core/data/errors/core_errors.dart';
import 'package:fintech/core/data/errors/custom_error.dart';

part 'api_error.g.dart';

@JsonSerializable()
class ApiError {
  @JsonKey(name: 'code')
  final int statusCode;
  @JsonKey(name: 'fields')
  final Map<String, String>? validationErrors;
  @JsonKey(name: 'message')
  final String apiErrorMessage;

  ApiError({
    required this.statusCode,
    required this.validationErrors,
    required this.apiErrorMessage,
  });

  factory ApiError.fromJson(final Map<String, dynamic> data) =>
      _$ApiErrorFromJson(data);

  CustomError get customError {
    return statusCode == 400
        ? BadRequestError(
            errorMessage: apiErrorMessage, validationErrors: validationErrors)
        : statusCode == 401
            ? UnAuthorizedError(errorMessage: apiErrorMessage)
            : statusCode == 403
                ? ForbiddenError()
                : statusCode == 404
                    ? NotFoundError(errorMessage: apiErrorMessage)
                    : statusCode == 422
                        ? UnProcessableEntityError(
                            validationErrors: validationErrors,errorMessage: apiErrorMessage)
                        : statusCode == 477
                            ? UnSupportedLocationError()
                            : ServerError();
  }
}
