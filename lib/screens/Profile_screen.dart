import 'package:flight_booking/utils/app_layout.dart';
import 'package:flight_booking/utils/app_styles.dart';
import 'package:flight_booking/widgets/LayoutBilder_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:flight_booking/widgets/colum_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.bgcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: appLayout.getWidth(20),
            vertical: appLayout.getHight(20)),
        children: [
          Gap(appLayout.getHight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: appLayout.getHight(86),
                width: appLayout.getWidth(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(appLayout.getHight(20)),
                  image: DecorationImage(image: AssetImage("assets/imj2.jpg")),
                ),
              ),
              Gap(appLayout.getHight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: styles.headlinestyle1,
                  ),
                  Gap(appLayout.getHight(2)),
                  Text(
                    " New-York",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  Gap(appLayout.getHight(8)),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(appLayout.getHight(100)),
                        color: const Color(0xfffef4f3)),
                    padding: EdgeInsets.symmetric(
                        horizontal: appLayout.getHight(3),
                        vertical: appLayout.getHight(3)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff526799)),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                          ),
                        ),
                        Gap(appLayout.getHight(5)),
                        const Text(
                          "Premium Status",
                          style: TextStyle(
                              color: Color(0xff526799),
                              fontWeight: FontWeight.w600),
                        ),
                        Gap(appLayout.getHight(5)),
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print("You Are Tapped");
                    },
                    child: Text(
                      "Edit",
                      style: styles.textStyle.copyWith(
                          color: styles.primaryColor,
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(appLayout.getHight(8)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(appLayout.getHight(8)),
          Stack(
            children: [
              Container(
                height: appLayout.getHight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: styles.primaryColor,
                    borderRadius:
                        BorderRadius.circular(appLayout.getHight(19))),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(appLayout.getHight(30)),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: Color(0xff264cd2))),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: appLayout.getHight(25),
                    vertical: appLayout.getHight(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: styles.primaryColor,
                        size: 30,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(appLayout.getHight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You\'v Got A New Aword",
                          style: styles.headlinestyle2.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "You Have 89 flights In A Year",
                          style: styles.headlinestyle2.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.9)),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(appLayout.getHight(25)),
          Text(
            "Accumulated Mailes",
            style: styles.headlinestyle2,
          ),
          Gap(appLayout.getHight(30)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: appLayout.getWidth(15)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(appLayout.getWidth(18)),
                color: styles.bgcolor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 5,
                      spreadRadius: 5)
                ]),
            child: Column(
              children: [
                Gap(appLayout.getHight(15)),
                Text(
                  "1977657",
                  style: TextStyle(
                      fontSize: 50,
                      color: styles.textcolor,
                      fontWeight: FontWeight.w600),
                ),
                Gap(appLayout.getHight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mailes Accrued",
                      style: styles.headlinestyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "11 June 2022",
                      style: styles.headlinestyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Gap(appLayout.getHight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    appColumeLayout(
                      firstText: "2304 77 ",
                      secondText: "Mailes",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    appColumeLayout(
                      firstText: " Airline CO",
                      secondText: "Recived From",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(appLayout.getHight(13)),
                const appLayoutBilder(
                  sections: 12,
                  iscolor: false,
                ),
                Gap(appLayout.getHight(13)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    appColumeLayout(
                      firstText: "75 ",
                      secondText: "Mailes",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    appColumeLayout(
                      firstText: "Mc Donal\'s",
                      secondText: "Recived From",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(appLayout.getHight(13)),
                const appLayoutBilder(
                  sections: 12,
                  iscolor: false,
                ),
                Gap(appLayout.getHight(13)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    appColumeLayout(
                      firstText: "98452 7 ",
                      secondText: "Mailes",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    appColumeLayout(
                      firstText: "  Exuma",
                      secondText: "Recived From",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(appLayout.getHight(13)),
                const appLayoutBilder(
                  sections: 12,
                  iscolor: false,
                ),
                Gap(appLayout.getHight(13)),
              ],
            ),
          ),
          Gap(appLayout.getHight(30)),
          InkWell(
            onTap: () => print("You Are Tapped"),
            child: Center(
              child: Text(
                "How To Get More Miles",
                style: styles.textStyle.copyWith(
                    color: styles.primaryColor, fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
