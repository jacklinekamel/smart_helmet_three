import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';
import 'package:smart_hemlet/Screens/login_screen.dart';
import 'package:smart_hemlet/widgets/mainTextfield.dart';

import '../App_Strings.dart';
import '../App_colors.dart';
import '../App_images.dart';
import 'menu_screen.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;

  void increment() {
    counter.value++;
  }

  void decrement() {
    counter.value--;
  }

  void reset() {
    counter.value = 0;
  }
}

class RegisterScreen extends StatelessWidget {
  final CounterController _counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Get.to(LoginScreen());
                    },
                    icon: const Icon(Icons.arrow_back))
              ],
            ),
            Image.asset(
              AppImages.logo,
              width: 60.w,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              AppStrings.register,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              //this big container
              height: 40.h,
              padding: EdgeInsets.all(2.w),
              margin: EdgeInsets.all(4.h),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.white3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Obx(() {
                final counterValue = _counterController.counter.value;

                if (counterValue == 0) {
                  return Column(
                    children: [
                      Text(
                        "Step ${counterValue + 1} of 3",
                        style: const TextStyle(color: AppColors.white3),
                      ),
                      SizedBox(height: 3.h),
                      MainTextfield(
                        hint: AppStrings.fullname,
                      ),
                      SizedBox(height: 5.h),
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
                      SizedBox(height: 4.h),
                      Positioned(
                        right: 2,
                        bottom: 5,
                        child: Container(
                          // this small container
                          width: 25.w,
                          decoration: const BoxDecoration(
                              color: AppColors.orange, shape: BoxShape.circle),
                          child: IconButton(
                            onPressed: () {
                              _counterController.increment();
                            },
                            icon: const Icon(
                              Icons.arrow_forward,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                } else if (counterValue == 1) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                _counterController.decrement();
                              },
                              icon: const Icon(Icons.arrow_back)),
                          Text(
                            "Step ${counterValue + 1} of 3",
                            style: const TextStyle(color: AppColors.white3),
                          ),
                        ],
                      ),
                      SizedBox(height: 1.h),
                      MainTextfield(
                        hint: AppStrings.password,
                      ),
                      SizedBox(height: 3.h),
                      MainTextfield(
                        hint: AppStrings.rpassword,
                      ),
                      SizedBox(height: 4.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 25.w,
                            decoration: const BoxDecoration(
                                color: AppColors.orange,
                                shape: BoxShape.circle),
                            child: IconButton(
                              onPressed: () {
                                _counterController.increment();
                              },
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                } else {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                _counterController.decrement();
                              },
                              icon: const Icon(Icons.arrow_back)),
                          Text(
                            "Step ${counterValue + 1} of 3",
                            style: const TextStyle(color: AppColors.white3),
                          ),
                        ],
                      ),
                      const Text(
                        AppStrings.enterotp,
                      ),
                      SizedBox(height: 3.h),
                      const Pinput(
                        length: 6,
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 25.w,
                            decoration: const BoxDecoration(
                                color: AppColors.orange,
                                shape: BoxShape.circle),
                            child: IconButton(
                              onPressed: () {
                                Get.offAll(() => MenuScreen());
                                _counterController.reset();
                              },
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                }
              }),
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
