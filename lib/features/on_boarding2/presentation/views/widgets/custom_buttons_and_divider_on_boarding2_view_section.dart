/*
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:misk/core/components/black_divider_component.dart';
import 'package:misk/core/components/skip_button_and_text_inside_card_button_component.dart';
import 'package:misk/core/utils/constants/strings_variables_constant.dart';
import 'package:misk/core/utils/determined_location/app_location.dart';
import 'package:misk/core/utils/helpers/go_go_router_helper.dart';
import 'package:misk/core/utils/shared/app_shared_preferences.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';

class CustomButtonsAndDividerOnBoarding2ViewSection extends StatelessWidget {
  const CustomButtonsAndDividerOnBoarding2ViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SkipButtonAndTextInsideCardButtonComponent(
          text: 'تفعيل الموقع',
          onPressed: () async {
            try {
              Position? position = await AppLocation.getUserLocation();
              //trigger method that determined the user
              if (position != null) {
                await AppSharedPreferences.saveLatitudeAndLongitudeToSomeLocation(
                  latitude: position.latitude,
                  longitude: position.longitude,
                );
                //save location the user if there is location
              }
              await AppSharedPreferences.turnOnLocation();
              //this method to make bool parameter true and it's mean this view should appear for one time from use the user this app
              goGoRouterHelper(context: context, view: kHomeViewRouter);
            } on Exception catch (e) {
              debugPrint(e.toString());
            }
          },
        ),
        SizedBoxHeight.height40(context: context),
        const BlackAndWhiteDividerComponent(blackOrWhite: 'black'),
      ],
    );
  }
}
*/
