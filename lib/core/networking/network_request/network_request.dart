import 'network_request_body.dart';

enum NetworkRequestType {
  get,
  post,
  put,
  patch,
  delete,
}

class NetworkRequest {
  final NetworkRequestType type;
  final String path;
  final NetworkRequestBody data;
  final Map<String, dynamic>? queryParams;
  final Map<String, String>? headers;

  const NetworkRequest({
    required this.type,
    required this.path,
    required this.data,
    this.queryParams,
    this.headers,
  });
}