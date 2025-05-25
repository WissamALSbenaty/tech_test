import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:fintech/core/utils/enums.dart';
import 'package:fintech/third_parties_modules/abstract/i_http_requestor_module.dart';


@Singleton(as: IHttpRequestorModule)
class HttpRequestorModule extends IHttpRequestorModule {
  final Dio _dio = Dio();
  HttpRequestorModule();

  Map<String, String> _headers(final String userToken) => {
        'accept': 'application/json',
        'X-Platform': 'mobileApp',
        if (userToken.length > 7) 'Authorization': 'Bearer $userToken',
      };

  @override
  Future<Response> request(
    final String url, {
    required final String userToken,
    required final RequestMethod requestType,
    required final Map<String, dynamic> parameters,
    required final bool isFormData,
  }) async =>
      _dio.request(
        'asdsad/$url',
        options: Options(
            method: requestType.name.toUpperCase(),
            headers: _headers(userToken)),
        queryParameters: (requestType == RequestMethod.get ? parameters : {}),
        onReceiveProgress: (final _, final __) {},
        data: requestType != RequestMethod.get
            ? (isFormData ? FormData.fromMap(parameters) : parameters)
            : null,
      );
}
