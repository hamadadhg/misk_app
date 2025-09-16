import 'package:flutter/material.dart';
import 'package:misk/core/utils/helpers/push_go_router_helper.dart';
import 'package:misk/core/utils/lists/elements_more_islamic_benefit_home_view_list.dart';
import 'package:misk/core/utils/padding/padding_with_child/symmetric_padding_with_child.dart';
import 'package:misk/features/home/domain/repositories/views/widgets/custom_card_more_islamic_benefit_home_view.dart';

class CustomSliverGridHomeViewSection extends StatelessWidget {
  const CustomSliverGridHomeViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SymmetricPaddingWithChild.sliverHorizontal30(
      context: context,
      sliver: SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: size.width * 0.02,
          mainAxisSpacing: size.height * 0.014,
        ),
        itemCount: elementsMoreIslamicBenefitHomeViewList.length,
        itemBuilder: (context, index) {
          final item = elementsMoreIslamicBenefitHomeViewList[index];
          return GestureDetector(
            onTap: () =>
                pushGoRouterHelper(context: context, view: item['view']),
            child: CustomCardMoreIslamicBenefitHomeView(
              image: item['image'],
              text: item['text'],
            ),
          );
        },
      ),
    );
  }
}
