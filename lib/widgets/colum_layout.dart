import 'package:flight_booking/utils/app_layout.dart';
import 'package:flight_booking/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class appColumeLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final bool? isColor;
  final String firstText;
  final String secondText;
  const appColumeLayout(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.alignment,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      //   style: iscolor == null ? styles.headlinestyle3 .copyWith(color: Colors.white): styles.headlinestyle3,),
      children: [
        Text(
          firstText,
          style: isColor == null
              ? styles.headlinestyle3.copyWith(color: Colors.white)
              : styles.headlinestyle3,
        ),
        Gap(appLayout.getHight(5)),
        Text(
          secondText,
          style: isColor == null
              ? styles.headlinestyle4.copyWith(color: Colors.white)
              : styles.headlinestyle4,
        ),
      ],
    );
  }
}
