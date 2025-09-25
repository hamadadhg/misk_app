/*
import 'dart:async';
import 'package:adhan/adhan.dart';
import 'package:flutter/material.dart';
import 'package:misk/core/utils/constants/durations_variables_constant.dart';
import 'package:misk/core/utils/helpers/arabic_prayer_name_helper.dart';
import 'package:misk/core/utils/helpers/number_with_two_places_for_hour_and_minute_helper.dart';
import 'package:misk/core/utils/services/notifications_service.dart';
import 'package:misk/core/utils/shared/app_shared_preferences.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class CustomTimeAndRestTimeToNextPrayHomeView extends StatefulWidget {
  const CustomTimeAndRestTimeToNextPrayHomeView({super.key});

  @override
  State<CustomTimeAndRestTimeToNextPrayHomeView> createState() =>
      _CustomTimeAndRestTimeToNextPrayHomeViewState();
}

class _CustomTimeAndRestTimeToNextPrayHomeViewState
    extends State<CustomTimeAndRestTimeToNextPrayHomeView> {
  String? remainingTimeToPray = '';
  Timer? timer; //to update after specific period
  String? timeBigQuarter;
  PrayerTimes? prayerTimes; //times for all prays

  @override
  void initState() {
    super.initState();
    loadPrayerTimes();
  }

  Future<void> loadPrayerTimes() async {
    final latitude = await AppSharedPreferences.getOnLatitudeLocation();
    final longitude = await AppSharedPreferences.getOnLongitudeLocation();
    if (latitude == null || longitude == null) return;
    final coordinates = Coordinates(latitude, longitude);
    final calculationParameters = CalculationMethod.karachi.getParameters();
    final dateComponents = DateComponents.from(DateTime.now());
    prayerTimes = PrayerTimes(
      coordinates,
      dateComponents,
      calculationParameters,
    );
    //this lines to give you times for all prays
    NotificationsService.schedulePrayerNotifications(prayerTime: prayerTimes!);
    //you call notification method sure after get on PrayerTimes
    updateUI();
    timer = Timer.periodic(kOneMinute, (_) => updateUI());
    //do update after all 1 minute
  }

  void updateUI() {
    DateTime now = DateTime.now();
    timeBigQuarter = numberWithTwoPlacesForHourAndMinuteHelper(time: now);
    //do update on big quarter after all 1 minute
    if (prayerTimes != null) {
      var nextPrayer = prayerTimes!.nextPrayer();
      //get on what is the next pray(fajr after it duhr..)
      var nextPrayerTime = prayerTimes!.timeForPrayer(nextPrayer);
      //give me this next pray when will happen(for example in 12:35)
      if (nextPrayerTime == null) {
        //if today has no next prayer (after Isha), move to tomorrow
        //the adhan package only gives times for one day, after Isha, nextPrayerTime = null, so this method will take value tomorrow day when the isha pray finished in yesterday
        final tomorrow = DateComponents.from(now.add(kOneDay));
        final tomorrowTimes = PrayerTimes(
          prayerTimes!.coordinates,
          tomorrow,
          prayerTimes!.calculationParameters,
        );
        nextPrayer = tomorrowTimes.nextPrayer();
        nextPrayerTime = tomorrowTimes.timeForPrayer(nextPrayer);
      }
      //you need to condition to get on times pray in next day(condition in the top), and the lines in the top this condition it's get on pray times to current day(today)
      //you need to condition to calculate the rest time between current and next pray(condition in the bottom)
      if (nextPrayerTime != null) {
        final difference = nextPrayerTime.difference(now);
        //give the difference(minus) between nextPrayerTime and now
        final hour = difference.inHours;
        final minute = difference.inMinutes % 60;
        //this difference.inMinutes will give you all minutes(for example 210 minute so it doesn't know all 60 minute change it to 1 hour), so i use %60 to solve this problem
        final nextPrayerName = arabicPrayerNameHelper(nextPrayer);
        //this method will change prayerName in package(fajr) to this name(فجر)
        remainingTimeToPray =
            'المتبقي على صلاة $nextPrayerName $hour ساعة و $minute دقيقة';
      } else {
        remainingTimeToPray = 'لا توجد صلاة قادمة الآن';
      }
    }
    setState(() {});
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          timeBigQuarter ?? '00:00',
          style: StyleToTexts.textStyleMedium46(context: context),
        ),
        Text(
          remainingTimeToPray ?? '',
          style: StyleToTexts.textStyleNormal14(
            context: context,
          ).copyWith(color: StyleToColors.whiteColor),
        ),
      ],
    );
  }
}
*/
