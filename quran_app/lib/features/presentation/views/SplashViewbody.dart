import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/features/presentation/widgets/firstanimation.dart';
import 'package:quran_app/features/presentation/widgets/secondanimation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  late AnimationController controller2;
  late Animation animation2;
  @override
  void initState() {
    super.initState();
    animation11();
    animation22();
  }

  void animation11() {
    controller = AnimationController(
        duration: const Duration(milliseconds: 700), vsync: this);
    animation =
        Tween<Offset>(begin: const Offset(0, -2), end: const Offset(0, 0))
            .animate(controller);
    controller2 = AnimationController(
        duration: const Duration(milliseconds: 700), vsync: this);
    animation2 = Tween<Offset>(
            begin: const Offset(0, 0), end: const Offset(99, 0))
        .animate(
            CurvedAnimation(parent: controller2, curve: Curves.easeInOutBack));
    controller.forward();
  }

  void animation22() {
    controller2 = AnimationController(
        duration: const Duration(milliseconds: 700), vsync: this);
    animation2 = Tween<Offset>(
            begin: const Offset(0, 0), end: const Offset(99, 0))
        .animate(
            CurvedAnimation(parent: controller2, curve: Curves.easeInOutBack));
    // controller.forward();
    Future.delayed(const Duration(milliseconds: 1300), () {
      controller2.forward();
    });
    Future.delayed(const Duration(milliseconds: 2000), () {
      GoRouter.of(context).go(
        '/check',
      );
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FirstAnimation(animation: animation),
          const SizedBox(
            height: 25,
          ),
          SecondAnimation(animation2: animation2)
        ],
      ),
    );
  }
}




