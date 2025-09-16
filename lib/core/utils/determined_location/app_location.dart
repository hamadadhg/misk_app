import 'package:geolocator/geolocator.dart';

abstract class AppLocation {
  //this calss to give the user request permission and get on location ther user
  static Future<Position?> getUserLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    //check if city service to user is enabled or bloc
    if (!serviceEnabled) {
      //if city service is bloc
      return Future.error('تم تعطيل خدمة الموقع');
    }
    LocationPermission locationPermission = await Geolocator.checkPermission();
    //get on permission from user to determined his location
    if (locationPermission == LocationPermission.denied) {
      //if the user doesn't accept the permission
      locationPermission = await Geolocator.requestPermission();
      //send another permission to user
      if (locationPermission == LocationPermission.denied) {
        //if the user also doesn't accept ther permission
        Future.error('طلب الإذن مطلوب وقد رفضته');
      }
    }
    if (locationPermission == LocationPermission.deniedForever) {
      Future.error('تم رفض أذونات الموقع بشكل دائم، يرجى تمكينها من الإعدادات');
      Geolocator.openAppSettings();
    }
    return await Geolocator.getCurrentPosition(
      //this method .getCurrentPosition to get on location the user for one time
      locationSettings: const LocationSettings(accuracy: LocationAccuracy.high),
      //now i get on current location to user
    );
  }
}
