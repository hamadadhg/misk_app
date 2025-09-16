import 'package:misk/core/components/svg_image_component.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/gen/assets.gen.dart';

final List<Map<String, dynamic>> elementCardsRemembrancesViewList = [
  {'text': 'اذكار الصباح', 'image': Assets.images.sunImage.image()},
  {'text': 'اذكار المساء', 'image': Assets.images.bigMoonImage.image()},
  {'text': 'اذكار النوم', 'image': Assets.images.cloudImage.image()},
  {'text': 'اذكار السفر', 'image': Assets.images.planeImage.image()},
  {'text': 'اذكار المسجد', 'image': Assets.images.mosqueImage.image()},
  {
    'text': 'اذكار الاستيقاظ',
    'image': SvgImageComponent(
      image: Assets.images.sunriseImage.path,
      color: StyleToColors.oliveGreenColor,
    ),
  },
  {'text': 'اذكار الصلاه', 'image': Assets.images.personPrayImage.image()},
];
