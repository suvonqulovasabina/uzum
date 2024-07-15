import 'package:dio/dio.dart';
import 'package:uzum/data/source/local/hive/hive_preference.dart';

class TokenRefreshInterceptor extends Interceptor {
  final Dio _dio;
  var _accessToken = HivePreference.getAccess();

  TokenRefreshInterceptor(this._dio, {required String accessToken}) {
    _accessToken = accessToken;
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (_accessToken != null) {
      options.headers['Authorization'] = 'Bearer $_accessToken';
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode == 401) {
      _refreshToken().then((newToken) {
        _accessToken = newToken[0];
        var refresh = newToken[1];
        HivePreference.setAccess(_accessToken ?? "");
        HivePreference.setRefresh(refresh);

        response.requestOptions.headers['Authorization'] =
            'Bearer $_accessToken';
        handler.resolve(response);
      }).catchError((error) {
        handler.reject(error);
      });
    } else {
      handler.next(response);
    }
  }


  Future<List<String>> _refreshToken() async {
    // Implement your token refresh logic here
    // Example:
    final response =
        await Dio().post('http://195.158.16.140/mobile-bank/refresh-token');
    List<String> list = [];
    list.add(response.data['access_token']);
    list.add(response.data['refresh_token']);
    return list;
  }
}