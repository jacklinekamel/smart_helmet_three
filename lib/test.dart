import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:smart_hemlet/widgets/mainTextfield.dart';

import 'App_Strings.dart';
import 'App_colors.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;

  void increment() {
    counter.value++;
  }


}


class CounterScreen extends StatelessWidget {
  final CounterController _counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Column(
        children: [
          Obx(() {
            final counterValue = _counterController.counter.value;

            if (counterValue == 0) {
              return  Column(
                children: [
                  Text("Step ",style: TextStyle(color: AppColors.white3),),
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
              );
            }
            else if (counterValue == 1) {
              return Column(
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
              );
            } else {
              return Container(
                color: Colors.green,
                width: double.infinity,
                height: 200,
                child: Center(
                  child: Text(
                    'Container 3',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              );
            }
          }),
          SizedBox(height: 20),
          FloatingActionButton(
            onPressed: _counterController.increment,
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
