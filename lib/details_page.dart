import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
              height: 300,
              width: 300,
              child: Image.asset('assets/kartaca.png')),
        ),
      ),
    );
  }
}
