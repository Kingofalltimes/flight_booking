import 'package:flight_booking/utils/app_layout.dart';
import 'package:flight_booking/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class appicontext extends StatelessWidget {
  final IconData icon;
  final String text;
  const appicontext({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: appLayout.getHight(12), horizontal: appLayout.getWidth(12)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(appLayout.getWidth(10)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xffafc2df),
          ),
          Gap(appLayout.getWidth(10)),
          Text(
            text,
            style: styles.textStyle,
          )
        ],
      ),
    );
  }
}
