import 'package:flight_booking/utils/app_layout.dart';
import 'package:flight_booking/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Hotell_screen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotell_screen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    print("hotel Prise Is ${hotel['price']}");
    final Size = appLayout.getsize(context);
    return Container(
      width: Size.width * 0.6,
      height: appLayout.getHight(360),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(
        right: 17,
        top: 10,
      ),
      decoration: BoxDecoration(
          color: styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5,
            )
          ]),
      child: Column(
        children: [
          Container(
            height: appLayout.getHight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: styles.primaryColor,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/${hotel['image']}")),
            ),
          ),
          const Gap(10),
          Text(
            hotel['place'],
            style: styles.headlinestyle2.copyWith(color: styles.khakicolor),
          ),
          const Gap(5),
          Text(
            hotel['destination'],
            style: styles.headlinestyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            '\$${hotel['price']}/night',
            style: styles.headlinestyle3.copyWith(color: styles.khakicolor),
          ),
        ],
      ),
    );
  }
}
