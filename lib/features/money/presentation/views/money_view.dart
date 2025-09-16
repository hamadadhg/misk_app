import 'package:flutter/material.dart';
import 'package:misk/features/money/presentation/views/widgets/custom_money_view_body.dart';

class MoneyView extends StatelessWidget {
  const MoneyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: CustomMoneyViewBody());
  }
}
