import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'package:demo3/core/utils/constants.dart';
import 'network_request/network_request.dart';
import 'network_response/network_response.dart';

class _PreparedNetworkRequest<Model> {
  const _PreparedNetworkRequest(
      this.request,
      this.parser,
      this.dio,
      this.headers,
      this.onSendProgress,
      this.onReceiveProgress,
      );

  final NetworkRequest request;
  final Model Function(Map<String, dynamic>) parser;
  final Dio dio;
  final Map<String, dynamic> headers;
  final ProgressCallback? onSendProgress;
  final ProgressCallback? onReceiveProgress;
}

Future<NetworkResponse<Model>> executeRequest<Model>(
    _PreparedNetworkRequest request,
    ) async {
  try {
    dynamic body = request.request.data.whenOrNull(
      json: (data) => data,
      text: (data) => data,
    );

    final response = await request.dio.request(
      request.request.path,
      data: body,
      queryParameters: request.request.queryParams,
      options: Options(
        method: request.request.type.name,
        headers: request.headers,
      ),
      onSendProgress: request.onSendProgress,
      onReceiveProgress: request.onReceiveProgress,
    );

    return NetworkResponse.ok(request.parser({'jobsList': response.data}));
  } on DioError catch (error) {
    final errorText = error.toString();

    if (error.requestOptions.cancelToken?.isCancelled ?? false) {
      return NetworkResponse.noData(errorText);
    }
    switch (error.response?.statusCode) {
      case 400:
        return NetworkResponse.badRequest(errorText);
      case 401:
        return NetworkResponse.noAuth(errorText);
      case 403:
        return NetworkResponse.noAccess(errorText);
      case 404:
        return NetworkResponse.notFound(errorText);
      case 409:
        return NetworkResponse.conflict(errorText);
      default:
        return NetworkResponse.noData(errorText);
    }
  } catch (error) {
    return NetworkResponse.noData(error.toString());
  }
}

class NetworkService {
  NetworkService({
    baseUrl,
    dioClient,
    httpHeaders,
  })  : _baseUrl = baseUrl ?? Url.base,
        _dio = dioClient,
        _headers = httpHeaders ?? {};
  Dio? _dio;
  final String _baseUrl;
  final Map<String, String> _headers;

  Future<Dio> _getDefaultDioClient() async {
    _headers['Content-Type'] = 'application/json';
    _headers['Accept'] = 'application/json';

    var options = BaseOptions(
      baseUrl: _baseUrl,
      headers: _headers,
      connectTimeout: 10000,
      receiveTimeout: 5000,
    );
    Dio dio = Dio(options);
    return dio;
  }

  Future<NetworkResponse<Model>> execute<Model>(
      NetworkRequest request,
      Model Function(Map<String, dynamic>) parser, {
        ProgressCallback? onSendProgress,
        ProgressCallback? onReceiveProgress,
      }) async {
    _dio ??= await _getDefaultDioClient();
    final req = _PreparedNetworkRequest<Model>(
      request,
      parser,
      _dio!,
      {..._headers, ...(request.headers ?? {})},
      onSendProgress,
      onReceiveProgress,
    );
    final result = await compute(
      executeRequest<Model>,
      req,
    );
    return result;
  }
}
