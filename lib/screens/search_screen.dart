import 'package:flight_booking/utils/app_layout.dart';
import 'package:flight_booking/utils/app_styles.dart';
import 'package:flight_booking/widgets/icon_text_widget.dart';
import 'package:flight_booking/widgets/ticket%20widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:flight_booking/widgets/view_all.dart';

class searchscreen extends StatelessWidget {
  const searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = appLayout.getsize(context);
    return Scaffold(
      backgroundColor: styles.bgcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: appLayout.getWidth(20),
            vertical: appLayout.getHight(20)),
        children: [
          Gap(appLayout.getHight(40)),
          Text(
            "What Are \nyou Looking For?",
            style: styles.headlinestyle1
                .copyWith(fontSize: appLayout.getWidth(35)),
          ),
          Gap(appLayout.getHight(20)),
          const AppTiketTabs(
            first_tab: "Airline Tickets",
            second_tab: "Hotels",
          ),
          Gap(appLayout.getHight(25)),
          const appicontext(
              icon: Icons.flight_takeoff_rounded, text: "departure"),
          Gap(appLayout.getHight(20)),
          const appicontext(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(appLayout.getHight(25)),
          Container(
              padding: EdgeInsets.symmetric(
                  vertical: appLayout.getHight(18),
                  horizontal: appLayout.getWidth(15)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(appLayout.getWidth(10)),
                color: Color(0xd91130ce),
              ),
              child: Center(
                child: Text(
                  "Find Ticket",
                  style: styles.textStyle.copyWith(color: Colors.white),
                ),
              )),
          Gap(appLayout.getHight(40)),
          const appDoubleTextWidget(
              bigtext: "upcoming Flights", smalltext: "View All"),
          Gap(appLayout.getHight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: appLayout.getHight(450),
                width: Size.width * .42,
                padding: EdgeInsets.symmetric(
                    vertical: appLayout.getHight(15),
                    horizontal: appLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(appLayout.getHight(12)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: appLayout.getHight(170),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(appLayout.getHight(20)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 1,
                              spreadRadius: 1)
                        ],
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/sit.jpg"),
                        ),
                      ),
                    ),
                    Gap(appLayout.getHight(10)),
                    Text(
                      "20% Discount On The Early Booking Of this Flight. Don't Miss.",
                      style: styles.headlinestyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: Size.width * 0.44,
                        height: appLayout.getHight(225),
                        decoration: BoxDecoration(
                          color: Color(0xff3ab8b8),
                          borderRadius:
                              BorderRadius.circular(appLayout.getHight(18)),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: appLayout.getHight(15),
                            horizontal: appLayout.getWidth(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nFor Survey",
                              style: styles.headlinestyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Gap(appLayout.getHight(10)),
                            Text(
                              "Take The Survay About Our Servesis And Get Discount",
                              style: styles.headlinestyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(appLayout.getHight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: Color(0xff189999)),
                              color: Colors.transparent),
                        ),
                      )
                    ],
                  ),
                  Gap(appLayout.getHight(15)),
                  Container(
                    width: Size.width * 0.44,
                    height: appLayout.getHight(210),
                    padding: EdgeInsets.symmetric(
                        vertical: appLayout.getHight(15),
                        horizontal: appLayout.getWidth(15)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          appLayout.getHight(18),
                        ),
                        color: const Color(0xffec6545)),
                    child: Column(
                      children: [
                        Text(
                          "Take Love",
                          style: styles.headlinestyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(appLayout.getHight(5)),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(text: '😍', style: TextStyle(fontSize: 28)),
                          TextSpan(text: '❤️', style: TextStyle(fontSize: 40)),
                          TextSpan(text: '😘', style: TextStyle(fontSize: 28)),
                        ])),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
