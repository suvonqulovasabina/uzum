import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uzum/ui/menu/page/menu.dart';
import 'package:uzum/ui/otp/otp.dart';
import 'package:uzum/ui/pin/pin_code_widget.dart';
import 'package:uzum/ui/register/register.dart';
import 'package:uzum/ui/splash/splash.dart';
import 'package:uzum/ui/support/bloc/support_bloc.dart';
import 'package:uzum/ui/support/support.dart';

class RouteHelper {
  RouteHelper._();

  static const String _initR = '/$splash';

  static const String pin = 'pin';
  static const String register = 'register';
  static const String splash = 'splash';
  static const String otp = 'otp';
  static const String menuItem = 'menuItem';
  static const String support = 'support';

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
          phoneNumber: state.uri.queryParameters['id1'] ?? '+998901234567',
        ),
      ),
      GoRoute(
        path: "/$menuItem",
        name: menuItem,
        builder: (context, state) => const MenuPage(),
      ),
      GoRoute(
        path: "/$support",
        name: support,
        builder: (context, state) => BlocProvider(
          create: (context) => SupportBloc(),
          child: const SupportPage(),
        ),
      ),
    ],
  );
}
