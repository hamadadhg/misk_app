import 'package:flutter/material.dart';
import 'package:misk/features/display_remembrances/presentation/views/widgets/custom_display_remembrances_view_body.dart';

class DisplayRemembrancesView extends StatelessWidget {
  const DisplayRemembrancesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: CustomDisplayRemembrancesViewBody());
  }
}
