import 'package:e_commerce_app/screens/bottom_bar.dart';
import 'package:e_commerce_app/screens/login_screen.dart';
import 'package:e_commerce_app/screens/sign_up_screen.dart';
import 'package:e_commerce_app/screens/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final kSignUpScreen = '/signUpScreen';
  static final kLoginScreen = '/loginScrren';
  static final kBottombar = '/bottombarScreen';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: kSignUpScreen,
        builder: (context, state) => SignUpScreen(),
      ),
      GoRoute(
        path: kLoginScreen,
        builder: (context, state) => LoginScreen(),
      ),
       GoRoute(
        path: kBottombar,
        builder: (context, state) => BottomBar(),
      ),
    ],
  );
}
