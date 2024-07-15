import 'package:dio/dio.dart';
import 'package:uzum/data/source/remote/request/auth/sign_up/sign_up_request.dart';
import 'package:uzum/data/source/remote/service/api_service.dart';

import '../../di/di.dart';
import '../../domain/repositories/registration_repository.dart';
import '../source/remote/error/error_message.dart';
import '../source/remote/request/auth/sign_in/sign_in_request.dart';

class RegistrationRepositoryImpl extends RegistrationRepository {
  RegistrationRepositoryImpl();

  final _apiService = di<ApiService>();

  @override
  Future<void> login({required String password, required String phone}) async {
    try {
      final value = await _apiService.signIn(SignInRequest(phone: phone, password: password));

      if (value.token != null && value.token!.isNotEmpty) {
        print('Login successful, token: ${value.token}');
      } else {
        print('Login failed: Token is null or empty');
      }
    } on DioException catch (e) {
      if (e.response != null) {
        final errorMessage = ErrorMessage.fromJson(e.response!.data);
        print('Login failed: ${errorMessage.message}');
      } else {
        print('Login failed: ${e.message}');
      }
    } catch (e) {
      print('Login failed: $e');
    }
  }

  @override
  Future<void> register({
    required String password,
    required String phone,
    required String firstName,
  }) async {
    String lastName = 'Rahimberganov';
    String bornDate = '969822000000';
    String gender = '0';

    print('register repository impl');

    try {
      final value = await _apiService.signUp(SignUpRequest(
        phone: phone,
        password: password,
        firstName: firstName,
        lastName: lastName,
        bornDate: bornDate,
        gender: gender,
      ));

      if (value.token != null && value.token!.isNotEmpty) {
        print('Registration successful, token: ${value.token}');
      } else {
        print('Registration failed: Token is null or empty');
      }
    } on DioException catch (e) {
      if (e.response != null) {
        final errorMessage = ErrorMessage.fromJson(e.response!.data);
        print('Registration failed: ${errorMessage.message}');
      } else {
        print('Registration failed: ${e.message}');
      }
    } catch (e) {
      print('Registration failed: $e');
    }
  }
}
