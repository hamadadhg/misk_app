import 'package:flutter/material.dart';
import 'package:misk/features/quran/presentation/views/widgets/custom_generate_ayahs_text_quran_view.dart';
import 'package:misk/features/quran/presentation/views/widgets/custom_sliver_fill_remaining_quran_view.dart';
import 'package:misk/features/quran/presentation/views/widgets/custom_sliver_to_box_adapter_quran_view.dart';

class CustomQuranViewBody extends StatefulWidget {
  const CustomQuranViewBody({super.key});

  @override
  State<CustomQuranViewBody> createState() => _CustomQuranViewBodyState();
}

class _CustomQuranViewBodyState extends State<CustomQuranViewBody> {
  bool isAppearPlayCard = false;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomSliverToBoxAdapterQuranView(
          onPressed: () {
            setState(() {
              isAppearPlayCard = true;
            });
          },
        ),
        const CustomGenerateAyahsTextQuranView(),
        CustomSliverFillRemainingQuranView(isAppearPlayCard: isAppearPlayCard),
      ],
    );
  }
}
