import 'package:adhan/adhan.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:misk/core/utils/shared/app_shared_preferences.dart';
import 'package:timezone/timezone.dart' as tz;

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
//you should make this object global to enable all notifications_helper using it
Future<void> schedulePrayerNotifications() async {
  //you create this method to get on location the user and calculate prayerTimes for pray daily(today after today the update happen always day after day)
  final latitude = await AppSharedPreferences.getOnLatitudeLocation();
  final longitude = await AppSharedPreferences.getOnLongitudeLocation();
  if (latitude == null || longitude == null) return;
  final coordinates = Coordinates(latitude, longitude);
  final calculationParameters = CalculationMethod.karachi.getParameters();
  final prayerTimes = PrayerTimes.today(coordinates, calculationParameters);
  //here you get on all prayerTimes and suitable(same) to prayers that happen in location the user
  await scheduleNotification(prayName: 'الفجر', prayTime: prayerTimes.fajr);
  await scheduleNotification(prayName: 'الضهر', prayTime: prayerTimes.dhuhr);
  await scheduleNotification(prayName: 'العصر', prayTime: prayerTimes.asr);
  await scheduleNotification(prayName: 'المغرب', prayTime: prayerTimes.maghrib);
  await scheduleNotification(prayName: 'العشاء', prayTime: prayerTimes.isha);
  //this method(scheduleNotification) to determined shape the notification(like what is contain(like title: حان وقت صلاة الفجر, or..))
  //and i create this method five times because i have five times to pray, and don't worry this methods will run in the time it not togther all them
}

Future<void> scheduleNotification({
  required String prayName,
  required DateTime prayTime,
}) async {
  //this method to determined shape the notification
  final androidNotificationDetails = const AndroidNotificationDetails(
    //here you create notification and determined, what do you want in the contain notification
    'adhan_channel', //this like id
    'Prayer Times', //this name for channel
    channelDescription: 'Prayer time notifications',
    //you should describes purpose of this channel
    importance: Importance.max,
    //makes sure notification always appears with sound and heads-up
    priority: Priority.high,
    //tells Android this is an important notification
    sound: RawResourceAndroidNotificationSound('adhan'),
    //play this adhan.mp3 when happen time the pray
  );
  final notificationDetails = NotificationDetails(
    android: androidNotificationDetails,
  );
  //you store details notification and put thing you create it(androidInitializationSettings) to connect it with platform it(android not ios, and there is ios if you want)
  await flutterLocalNotificationsPlugin.zonedSchedule(
    //this is the last step to create shape the notification
    prayTime.hashCode, //id, to prevents duplicate notifications
    prayName, //pray name
    'حان وقت صلاة $prayName',
    //message that will appear when send notification to user with adhan
    tz.TZDateTime.from(prayTime, tz.local),
    //Converts normal DateTime to timezone-aware DateTime, and this ensures correct scheduling even if user’s timezone changes
    notificationDetails,
    //determined shape the location
    androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    //makes sure notification work exactly on time it, even if phone is sleeping/dozing
    matchDateTimeComponents: DateTimeComponents.time,
    //ensures notification is repeated daily at the same clock time
  );
}
