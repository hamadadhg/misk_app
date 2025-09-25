/*
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
//you should make this object global to enable all main.dart using it
Future<void> schedulePrayerNotificationHelper({
  required int id,
  required String title,
  required String body,
  required DateTime time,
}) async {
  const androidDetails = AndroidNotificationDetails(
    'prayer_channel_id',
    'Prayer Times',
    channelDescription: 'Prayer time reminders',
    importance: Importance.max,
    priority: Priority.high,
    playSound: true, //sound when you get on notification
  );
  //this is important for send notifications to android
  const notificationDetails = NotificationDetails(android: androidDetails);
  await flutterLocalNotificationsPlugin.zonedSchedule(
    id, // notification id
    title,
    body,
    tz.TZDateTime.from(time, tz.local),
    //schedule time in tz not in DateTime, the package need this time
    notificationDetails, //notification details
    androidScheduleMode:
        AndroidScheduleMode.exactAllowWhileIdle, //required in version +17
    matchDateTimeComponents:
        DateTimeComponents.time, //repeat daily at same time
  );
}
*/
