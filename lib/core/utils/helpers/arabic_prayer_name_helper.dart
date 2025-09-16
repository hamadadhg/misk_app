import 'package:adhan/adhan.dart';

String arabicPrayerNameHelper(Prayer? prayer) {
  switch (prayer) {
    case Prayer.fajr:
      return 'الفجر';
    case Prayer.sunrise:
      return 'الشروق';
    case Prayer.dhuhr:
      return 'الظهر';
    case Prayer.asr:
      return 'العصر';
    case Prayer.maghrib:
      return 'المغرب';
    case Prayer.isha:
      return 'العشاء';
    default:
      return '';
  }
}
