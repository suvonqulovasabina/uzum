import 'package:go_router/go_router.dart';
import 'package:uzum/ui/otp/otp.dart';
import 'package:uzum/ui/pin/pin_code_widget.dart';
import 'package:uzum/ui/register/register.dart';
import 'package:uzum/ui/splash/splash.dart';
import 'package:uzum/ui/transfer/transfer_screen.dart';

class RouteHelper {
  RouteHelper._();

  static const String _initR = '/$splash';

  static const String pin = 'pin';
  static const String register = 'register';
  static const String splash = 'splash';
  static const String otp = 'otp';
  static const String transfer = 'transfer';

  static final router = GoRouter(
    initialLocation: _initR,
    routes: [
      GoRoute(
        path: '/$splash',
        name: splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/$pin',
        name: pin,
        builder: (context, state) => const PinCodeWidget(),
      ),
      GoRoute(
        path: '/$register',
        name: register,
        builder: (context, state) => const Register(),
      ),
      GoRoute(
        path: "/$otp",
        name: otp,
        builder: (context, state) => OtpPage(
          phoneNumber: state.uri.queryParameters['id1'] ?? '+9989--------',
        ),
      ),
      GoRoute(
        path: "/$transfer",
        name: transfer,
        builder: (context, state) => const TransferScreen(),
      )
    ],
  );
}
