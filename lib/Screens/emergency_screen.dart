import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:smart_hemlet/App_colors.dart';

import '../App_Strings.dart';
import '../widgets/mainButton.dart';
import '../widgets/mainTextfield.dart';

class EmergencyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                      AppStrings.emergency,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.blueblack),
                    )
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  AppStrings.emergency3lines,
                  style: TextStyle(
                      color: AppColors.white3.withOpacity(0.7),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 2.h,
                ),
                MainTextfield(
                  hint: AppStrings.fullname,
                ),
                SizedBox(
                  height: 2.h,
                ),
                MainTextfield(
                  hint: AppStrings.phonenumber,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      AppStrings.pickfrom,
                      style: TextStyle(color: AppColors.blueblack),
                    )),
                SizedBox(
                  height: 48.h,
                ),
                Container(
                  color: Colors.red,
                ),
                MainButton(
                  title: AppStrings.save,
                  onPressed: () {
                    Get.back();
                  },
                  width: 90.w,
                  border: true,
                  backgroundColor: AppColors.blueblack,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
