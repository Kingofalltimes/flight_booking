import 'package:flight_booking/utils/app_layout.dart';
import 'package:flight_booking/utils/app_styles.dart';
import 'package:flutter/material.dart';

class bookHotels extends StatelessWidget {
  const bookHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.bgcolor,
      body: Text(
        "Hotels",
        style: appLayout.getWidth(50),
      ),
    );
  }
}
