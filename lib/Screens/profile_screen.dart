import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:smart_hemlet/App_Strings.dart';
import 'package:smart_hemlet/App_colors.dart';

import '../widgets/mainButton.dart';
import '../widgets/profileTextfield.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back,
                        size: 30, color: AppColors.blueblack)),
                SizedBox(width: 5.w),
                const Text(
                  AppStrings.profile,
                  style: TextStyle(
                      fontSize: 20,
                      color: AppColors.blueblack,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            ProfileTextfield(
              data: AppStrings.yourname,
              title: AppStrings.name,
            ),
            SizedBox(
              height: 1.h,
            ),
            ProfileTextfield(
              data: AppStrings.yourphone,
              title: AppStrings.phonenumber,
            ),
            SizedBox(
              height: 1.h,
            ),
            ProfileTextfield(
              data: AppStrings.password,
              title: AppStrings.stars,
            ),
            SizedBox(
              height: 50.h,
            ),
            MainButton(
              title: AppStrings.done,
              onPressed: () {
                Get.back();
              },
              width: 80.w,
              border: true,
              backgroundColor: AppColors.blueblack,
            ),
          ],
        ),
      ),
    );
  }
}
