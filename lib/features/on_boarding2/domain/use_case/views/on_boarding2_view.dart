import 'package:flutter/material.dart';
import 'package:misk/features/on_boarding2/domain/use_case/views/widgets/custom_on_boarding2_view_body.dart';

class OnBoarding2View extends StatelessWidget {
  const OnBoarding2View({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: CustomOnBoarding2ViewBody());
  }
}
