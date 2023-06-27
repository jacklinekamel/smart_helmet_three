import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/App_colors.dart';

class MainTextfield extends StatelessWidget {
  String? hint;
  TextInputType keyboard;
  bool country;
  //double? width;

  MainTextfield(
      {this.country = false, this.keyboard = TextInputType.text, this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(horizontal: 2),
      height: 6.h,
      width: country ? 35.w : 80.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.h),
        color: AppColors.white,
      ),
      child: country
          ? CountryCodePicker(
              flagWidth: 50,
              initialSelection: 'EG',
              //  showCountryOnly: true,
              onChanged: (CountryCode countryCode) {})
          : Stack(
              alignment: Alignment.center,
              children: [
                TextField(
                  keyboardType: keyboard!,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
                Center(
                  child: Text(
                    hint!,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: AppColors.white3,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
