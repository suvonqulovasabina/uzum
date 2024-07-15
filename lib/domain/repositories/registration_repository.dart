abstract class RegistrationRepository {
  Future<void> login({required String password, required String phone});

  Future<void> register({
    required String password,
    required String phone,
    required String firstName,
  });
}
