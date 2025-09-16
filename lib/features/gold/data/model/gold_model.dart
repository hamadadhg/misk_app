import 'package:misk/features/gold/domain/entity/gold_entity.dart';

class GoldModel extends GoldEntity {
  final num priceGoldCarat24;
  final num priceGoldCarat22;
  final num priceGoldCarat21;
  final num priceGoldCarat20;
  final num priceGoldCarat18;
  final num priceGoldCarat16;
  final num priceGoldCarat14;
  final num priceGoldCarat10;
  GoldModel({
    required this.priceGoldCarat24,
    required this.priceGoldCarat22,
    required this.priceGoldCarat21,
    required this.priceGoldCarat20,
    required this.priceGoldCarat18,
    required this.priceGoldCarat16,
    required this.priceGoldCarat14,
    required this.priceGoldCarat10,
  }) : super(
         priceGoldCarat24: priceGoldCarat24,
         priceGoldCarat22: priceGoldCarat22,
         priceGoldCarat21: priceGoldCarat21,
         priceGoldCarat20: priceGoldCarat20,
         priceGoldCarat18: priceGoldCarat18,
         priceGoldCarat16: priceGoldCarat16,
         priceGoldCarat14: priceGoldCarat14,
         priceGoldCarat10: priceGoldCarat10,
       );
  factory GoldModel.fromJson({required Map<String, dynamic> json}) {
    final priceCarats = json['data']['metal_prices']['XAU'];
    return GoldModel(
      priceGoldCarat24: priceCarats['price_24k'] ?? 0,
      priceGoldCarat22: priceCarats['price_22k'] ?? 0,
      priceGoldCarat21: priceCarats['price_21k'] ?? 0,
      priceGoldCarat20: priceCarats['price_20k'] ?? 0,
      priceGoldCarat18: priceCarats['price_18k'] ?? 0,
      priceGoldCarat16: priceCarats['price_16k'] ?? 0,
      priceGoldCarat14: priceCarats['price_14k'] ?? 0,
      priceGoldCarat10: priceCarats['price_10k'] ?? 0,
    );
  }
}
