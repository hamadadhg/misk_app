import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';
import 'package:misk/gen/assets.gen.dart';

class CustomQiblaImageQiblaView extends StatelessWidget {
  const CustomQiblaImageQiblaView({super.key, this.qiblaDirection});
  final double? qiblaDirection;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<CompassEvent>(
      stream: FlutterCompass.events,
      //this FlutterCompass from flutter_compass package, this package contain on sensor to make the bigQiblaImage rotate with rotate the phone user not just for walk 10 meter from user, no also when the user rotate the phone so the image will rotate with rotate the phone
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Text(
            'جاري تحميل البوصلة',
            style: StyleToTexts.textStyleNormal12(context: context),
          );
        }
        final heading = snapshot.data!.heading ?? 0;
        final angle = (qiblaDirection! - heading) % 360;
        //this two operations to make the image rotate with rotate the phone
        return Transform.rotate(
          angle: angle * (pi / 180),
          child: Assets.images.bigQiblaImage.image(),
        );
      },
    );
  }
}
