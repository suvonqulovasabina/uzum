import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';
import 'package:uzum/data/repositories/registration_repository_impl.dart';
import 'package:uzum/data/source/remote/service/api_service.dart';
import 'package:uzum/domain/repositories/registration_repository.dart';

final di = GetIt.instance;

final dio = Dio(BaseOptions(baseUrl: "http://195.158.16.140/mobile-bank"));

void setUp() {
  dio.interceptors.add(
    TalkerDioLogger(
      settings: const TalkerDioLoggerSettings(
        // printRequestHeaders: true,
        printRequestData: true,
        // printResponseData: true,
        // printResponseHea
        // ders: true,
        // printResponseMessage: true,
      ),
    ),
  );

  di.registerSingleton<ApiService>(ApiService(dio));
  di.registerSingleton<RegistrationRepository>(RegistrationRepositoryImpl());
}
