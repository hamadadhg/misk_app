import 'package:flutter/material.dart';
import 'package:misk/core/utils/helpers/pop_go_router_helper.dart';
import 'package:misk/gen/assets.gen.dart';

class LeftBackArrowWithPopComponent extends StatelessWidget {
  const LeftBackArrowWithPopComponent({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: () => popGoRouterHelper(context: context),
      child: SizedBox(
        height: size.height * 0.056,
        width: size.width * 0.095,
        child: Assets.images.leftBackArrowImage.image(),
      ),
    );
  }
}
