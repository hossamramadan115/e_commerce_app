import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/screens/bottom_bar.dart';
import 'package:e_commerce_app/screens/forget_password.dart';
import 'package:e_commerce_app/screens/login_screen.dart';
import 'package:e_commerce_app/screens/sign_up_screen.dart';
import 'package:e_commerce_app/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    super.initState();
    makeAnimation();
    navigateToNextView();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 125, 153, 160), // أفتح درجة
              kSplashColor, // اللون الأصلي
            ],
            stops: [0.0, 1], // توزيع النعومة
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: 280,
                child: FadeTransition(
                  opacity: fadeAnimation,
                  child: SlideTransition(
                    position: slideAnimation,
                    child: Image.asset(Assets.kLogo),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void makeAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeOut),
    );

    fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeIn),
    );

    animationController.forward();
  }

  void navigateToNextView() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => BottomBar(),
        ),
      );
    });
  }
}

// import 'package:e_commerce_app/constants.dart';
// import 'package:e_commerce_app/screens/sign_up_screen.dart';
// import 'package:e_commerce_app/utils/assets.dart';
// import 'package:flutter/material.dart';

// class SplashViewBody extends StatefulWidget {
//   const SplashViewBody({super.key});

//   @override
//   State<SplashViewBody> createState() => _SplashViewBodyState();
// }

// class _SplashViewBodyState extends State<SplashViewBody>
//     with SingleTickerProviderStateMixin {
//   late AnimationController animationController;
//   late Animation<Offset> animation;

//   @override
//   void initState() {
//     super.initState();

//     makeAnimation();

//     // navigateToHomeView(context);
//   }

//   @override
//   void dispose() {
//     animationController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff052531),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: SizedBox(
//               height: 280,
//               child: SlideTransition(
//                   position: animation, child: Image.asset(Assets.kLogo),),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void makeAnimation() {
//     animationController = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 1),
//     );
//     animation = Tween<Offset>(
//       begin: Offset(0, 10),
//       end: Offset(0, 0),
//     ).animate(
//       CurvedAnimation(parent: animationController, curve: Curves.easeOut),
//     );
//     animationController.forward();
//   }

//   // void navigateToHomeView(BuildContext context) {
//   //   Future.delayed(Duration(seconds: 2), () {
//   //     Navigator.pushReplacement(
//   //       context,
//   //       MaterialPageRoute(
//   //         builder: (context) => SignUpScreen(),
//   //       ),
//   //     );
//   //   });
//   // }

//   // void navigateToHomeView() {
//   //   Future.delayed(Duration(seconds: 2), () {
//   //     GoRouter.of(context).push(AppRouter.kHomeView);
//   //   });
//   // }
// }
