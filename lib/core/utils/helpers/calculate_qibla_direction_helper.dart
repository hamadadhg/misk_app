/*
import 'dart:math';
import 'package:misk/core/utils/constants/doubles_variables_constant.dart';
import 'package:misk/core/utils/helpers/to_degree_helper.dart';
import 'package:misk/core/utils/helpers/to_radians_helper.dart';

double calculateQiblaDirectionHelper({
  required double latitudeUser,
  required double longitudeUser,
}) {
  //this method to calculate direction qibla based on current latitude and longitude to user
  //do you know how we know the qibla so based on location the kaaba(latitude and longitude are fixed), and get on current location to user(latitude and longitude) and from this two direction(kaaba and current location to user) so will do some calculate operations and we will know
  double latUser = toRadiansHelper(latitudeUser);
  double lonUser = toRadiansHelper(longitudeUser);
  double latKaaba = toRadiansHelper(kKaabaLatitude);
  double lonKaaba = toRadiansHelper(kKaabaLongitude);
  double deltaLon = lonKaaba - lonUser;
  double y = sin(deltaLon) * cos(latKaaba);
  double x =
      cos(latUser) * sin(latKaaba) -
      sin(latUser) * cos(latKaaba) * cos(deltaLon);
  double bearing = atan2(y, x);
  return (toDegreesHelper(bearing) + 360) % 360;
  //so this is some calculate operations(change to radian and to degree, use sin cos, tan) after this operations you will get on qibla direcation based on current location to user
}
*/
