/*
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:misk/core/components/app_bar_image_and_text_and_divider_component.dart';
import 'package:misk/core/components/black_divider_component.dart';
import 'package:misk/core/utils/helpers/calculate_qibla_direction_helper.dart';
import 'package:misk/core/utils/shared/app_shared_preferences.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/features/qibla/presentation/views/widgets/custom_qibla_image_qibla_view.dart';
import 'package:misk/features/qibla/presentation/views/widgets/custom_text_normal18_qibla_view.dart';
import 'package:misk/features/qibla/presentation/views/widgets/custom_warning_qibla_direction_qibla_view.dart';

class CustomQiblaViewBody extends StatefulWidget {
  const CustomQiblaViewBody({super.key});

  @override
  State<CustomQiblaViewBody> createState() => _CustomQiblaViewBodyState();
}

class _CustomQiblaViewBodyState extends State<CustomQiblaViewBody> {
  double? latitude, longitude, qiblaDirection;
  //this parameters: latitude and longitude to current location for user, qiblaDirection this parameter will take vaule after some calculate
  StreamSubscription<Position>? streamSubscriptionPosition;
  //this parameter to listen on value if changed so will do update(like if the user move to another places in same time that he is opening QiblaView so the qibla should not stay fixed)
  @override
  void initState() {
    loadSavedLocation();
    listenToLocationChanges();
    super.initState();
  }

  Future<void> loadSavedLocation() async {
    //this method to get on latitude and longitude for user you saved them in SharedPreferences
    latitude = await AppSharedPreferences.getOnLatitudeLocation();
    longitude = await AppSharedPreferences.getOnLongitudeLocation();
    if (latitude != null && longitude != null) {
      qiblaDirection = calculateQiblaDirectionHelper(
        //this method will calculate qibla direction based on current latitude and longitude to user
        latitudeUser: latitude!,
        longitudeUser: longitude!,
      );
    }
    setState(() {});
    //do rebuild because i change value to parameters i interested in value them for ui
  }

  void listenToLocationChanges() {
    //this method to listen on all changes to location the user
    streamSubscriptionPosition =
        Geolocator.getPositionStream(
          //this method .getPositionStream to get on location the user after distanceFilter
          locationSettings: const LocationSettings(
            accuracy: LocationAccuracy.high,
            distanceFilter: 10,
            //while the user walk 10 meter so you should determined new location to user
            //you should leave it 10 or 20 meters to do rebuild after this meters not for example after all 1 meter do rebuild so this will consume resources from battery
          ),
        ).listen((Position position) async {
          //when happen any update in location so  you should go to this method .listen to know what you should do if listen to new update
          latitude = position.latitude;
          longitude = position.longitude;
          //give me new current latitude and longitude to user
          await AppSharedPreferences.saveLatitudeAndLongitudeToSomeLocation(
            latitude: latitude!,
            longitude: longitude!,
          );
          //save new latitude and longitude to user in SharedPreferences if you want
          qiblaDirection = calculateQiblaDirectionHelper(
            latitudeUser: latitude!,
            longitudeUser: longitude!,
          );
          //update calculate direcation the qibla
          if (mounted) {
            setState(() {});
          } //rebuild if there is state
        });
  }

  @override
  void dispose() {
    streamSubscriptionPosition?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              SizedBoxHeight.height25(context: context),
              const AppBarImageAndTextAndDividerComponent(text: 'القبلة'),
              SizedBoxHeight.height25(context: context),
              const CustomTextNormal18QiblaView(text: 'اتجاه القبلة'),
              SizedBoxHeight.height20(context: context),
              if (latitude == null || longitude == null)
                //if the user doesn't click on location button so will appear Text instead of bigQiblaImage
                const CustomWarningQiblaDirectionQiblaView()
              else
                //if there is location to user so appear bigQiblaImage and rotate the image on direction the qibla
                CustomQiblaImageQiblaView(qiblaDirection: qiblaDirection),
              SizedBoxHeight.height25(context: context),
              const CustomTextNormal18QiblaView(
                text: 'السهم يشير الى اتجاه القبلة',
              ),
              Expanded(child: SizedBoxHeight.height15(context: context)),
              const BlackAndWhiteDividerComponent(blackOrWhite: 'black'),
              SizedBoxHeight.height10(context: context),
            ],
          ),
        ),
      ],
    );
  }
}
*/
