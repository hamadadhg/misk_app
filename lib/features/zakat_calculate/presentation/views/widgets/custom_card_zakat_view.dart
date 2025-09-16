import 'package:flutter/material.dart';
import 'package:misk/core/utils/decorations/box_decorations.dart';
import 'package:misk/core/utils/helpers/push_go_router_helper.dart';
import 'package:misk/features/zakat_calculate/presentation/views/widgets/custom_contain_card_zakat_view.dart';

class CustomCardZakatView extends StatelessWidget {
  const CustomCardZakatView({
    super.key,
    required this.image,
    required this.text,
    required this.view,
  });
  final Image image;
  final String text, view;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => pushGoRouterHelper(context: context, view: view),
      child: Container(
        decoration: BoxDecorations.boxDecorationToZakatCalculateCard(
          context: context,
        ),
        child: CustomContainCardZakatView(image: image, text: text),
      ),
    );
  }
}
