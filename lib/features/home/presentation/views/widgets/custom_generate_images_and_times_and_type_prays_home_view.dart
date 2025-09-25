/*
import 'package:adhan/adhan.dart';
import 'package:flutter/material.dart';
import 'package:misk/core/components/loading_state_component.dart';
import 'package:misk/core/utils/helpers/image_and_time_and_type_pray_home_view_list_helper.dart';
import 'package:misk/core/utils/shared/app_shared_preferences.dart';
import 'package:misk/features/home/presentation/views/widgets/custom_image_and_time_and_type_pray_home_view.dart';

class CustomGenerateImagesAndTimesAndTypePraysHomeView extends StatefulWidget {
  const CustomGenerateImagesAndTimesAndTypePraysHomeView({super.key});

  @override
  State<CustomGenerateImagesAndTimesAndTypePraysHomeView> createState() =>
      _CustomGenerateImagesAndTimesAndTypePraysHomeViewState();
}

class _CustomGenerateImagesAndTimesAndTypePraysHomeViewState
    extends State<CustomGenerateImagesAndTimesAndTypePraysHomeView> {
  List<Map<String, dynamic>> prayersList = [];
  double? latitude, longitude;
  @override
  void initState() {
    super.initState();
    loadPrayerTimes();
  }

  Future<void> loadPrayerTimes() async {
    latitude = await AppSharedPreferences.getOnLatitudeLocation();
    longitude = await AppSharedPreferences.getOnLongitudeLocation();
    PrayerTimes prayerTimes = getPrayerTimes(
      latitude: latitude,
      longitude: longitude,
    ); //i get on times for pray in country the user
    prayersList = imageAndTimeAndTypePrayHomeViewListHelper(
      prayerTimes: prayerTimes,
    ); //i give all elements to prayersList
    setState(() {});
  }

  PrayerTimes getPrayerTimes({
    required double? latitude,
    required double? longitude,
  }) {
    final coordinates = Coordinates(latitude!, longitude!);
    final calculationParameters = CalculationMethod.karachi.getParameters();
    final dateComponents = DateComponents.from(DateTime.now());
    return PrayerTimes(coordinates, dateComponents, calculationParameters);
    //this lines enable you to get on times for pray and update them if the times are change
  }

  @override
  Widget build(BuildContext context) {
    if (prayersList.isEmpty) {
      return const LoadingStateComponent();
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(prayersList.length, (index) {
        final item = prayersList[index];
        return CustomImageAndTimeAndTypePrayHomeView(
          typePray: item['typePray'],
          time: item['time'],
          image: item['image'],
        );
      }),
    );
  }
}
*/
