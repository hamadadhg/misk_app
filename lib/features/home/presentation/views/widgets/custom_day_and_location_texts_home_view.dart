/*
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:misk/core/utils/lists/arabic_hijri_months_list.dart';
import 'package:misk/core/utils/lists/arabic_week_days_list.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class CustomDayAndLocationTextsHomeView extends StatefulWidget {
  const CustomDayAndLocationTextsHomeView({super.key});

  @override
  State<CustomDayAndLocationTextsHomeView> createState() =>
      _CustomDayAndLocationTextsHomeViewState();
}

class _CustomDayAndLocationTextsHomeViewState
    extends State<CustomDayAndLocationTextsHomeView> {
  Timer? midnightTimer;
  //this timer to do rebuild after all same specific period
  @override
  void initState() {
    super.initState();
    scheduleMidnightUpdate();
  }

  void scheduleMidnightUpdate() {
    //this method schedules an update when the date changes at midnight
    final now = DateTime.now();
    //all things called on it time/date so it's inside now and currently(new because i use .now()), so get the current date and time
    final tomorrow = DateTime(now.year, now.month, now.day + 1);
    //you put date time now inside tomorrow but you tell give me next day not this day
    //example: DateTime.now(will give you this data for example(2025-09-14 15:30) today, but you change it to(2025-09-15 00:00))
    final durationUntilMidnight = tomorrow.difference(now);
    //here(tomorrow.difference(now) you tell it give me the difference(minus) between tomorrow and now so it's mean tomorrow - now) so durationUntilMidnight(will get on hours value that it's difference between tomorrow and now)
    midnightTimer = Timer(durationUntilMidnight, () {
      //so you should inter to this method after all this duration(durationUntilMidnight) to update the date
      if (mounted) {
        setState(() {});
      } //update if there is state
      scheduleMidnightUpdate();
      //after midnight, we call this method again to prepare to the following day in the future, and this not wrong
    });
  }

  String getHijriDateWithDay() {
    DateTime now = DateTime.now();
    HijriCalendar today = HijriCalendar.fromDate(now);
    //you force it to do rebuild when the day change in DateTime.now(i mean today the date is sunday and tomorrow monday so tomorrow should see monday not sunday)
    String dayName = arabicDayList[now.weekday] ?? '';
    //the date time will give you index to days in the week(0 => 6) so you replace the index in arabic day text
    String monthName =
        arabicHijriMonthsList[today.hMonth] ?? today.longMonthName;
    //same speach in dayName but here you get on monthName in arabic hijri
    return '$dayName, ${today.hDay} $monthName ${today.hYear}هـ';
  }

  @override
  void dispose() {
    super.dispose();
    midnightTimer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        getHijriDateWithDay(),
        style: StyleToTexts.textStyleSemiBold16(context: context),
      ),
    );
  }
}
*/
