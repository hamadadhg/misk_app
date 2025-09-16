import 'package:flutter/material.dart';
import 'package:misk/core/components/black_divider_component.dart';
import 'package:misk/core/utils/constants/durations_variables_constant.dart';
import 'package:misk/core/utils/helpers/navigate_and_check_from_turned_location_helper.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/features/splash/presentation/views/widgets/custom_two_images_splash_view.dart';

class CustomSplashViewBody extends StatefulWidget {
  const CustomSplashViewBody({super.key});

  @override
  State<CustomSplashViewBody> createState() => _CustomSplashViewBodyState();
}

class _CustomSplashViewBodyState extends State<CustomSplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadingAnimation;
  @override
  void initState() {
    fadeAnimationMethod();
    navigateAndCheckFromTurnLocationHelper(context: context);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBoxHeight.heightExpanded,
        FadeTransition(
          opacity: fadingAnimation,
          child: const CustomTwoImagesSplashView(),
        ),
        SizedBoxHeight.heightExpanded,
        const BlackAndWhiteDividerComponent(blackOrWhite: 'black'),
        SizedBoxHeight.height10(context: context),
      ],
    );
  }

  void fadeAnimationMethod() {
    animationController = AnimationController(
      vsync: this,
      duration: kThreeSeconds,
    );
    fadingAnimation = TweenSequence<double>(
      //we were used Tween<double>, but Tween contain on single begin and end just, but i need two begin and end(from(0 to 0.5) and from(0.5 to 1)), so should use TweenSequence because you can define multiple values Instead of a single start and end value
      [
        //all one from TweenSequenceItem contain on begin and end, and weight attribute(it's relative weight and The TweenSequence adds all weights, then divides on the total animation time proportionally)
        //like: Total weight(two weights) = 50 + 50 = 100, and First tween takes 50/100 = 50% of the total duration so 1 second, and Second tween takes same thing
        TweenSequenceItem(
          tween: Tween<double>(begin: 0.0, end: 0.5),
          weight: 50,
        ),
        TweenSequenceItem(
          tween: Tween<double>(begin: 0.5, end: 1.0),
          weight: 50,
        ),
      ],
    ).animate(CurvedAnimation(parent: animationController, curve: Curves.easeInOut));
    animationController.forward();
  }
}
