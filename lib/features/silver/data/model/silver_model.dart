import 'package:misk/features/silver/domain/entity/silver_entity.dart';

class SilverModel extends SilverEntity {
  final num priceSilverGram;
  SilverModel({required this.priceSilverGram})
    : super(priceSilverGram: priceSilverGram);
  factory SilverModel.fromJson({required Map<String, dynamic> json}) {
    final pricePerOunce = json['price'] ?? 0;
    //the api will give price to silver but in ounce
    final pricePerGram = pricePerOunce / 31.1035;
    //so to change from ounce to gram, you should divide ounce on 31.1035
    return SilverModel(priceSilverGram: pricePerGram);
  }
}
