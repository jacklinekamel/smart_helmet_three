import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smart_hemlet/App_images.dart';

import '../App_Strings.dart';
import '../App_colors.dart';
import '../widgets/mainTextfield.dart';
import '../widgets/setting_container.dart';

class RegisterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
        backgroundColor:Colors.white,
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back))
          ],),
          Text("Step ",style: TextStyle(color: AppColors.white3),),
          SizedBox(height: 3.h),

          MainTextfield(
            hint: AppStrings.password,
          ),
          SizedBox(height: 5.h),
          MainTextfield(
            hint: AppStrings.rpassword,
          ),
          SizedBox(height: 4.h),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 25.w,
                decoration: const BoxDecoration(
                  color: AppColors.orange,
                  shape: BoxShape.circle

                ),
                child: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_forward,color: AppColors.white,),),
              ),
            ],
          )
        ],
      ),
    ),
  );
  }
}
