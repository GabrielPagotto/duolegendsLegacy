import 'dart:convert' show json, utf8;
import 'package:http/http.dart' as http;
import 'package:duolegends/src/settings/connection_settings.dart';

class ApiResponse {
  late http.BaseRequest? request;
  late bool? ok = false;
  late int? status;
  late var body;
}

class Api extends ApiResponse {
  static Future<ApiResponse> get(String? path) async {
    final Uri? url = _getUrl(path);
    final http.Response response = await http.get(url!);

    return _getResponses(response);
  }

  static Future<ApiResponse> post(String? path, Map<String, dynamic>? body) async {
    final Uri? url = _getUrl(path);
    final http.Response response = await http.post(url!, body: body);

    return _getResponses(response);
  }

  static Future<ApiResponse> put(String? path, Map<String, dynamic>? body) async {
    final Uri? url = _getUrl(path);
    final http.Response response = await http.put(url!);

    return _getResponses(response);
  }

  static Uri _getUrl(String? path) => Uri.parse(ConnectionSettings.httpApiOrigin + path!);

  static ApiResponse _getResponses(http.Response? responseData) {
    final ApiResponse apiResponse = new ApiResponse();

    apiResponse.status = responseData!.statusCode;
    apiResponse.ok = responseData.statusCode == 200 || responseData.statusCode == 201 || responseData.statusCode == 202;
    apiResponse.request = responseData.request;
    apiResponse.body = json.decode(utf8.decode(responseData.bodyBytes));

    return apiResponse;
  }
}
