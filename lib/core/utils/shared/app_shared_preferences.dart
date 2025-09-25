/*
import 'package:misk/core/utils/constants/strings_variables_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AppSharedPreferences {
  static Future<bool> checkIfLocationTurnOnMethod() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final turnedOn = sharedPreferences.getBool(kLocationEnabled) ?? false;
    return turnedOn;
  }

  static Future<void> turnOnLocation() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool(kLocationEnabled, true);
  }

  static Future<void> saveLatitudeAndLongitudeToSomeLocation({
    required double latitude,
    required double longitude,
  }) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setDouble(kLatitudeLocation, latitude);
    await sharedPreferences.setDouble(kLongitudeLocation, longitude);
  }

  static Future<double?> getOnLatitudeLocation() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getDouble(kLatitudeLocation);
  }

  static Future<double?> getOnLongitudeLocation() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getDouble(kLongitudeLocation);
  }

  static Future<void> saveCaratGold({required String karatGold}) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(kCaratGold, karatGold);
  }

  static Future<String?> getCaratGold() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(kCaratGold);
  }

  static Future<void> saveSurahName({required String surahName}) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(kSurahName, surahName);
  }

  static Future<String?> getSurahName() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(kSurahName);
  }

  static Future<void> saveSurahNumber({required int surahNumber}) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setInt(kSurahNumber, surahNumber);
  }

  static Future<int?> getSurahNumber() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getInt(kSurahNumber);
  }

  static Future<void> saveSheikhName({required String sheikhName}) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(kSheikhName, sheikhName);
  }

  static Future<String?> getSheikhName() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(kSheikhName);
  }

  static Future<void> saveUrlAudio({required String urlAudio}) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(kUrlAudio, urlAudio);
  }

  static Future<String?> getUrlAudio() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(kUrlAudio);
  }
}
*/
