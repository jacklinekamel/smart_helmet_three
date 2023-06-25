import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smart_hemlet/App_colors.dart';

class MainButton extends StatelessWidget {
  final IconData? icon;
  final String title;
  final Color? backgroundColor;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final bool border;

  MainButton({
    this.icon,
    required this.title,
    this.backgroundColor,
    required this.onPressed,
    this.width,
    this.height,
    this.border = false,
  });

  @override
  Widget build(BuildContext context) {
    final buttonWidget = icon != null
        ? Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon),
              SizedBox(width: 8.w),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          )
        : Center(child: Text(title));

    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          alignment: AlignmentDirectional.centerStart,
          backgroundColor: backgroundColor,
          textStyle: const TextStyle(fontSize: 15, color: AppColors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(border ? 8 : 100),
          ),
        ),
        child: buttonWidget,
      ),
    );
  }
}
