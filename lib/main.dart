/*
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:misk/core/utils/get_it/service_locator.dart';
import 'package:misk/core/utils/routers/app_router.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:timezone/data/latest.dart' as tz;

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
//you should make this object global to enable all main.dart using it
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('ar');
  //i replace english text in arabic text from package so should i initialze this method firstly
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  tz.initializeTimeZones(); //initialize timezone
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/logo_misk_image');
  //use same app icon for settings
  const InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
  );
  //use this settings for android not for ios
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  //do initialize for notification
  // ✅ Request runtime notification permission (Android 13+)
  final androidPlugin = flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin
      >();
  //here i tell the android system give me the android version for you if ther is
  if (androidPlugin != null) {
    final bool? notificationGranted = await androidPlugin
        .requestNotificationsPermission();
    //here i tell you take permission from android +13 to send notification to it, because you can't send notifications for device contain on android +13 if the user doesn't give you permission
    if (notificationGranted == false) {
      debugPrint('⚠️ Notification permission denied by user');
    }
    final bool? exactlyAlarmGranted = await androidPlugin
        .requestExactAlarmsPermission();
    //here i tell it you should take exact permission alarm schedule
    if (exactlyAlarmGranted == false) {
      debugPrint('⚠️ Exact alarms permission denied by user');
    }
  }
  setUp();
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
*/
