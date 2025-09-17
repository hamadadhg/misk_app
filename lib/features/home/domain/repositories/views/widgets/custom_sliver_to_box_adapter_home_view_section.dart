import 'package:flutter/material.dart';
import 'package:misk/core/utils/shared/app_shared_preferences.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/features/home/domain/repositories/views/widgets/custom_quran_card_home_view.dart';
import 'package:misk/features/home/domain/repositories/views/widgets/custom_time_card_home_view.dart';

class CustomSliverToBoxAdapterHomeViewSection extends StatefulWidget {
  const CustomSliverToBoxAdapterHomeViewSection({super.key});

  @override
  State<CustomSliverToBoxAdapterHomeViewSection> createState() =>
      _CustomSliverToBoxAdapterHomeViewSectionState();
}

class _CustomSliverToBoxAdapterHomeViewSectionState
    extends State<CustomSliverToBoxAdapterHomeViewSection> {
  double? latitudeLocation, longiudeLocation;
  @override
  void initState() {
    super.initState();
    loadLocation();
  }

  Future<void> loadLocation() async {
    final lat = await AppSharedPreferences.getOnLatitudeLocation();
    final lng = await AppSharedPreferences.getOnLongitudeLocation();
    setState(() {
      latitudeLocation = lat;
      longiudeLocation = lng;
    });
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    //orientation to know what the position for device(vertical or horizontal)
    final isPortrait = orientation == Orientation.portrait;
    //boolean to ask about position the device if it is vertical
    return SliverToBoxAdapter(
      child: Column(
        children: [
          if (latitudeLocation != null && longiudeLocation != null)
            const CustomTimeCardHomeView(),
          //if there is location(the user clicked on determined the location button) so build TimeCard
          isPortrait == false
              //if the position not vertical so take 30 else take 15
              ? SizedBoxHeight.height30(context: context)
              : SizedBoxHeight.height15(context: context),
          const CustomQuranCardHomeView(),
          isPortrait == false
              //if the position not vertical so take 20 else take 10
              ? SizedBoxHeight.height20(context: context)
              : SizedBoxHeight.height10(context: context),
        ],
      ),
    );
  }
}
