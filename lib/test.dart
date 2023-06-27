import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListTile(
          title: Text('John Doe'),
          subtitle: Text('Software Engineer'),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            // Add your desired action when the ListTile is tapped
          },
        ),
      ),
    );
  }
}
