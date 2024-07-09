import 'package:go_router/go_router.dart';
import 'package:uzum/ui/pin/pin_code_widget.dart';
import 'package:uzum/ui/register/register.dart';
import 'package:uzum/ui/splash/splash.dart';

class RouteHelper {
  RouteHelper._();

  static const String _initR = '/splash';

  static const String pin = '/pin';
  static const String register = '/register';
  static const String splash = '/splash';

  static final router = GoRouter(
    initialLocation: _initR,
    routes: [
      GoRoute(
        path: splash,
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: pin,
        name: 'pin',
        builder: (context, state) => const PinCodeWidget(),
      ),
      GoRoute(
        path: register,
        name: 'register',
        builder: (context, state) => const Register(),
      ),
    ],
  );
}
