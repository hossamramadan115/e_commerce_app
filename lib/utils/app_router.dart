import 'package:e_commerce_app/screens/bottom_bar.dart';
import 'package:e_commerce_app/screens/login_screen.dart';
import 'package:e_commerce_app/screens/sign_up_screen.dart';
import 'package:e_commerce_app/screens/splash_view.dart';
import 'package:e_commerce_app/utils/go_router_refresh_stream.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kSignUpScreen = '/signUpScreen';
  static const kLoginScreen = '/loginScreen';
  static const kBottombar = '/bottombarScreen';
  static const kSplashScreen = '/';

  static final router = GoRouter(
    initialLocation: kSplashScreen,
    refreshListenable: GoRouterRefreshStream(
      FirebaseAuth.instance.authStateChanges(),
    ),
    redirect: (context, state) {
      final user = FirebaseAuth.instance.currentUser;
      final loggingIn = state.uri.toString() == kLoginScreen ||
          state.uri.toString() == kSignUpScreen;
      final onSplash = state.uri.toString() == kSplashScreen;

      if (user == null) {
        // أول مرة يفتح → Splash
        if (onSplash) return null;
        if (!loggingIn) return kSplashScreen;
        return null;
      }

      // لو مسجّل دخول بالفعل → يروح على BottomBar مباشرة
      if (onSplash || loggingIn) return kBottombar;

      return null;
    },
    routes: [
      GoRoute(
        path: kSplashScreen,
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

// import 'package:e_commerce_app/screens/bottom_bar.dart';
// import 'package:e_commerce_app/screens/login_screen.dart';
// import 'package:e_commerce_app/screens/sign_up_screen.dart';
// import 'package:e_commerce_app/screens/splash_view.dart';
// import 'package:go_router/go_router.dart';

// abstract class AppRouter {
//   static final kSignUpScreen = '/signUpScreen';
//   static final kLoginScreen = '/loginScrren';
//   static final kBottombar = '/bottombarScreen';
//   static final router = GoRouter(
//     routes: [
//       GoRoute(
//         path: '/',
//         builder: (context, state) => SplashView(),
//       ),
//       GoRoute(
//         path: kSignUpScreen,
//         builder: (context, state) => SignUpScreen(),
//       ),
//       GoRoute(
//         path: kLoginScreen,
//         builder: (context, state) => LoginScreen(),
//       ),
//        GoRoute(
//         path: kBottombar,
//         builder: (context, state) => BottomBar(),
//       ),
//     ],
//   );
// }
