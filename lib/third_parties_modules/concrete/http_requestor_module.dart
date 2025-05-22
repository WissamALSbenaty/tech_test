import 'package:dio/dio.dart';
import 'package:fintech/core/utils/flavors.dart';
import 'package:injectable/injectable.dart';

import 'package:fintech/core/utils/enums.dart';
import 'package:fintech/third_parties_modules/abstract/i_http_requestor_module.dart';

class HttpRequestorModule extends IHttpRequestorModule {
  final Dio _dio = Dio();
  final Flavor appFlavor;
  HttpRequestorModule(this.appFlavor);

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
        '${appFlavor.baseUrl}/$url',
        options: Options(
            method: requestType.name.toUpperCase(),
            headers: await _headers(userToken)),
        queryParameters: (requestType == RequestMethod.get ? parameters : {}),
        onReceiveProgress: (final _, final __) {},
        data: requestType != RequestMethod.get
            ? (isFormData ? FormData.fromMap(parameters) : parameters)
            : null,
      );
}

// because of backend habed
@Singleton(as: IHttpRequestorModule)
class CustomHttpRequestorModule extends HttpRequestorModule {
  CustomHttpRequestorModule(super.appFlavor);
  @override
  Future<Response> request(final String url,
          {required final String userToken,
          required final RequestMethod requestType,
          required final Map<String, dynamic> parameters,
          required final bool isFormData}) async =>
      _dio.request(
        '${appFlavor.baseUrl}/$url',
        options: Options(
            method: requestType.name.toUpperCase(),
            headers: await _headers(userToken)),
        queryParameters: (requestType == RequestMethod.get ? parameters : {})
          ..addAll({
            if (parameters.containsKey('latitude'))
              'latitude': parameters['latitude'],
            if (parameters.containsKey('latitude'))
              'longitude': parameters['longitude']
          }),
        onReceiveProgress: (final _, final __) {},
        data: requestType != RequestMethod.get
            ? (isFormData ? FormData.fromMap(parameters) : parameters)
            : null,
      );
}
