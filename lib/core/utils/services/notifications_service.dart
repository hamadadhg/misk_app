import 'package:adhan/adhan.dart';
import 'package:flutter/services.dart';
import 'package:misk/core/utils/constants/strings_variables_constant.dart';
import 'package:misk/core/utils/helpers/prayer_times_and_content_the_notification_helper.dart';

abstract class NotificationsService {
  static const platform = MethodChannel(kBridgeBetweenFlutterAndAndroid);
  //this is important it's like bridge between flutter and android system, and without it flutter cann't know the android, and you can use any name(not just(bridge_between_flutter_and_android))
  static Future<void> schedulePrayerNotifications({
    required PrayerTimes prayerTime,
  }) async {
    final prayerTimeAndNotification =
        prayerTimesAndContentTheNotificationHelper(prayerTimes: prayerTime);
    for (var elements in prayerTimeAndNotification) {
      await platform.invokeMethod(kScheduleNotifications, {
        'id': elements['id'],
        'title': elements['title'],
        'body': elements['body'],
        'time': elements['time'],
      });
      //invokeMethod(it's send the notification to android, and you should give to it key name like in MethodChannel)
      //so: platform → the connection bridge, invokeMethod → actually send data to Android to schedule alarms.
    }
  }
}
