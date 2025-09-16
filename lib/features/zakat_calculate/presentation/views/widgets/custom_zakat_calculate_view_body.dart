import 'package:flutter/material.dart';
import 'package:misk/features/zakat_calculate/presentation/views/widgets/custom_sliver_fill_remaining_zakat_view.dart';
import 'package:misk/features/zakat_calculate/presentation/views/widgets/custom_sliver_grid_zakat_view.dart';
import 'package:misk/features/zakat_calculate/presentation/views/widgets/custom_sliver_to_box_adapter_zakat_view.dart';

class CustomZakatCalculateViewBody extends StatelessWidget {
  const CustomZakatCalculateViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomSliverToBoxAdapterZakatView(),
        CustomSliverGridZakatView(),
        CustomSliverFillRemainingZakatView(),
      ],
    );
  }
}
