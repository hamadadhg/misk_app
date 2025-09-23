import 'package:adhan/adhan.dart';

List<Map<String, dynamic>> prayerTimesAndContentTheNotificationHelper({
  required PrayerTimes prayerTimes,
}) {
  return [
    {
      'id': '1',
      'title': 'مسك',
      'body': 'حان وقت صلاة الفجر',
      'time': prayerTimes.fajr.millisecondsSinceEpoch,
    },
    {
      'id': '2',
      'title': 'مسك',
      'body': 'حان وقت صلاة الظهر',
      'time': prayerTimes.dhuhr.millisecondsSinceEpoch,
    },
    {
      'id': '3',
      'title': 'مسك',
      'body': 'حان وقت صلاة العصر',
      'time': prayerTimes.asr.millisecondsSinceEpoch,
    },
    {
      'id': '4',
      'title': 'مسك',
      'body': 'حان وقت صلاة المغرب',
      'time': prayerTimes.maghrib.millisecondsSinceEpoch,
    },
    {
      'id': '5',
      'title': 'مسك',
      'body': 'حان وقت صلاة العشاء',
      'time': prayerTimes.isha.millisecondsSinceEpoch,
    },
  ];
}
