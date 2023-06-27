import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../utilities/App_images.dart';
import 'login_screen.dart';

class SplashController extends GetxController {
  RxDouble opacity = 0.0.obs;
  @override
  void onInit() {
    super.onInit();
    startAnimation();
  }

  void startAnimation() async {
    await Future.delayed(const Duration(seconds: 1));
    opacity.value = 1.0;
    await Future.delayed(const Duration(seconds: 2));
    Get.off(LoginScreen());
  }
}

class SplashScreen extends StatelessWidget {
  final SplashController _controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Obx(() {
            return AnimatedOpacity(
              opacity: _controller.opacity.value,
              duration: const Duration(seconds: 1),
              curve: Curves.easeIn,
              child: Image.asset(
                AppImages.logo,
                width: 50.w,
              ),
            );
          }),
        ),
      ),
    );
  }
}
