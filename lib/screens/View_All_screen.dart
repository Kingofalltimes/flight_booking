import 'package:flight_booking/utils/app_layout.dart';
import 'package:flight_booking/utils/app_styles.dart';
import 'package:flutter/material.dart';

class viewAll extends StatelessWidget {
  const viewAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.bgcolor,
      body: Container(
        child: Text(
          "View All Up Coming Flights",
          style: styles.headlinestyle1,
        ),
      ),
    );
  }
}
