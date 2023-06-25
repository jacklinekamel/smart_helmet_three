import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smart_hemlet/App_images.dart';
import 'package:smart_hemlet/App_Strings.dart';
import '../widgets/mainButton.dart';
import '../widgets/mainTextfield.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              AppImages.background,
              fit: BoxFit.cover,
              width: 100.w,
              height: 100.h,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(AppImages.logofaded),

                  ],
                ),
                SizedBox(height: 10.h),
                Text(
                  AppStrings.settings,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp, color: Colors.white, fontFamily: '<bakery.otf>', ),
                ),
                SizedBox(height: 2.5.h),
                MainTextfield( hint: AppStrings.username,),
                SizedBox(height: 0.1.h),
                MainTextfield( hint: AppStrings.changepassword,),
                SizedBox(height: 0.1.h),
                MainTextfield( hint: AppStrings.helpername,),
                SizedBox(height: 0.1.h),
                MainTextfield( hint: AppStrings.helpernamber,),
                SizedBox(height: 2.5.h),
             //   MainButton(title: AppStrings.save, onPressed: () {  },),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
