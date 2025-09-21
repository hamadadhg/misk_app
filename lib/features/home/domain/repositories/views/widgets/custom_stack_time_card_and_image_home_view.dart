import 'package:flutter/material.dart';
import 'package:misk/features/home/domain/repositories/views/widgets/custom_mosque_and_persons_image_home_view.dart';
import 'package:misk/features/home/domain/repositories/views/widgets/custom_time_card_home_view.dart';

class CustomStackTimeCardAndImageHomeView extends StatelessWidget {
  const CustomStackTimeCardAndImageHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CustomTimeCardHomeView(),
        CustomMosqueAndPersonsImageHomeView(),
      ],
    );
  }
}
