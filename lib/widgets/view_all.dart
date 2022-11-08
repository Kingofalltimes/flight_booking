import 'package:flight_booking/screens/View_All_screen.dart';
import 'package:flight_booking/utils/app_styles.dart';
import 'package:flutter/material.dart';

class appDoubleTextWidget extends StatelessWidget {
  final String bigtext;
  final String smalltext;
  const appDoubleTextWidget(
      {super.key, required this.bigtext, required this.smalltext});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigtext,
          style: styles.headlinestyle2,
        ),
        InkWell(
          onTap: () {
            print("you Are Tapped");
           
          },
          child: Text(
            smalltext,
            style: styles.headlinestyle3,
          ),
        ),
      ],
    );
  }
}
