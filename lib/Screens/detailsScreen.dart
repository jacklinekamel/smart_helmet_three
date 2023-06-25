import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smart_hemlet/App_images.dart';

import '../App_Strings.dart';
import '../widgets/setting_container.dart';

class DetailsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
        backgroundColor:Colors.white,
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.settings,color: Colors.white,)
            ],
          ),
          Image.asset(AppImages.helmet,height: 40.h,),

SizedBox(height: 3.h,),



          SettingsContainer(value: true, title: AppStrings.bluetooth, icon: Icons.bluetooth,) ,
          SizedBox(height: 2.h,),
         SettingsContainer(value: false, title: AppStrings.location, icon: Icons.location_on,) ,
          SizedBox(height: 2.h,),
          SettingsContainer(value: false, title: AppStrings.wearing, icon: Icons.location_on,) ,
          SizedBox(height: 2.h,),
          SettingsContainer(value: false, title: AppStrings.buckle, icon: Icons.location_on,) ,
          SizedBox(height: 2.h,),
          SettingsContainer(value: false, title: AppStrings.bike, icon: Icons.location_on,) ,
          SizedBox(height: 2.h,),
           SettingsContainer(value: false, title: AppStrings.over, icon: Icons.location_on,) ,
          SizedBox(height: 2.h,),
          SettingsContainer(value: false, title: AppStrings.accident, icon: Icons.location_on,) ,


        ],
      ),
    ),
  );
  }

}