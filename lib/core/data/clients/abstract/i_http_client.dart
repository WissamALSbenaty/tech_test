import 'package:fintech/core/utils/enums.dart';
import 'package:fintech/core/data/entities/response_entity.dart';

abstract class IHttpClient {
  IHttpClient();
  String userToken = '';

  Future<ResponseEntity> sendRequest(
      {required final RequestMethod requestType,
      required final String url,
      required final Map<String, dynamic> parameters,
      final bool isFormData = false});

  void setToken(final String token) => userToken = token;
}
