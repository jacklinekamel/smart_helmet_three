import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';

import 'Screens/emergency_screen.dart';
import 'Screens/login_screen.dart';
import 'Screens/register_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: RegisterScreen(),

          //SettingsContainer(value: false, title: App_Strings.bike, icon: Icons.location_on,valuecolor: true,) ,
        );
      },
    );
  }
}
