import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/App_colors.dart';

class ProfileTextfield extends StatelessWidget {
  String title;
  String data;
  ProfileTextfield({required this.data, required this.title});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8.h,
      width: 80.w,
      child: Center(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.w700, color: AppColors.blueblack),
              ),
              Text(
                data,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.blueblack.withOpacity(0.4)),
              ),
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
                color: AppColors.blueblack,
              )),
        ]),
      ),
    );
  }
}
