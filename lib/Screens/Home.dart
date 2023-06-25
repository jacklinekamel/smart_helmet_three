import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../App_images.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SafeArea(
       child: Stack(
         children: [
           Image.asset(AppImages.logo),
         ],
       ),
     ),
   );
  }
  
}