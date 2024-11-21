import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/asstes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../home/presentation/views/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    initAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsImages.logo),
        const SizedBox(
          height: 6,
        ),
        SlideTransition(
          position: _animation,
          child: const Text(textAlign: TextAlign.center, 'Read free books'),
        ),
      ],
    );
  }

  void initAnimation() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    // Define the slide animation from bottom to top
    _animation = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(_controller);

    // Start the animation
    _controller.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
      () =>  context.go(AppRouter.homeView)
    );
  }
}
