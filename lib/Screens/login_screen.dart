import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/App_colors.dart';
import '../utilities/App_Strings.dart';
import '../utilities/App_images.dart';
import '../widgets/mainButton.dart';
import '../widgets/mainTextfield.dart';
import 'menu_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 5.h),
            Image.asset(
              AppImages.logo,
              width: 65.w,
              height: 20.h,
            ),
            SizedBox(height: 20.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  const Text(
                    AppStrings.loginto,
                    style: TextStyle(
                        color: Color(0xFFd7d7d7),
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                          child: MainTextfield(
                        country: true,
                      )),
                      Flexible(
                          child: MainTextfield(
                        hint: AppStrings.phonenumber,
                        keyboard: TextInputType.phone,
                      )),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  MainTextfield(
                    hint: AppStrings.password,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          AppStrings.forgotpassword,
                          style: TextStyle(
                              color: AppColors.blueblack, fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12.w),
              child: MainButton(
                  border: true,
                  backgroundColor: AppColors.blueblack,
                  title: AppStrings.login,
                  onPressed: () {
                    Get.to(MenuScreen());
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
