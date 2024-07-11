import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uzum/ui/add_card/add_card/add_card.dart';
import 'package:uzum/ui/bottom_navigation/bloc/bottom_navigation_bloc.dart';
import 'package:uzum/ui/bottom_navigation/bottom_navigation.dart';
import 'package:uzum/ui/main/main_screen.dart';
import 'package:uzum/ui/otp/otp.dart';
import 'package:uzum/ui/pin/pin_code_widget.dart';
import 'package:uzum/ui/register/register.dart';
import 'package:uzum/ui/splash/splash.dart';
import 'package:uzum/ui/transfers/transfers.dart';

class RouteHelper {
  RouteHelper._();

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorMain = GlobalKey<NavigatorState>(debugLabel: 'shellMain');
  static final _shellNavigatorTransfers = GlobalKey<NavigatorState>(debugLabel: 'shellTransfers');
  static final _shellNavigatorPayment = GlobalKey<NavigatorState>(debugLabel: 'shellPayment');
  static final _shellNavigatorSupport = GlobalKey<NavigatorState>(debugLabel: 'shellSupport');
  static final _shellNavigatorMenu = GlobalKey<NavigatorState>(debugLabel: 'shellMenu');

  static const String _initR = '/$splash';

  static const String pin = 'pin';
  static const String bottomNavigation = 'bottomNavigation';
  static const String addCard = 'addCard';
  static const String register = 'register';
  static const String splash = 'splash';
  static const String otp = 'otp';

  static final router = GoRouter(
    initialLocation: _initR,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return BlocProvider(
            create: (context) => BottomNavigationBloc(),
            child: BottomNavigation(navigationShell: navigationShell),
          );
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: _shellNavigatorMain,
            routes: <RouteBase>[
              GoRoute(
                path: '/main',
                name: 'Main',
                builder: (BuildContext context, GoRouterState state) {
                  return const MainScreen();
                },
                routes: [
                  // bu yerda main screen dan add card va boshqa screenlarga o'tish uchun yoziladi
                  // https://github.com/Mirxomitov/bottom_navigation_with_go_router_demo/blob/master/lib/navigation/app_navigator.dart
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorTransfers,
            routes: <RouteBase>[
              GoRoute(
                path: '/transfers',
                name: 'Transfers',
                builder: (BuildContext context, GoRouterState state) {
                  return const Transfers();
                },
                routes: [
                  // child routes see exmaple:
                  // https://github.com/Mirxomitov/bottom_navigation_with_go_router_demo/blob/master/lib/navigation/app_navigator.dart
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorPayment,
            routes: <RouteBase>[
              GoRoute(
                path: '/payment',
                name: 'Payment',
                builder: (BuildContext context, GoRouterState state) {
                  return const MainScreen();
                },
                routes: [
                  // bu yerda main screen dan add card va boshqa screenlarga o'tish uchun yoziladi
                  // https://github.com/Mirxomitov/bottom_navigation_with_go_router_demo/blob/master/lib/navigation/app_navigator.dart
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorSupport,
            routes: <RouteBase>[
              GoRoute(
                path: '/support',
                name: 'Support',
                builder: (BuildContext context, GoRouterState state) {
                  return const MainScreen();
                },
                routes: [
                  // bu yerda main screen dan add card va boshqa screenlarga o'tish uchun yoziladi
                  // https://github.com/Mirxomitov/bottom_navigation_with_go_router_demo/blob/master/lib/navigation/app_navigator.dart
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorMenu,
            routes: <RouteBase>[
              GoRoute(
                path: '/menu',
                name: 'Menu',
                builder: (BuildContext context, GoRouterState state) {
                  return const MainScreen();
                },
                routes: [
                  // bu yerda main screen dan add card va boshqa screenlarga o'tish uchun yoziladi
                  // https://github.com/Mirxomitov/bottom_navigation_with_go_router_demo/blob/master/lib/navigation/app_navigator.dart
                ],
              ),
            ],
          ),
        ]
      ),

      GoRoute(
        path: '/$splash',
        name: splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/$addCard',
        name: addCard,
        builder: (context, state) => const AddCard(),
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
        builder: (context, state) =>
            OtpPage(
              phoneNumber: state.uri.queryParameters['id1'] ?? '+9989--------',
            ),
      ),
    ],
  );
}
