import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:smart_hemlet/App_colors.dart';
import 'package:smart_hemlet/App_images.dart';

import '../App_Strings.dart';
import '../widgets/mainButton.dart';
import '../widgets/setting_container.dart';
import 'emergency_screen.dart';
import 'login_screen.dart';
import 'profile_screen.dart';

class MyController extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState!.openEndDrawer();
  }
}

class MenuScreen extends StatelessWidget {
  final MyController controller = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: controller.scaffoldKey,
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.menu),
                  color: AppColors.blueblack,
                  onPressed: () {
                    controller.openDrawer();
                  },
                )
              ],
            ),
            Image.asset(
              AppImages.helmet,
              height: 28.h,
            ),
            SizedBox(
              height: 3.h,
            ),
            SettingsContainer(
              value: false,
              title: AppStrings.bluetooth,
              icon: Icons.bluetooth,
            ),
            SizedBox(
              height: 1.8.h,
            ),
            SettingsContainer(
              value: false,
              title: AppStrings.location,
              icon: Icons.location_on,
            ),
            SizedBox(
              height: 1.8.h,
            ),
            SettingsContainer(
              value: false,
              title: AppStrings.wearing,
              icon: Icons.location_on,
              valuecolor: true,
            ),
            SizedBox(
              height: 1.8.h,
            ),
            SettingsContainer(
              value: false,
              title: AppStrings.buckle,
              icon: Icons.location_on,
              valuecolor: true,
            ),
            SizedBox(
              height: 1.8.h,
            ),
            SettingsContainer(
              value: false,
              title: AppStrings.bike,
              icon: Icons.location_on,
              valuecolor: true,
            ),
            SizedBox(
              height: 1.8.h,
            ),
            SettingsContainer(
              value: false,
              title: AppStrings.over,
              icon: Icons.location_on,
              valuecolor: true,
            ),
            SizedBox(
              height: 1.8.h,
            ),
            SettingsContainer(
              value: false,
              title: AppStrings.accident,
              icon: Icons.location_on,
            ),
            SizedBox(
              height: 6.h,
            ),
            Image.asset(
              AppImages.logofaded,
              height: 5.h,
            ),
          ],
        ),
        drawer: Drawer(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              Image.asset(
                AppImages.logo,
                height: 15.h,
              ),
              SizedBox(
                height: 5.h,
              ),
              MainButton(
                title: AppStrings.profile,
                onPressed: () {
                  Get.to(ProfileScreen());
                },
                icon: Icons.person,
                backgroundColor: AppColors.blueblack,
                width: 65.w,
                height: 7.h,
                border: true,
              ),
              SizedBox(
                height: 2.h,
              ),
              MainButton(
                title: AppStrings.emergency,
                onPressed: () {
                  Get.to(EmergencyScreen());
                },
                icon: Icons.star,
                backgroundColor: AppColors.blueblack,
                width: 65.w,
                height: 7.h,
                border: true,
              ),
              SizedBox(
                height: 50.h,
              ),
              MainButton(
                title: AppStrings.logout,
                onPressed: () {
                  Get.offAll(LoginScreen());
                },
                icon: Icons.logout,
                backgroundColor: AppColors.orange,
                width: 65.w,
                height: 7.h,
                border: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
