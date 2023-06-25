import 'package:flutter/material.dart';
import 'package:smart_hemlet/widgets/profileTextfield.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ProfileTextfield(
          data: 'Name',
          title: 'your name here',
        ),
      ),
    );
  }
}
