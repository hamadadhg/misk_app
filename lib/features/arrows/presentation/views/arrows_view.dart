import 'package:flutter/material.dart';
import 'package:misk/features/arrows/presentation/views/widgets/custom_arrows_view_body.dart';

class ArrowsView extends StatelessWidget {
  const ArrowsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: CustomArrowsViewBody());
  }
}
