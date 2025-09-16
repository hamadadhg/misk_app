import 'package:flutter/material.dart';
import 'package:misk/core/utils/lists/elements_card_zakat_view_list.dart';
import 'package:misk/core/utils/padding/padding_with_child/symmetric_padding_with_child.dart';
import 'package:misk/features/zakat_calculate/presentation/views/widgets/custom_card_zakat_view.dart';

class CustomSliverGridZakatView extends StatelessWidget {
  const CustomSliverGridZakatView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SymmetricPaddingWithChild.sliverHorizontal30(
      context: context,
      sliver: SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: size.height * 0.021,
          crossAxisSpacing: size.width * 0.037,
        ),
        itemCount: elementsCardsZakatViewList.length,
        itemBuilder: (context, index) {
          final item = elementsCardsZakatViewList[index];
          return CustomCardZakatView(
            image: item['image'],
            text: item['text'],
            view: item['view'],
          );
        },
      ),
    );
  }
}
