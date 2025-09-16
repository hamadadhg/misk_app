import 'package:flutter/material.dart';
import 'package:misk/core/utils/helpers/pop_go_router_helper.dart';
import 'package:misk/gen/assets.gen.dart';

class LeftBackArrowWithPopComponent extends StatelessWidget {
  const LeftBackArrowWithPopComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => popGoRouterHelper(context: context),
      child: Assets.images.leftBackArrowImage.image(),
    );
  }
}
