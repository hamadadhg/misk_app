import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:misk/core/utils/get_it/service_locator.dart';
import 'package:misk/core/utils/routers/app_router.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
//you should make this object global to enable all main.dart using it
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('ar');
  //i replace english text in arabic text from package so should i initialze this method firstly
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  setUp();
  tz.initializeTimeZones();
  //loads the full timezone database into memory(from the timezone package), Without this, Flutter wouldn’t know how to convert your DateTime(like prayer times) to TZDateTime that respects local zones and daylight saving
  tz.setLocalLocation(tz.local);
  //sets the app that is in default timezone to the device’s current timezone
  //tz.local: it's mean you using currently local like in your device
  const AndroidInitializationSettings androidInitializationSettings =
      AndroidInitializationSettings('@mipmap/misk_logo_image');
  //you creates Android specific settings for your notifications, and @mipmap/ic_launcher it is mean the default app icon used in the notification bar(and if change this value in AndroidManifest.xml so you should replace it here)
  const InitializationSettings initializationSettings = InitializationSettings(
    android: androidInitializationSettings,
  );
  //you initialize and put thing you create it(androidInitializationSettings) to connect it with platform it(android not ios, and there is ios if you want)
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  //you activates the notification system inside your app with the settings in the top, must be called once in main() before scheduling notifications, and without it your app can’t display notifications
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin
      >()
      ?.requestNotificationsPermission();

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin
      >()
      ?.requestExactAlarmsPermission(); // for SCHEDULE_EXACT_ALARM

  runApp(const MiskApp());
}

class MiskApp extends StatelessWidget {
  const MiskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: StyleToColors.levelThreeWhiteColor,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
