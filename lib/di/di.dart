

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';
import 'package:uzum/data/source/remote/service/api_service.dart';

import '../utils/token_refresh_interseptor.dart';

final di = GetIt.instance;

final dio = Dio(BaseOptions(
  baseUrl: "http://195.158.16.140/mobile-bank",
));

void setUp() {
  dio.interceptors.add(
    TalkerDioLogger(
      settings: const TalkerDioLoggerSettings(
        printRequestData: true,
      ),
    ),
  );

  dio.interceptors.add(
    TokenRefreshInterceptor(
      dio,
      accessToken:'your_initial_access_token',
    ),
  );

  di.registerSingleton<ApiService>(ApiService(dio));
}

