import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/App_colors.dart';
import '../utilities/App_Strings.dart';

class SettingsContainer extends StatelessWidget {
  final RxBool value;
  bool valuecolor;
  final String title;
  final IconData icon;

  SettingsContainer({
    bool value = false,
    bool valuecolor = false,
    required this.title,
    required this.icon,
  })  : value = value.obs,
        valuecolor = valuecolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.h,
      decoration: BoxDecoration(
        color: AppColors.white2,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          SizedBox(
            width: 1.w,
          ),
          Icon(
            icon,
            color: AppColors.blueblack,
          ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            title,
            style: const TextStyle(
              color: AppColors.blueblack,
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
          Spacer(),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                (title == AppStrings.bluetooth || title == AppStrings.location)
                    ? Obx(
                        () => Switch(
                          activeColor: AppColors.blueblack,
                          value: value.value,
                          onChanged: (newValue) {
                            value.toggle();
                          },
                        ),
                      )
                    : Row(
                        children: [
                          Container(
                            height: 10.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                color: valuecolor
                                    ? AppColors.green
                                    : AppColors.red,
                                width: 2.0, // Set border width here
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3),
                              child: Container(
                                // padding: EdgeInsets.all(10),
                                width: 3.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: valuecolor
                                      ? AppColors.green
                                      : AppColors.red,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          )
                        ],
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
