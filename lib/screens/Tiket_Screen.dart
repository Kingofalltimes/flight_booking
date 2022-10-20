import 'package:barcode_widget/barcode_widget.dart';
import 'package:flight_booking/screens/tikit_view.dart';
import 'package:flight_booking/utils/App_info_list.dart';
import 'package:flight_booking/utils/app_layout.dart';
import 'package:flight_booking/utils/app_styles.dart';
import 'package:flight_booking/widgets/colum_layout.dart';
import 'package:flight_booking/widgets/ticket%20widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/LayoutBilder_widget.dart';

class tiketscreen extends StatelessWidget {
  const tiketscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = appLayout.getsize(context);
    return Scaffold(
      backgroundColor: styles.bgcolor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: appLayout.getHight(20),
              vertical: appLayout.getHight(20)),
          children: [
            Gap(appLayout.getHight(40)),
            Text(
              "Tickets",
              style: styles.headlinestyle1,
            ),
            Gap(appLayout.getHight(20)),
            const AppTiketTabs(
                first_tab: "Upcoming Flights", second_tab: "Privious Flights"),
            Gap(appLayout.getHight(20)),
            Container(
              padding: EdgeInsets.only(left: appLayout.getHight(15)),
              child: Tikitview(
                ticket: ticketList[0],
                iscolor: true,
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: Colors.white,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      appColumeLayout(
                        firstText: "Flutter DB",
                        secondText: "Passenger",
                        alignment: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      appColumeLayout(
                        firstText: " 5221ad6449",
                        secondText: "Passport",
                        alignment: CrossAxisAlignment.end,
                        isColor: true,
                      ),
                    ],
                  ),
                  Gap(appLayout.getHight(20)),
                  const appLayoutBilder(
                    sections: 15,
                    iscolor: false,
                    width: 5,
                  ),
                  Gap(appLayout.getHight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      appColumeLayout(
                        firstText: " 22791635882e6",
                        secondText: "Nomber Of e-Ticket",
                        alignment: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      appColumeLayout(
                        firstText: " B2d3563",
                        secondText: "Booking Code",
                        alignment: CrossAxisAlignment.end,
                        isColor: true,
                      ),
                    ],
                  ),
                  Gap(appLayout.getHight(20)),
                  const appLayoutBilder(
                    sections: 15,
                    iscolor: false,
                    width: 5,
                  ),
                  Gap(appLayout.getHight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/visa.jpg",
                                // height: appLayout.getHight(80),
                                width: appLayout.getWidth(100),
                              ),
                              Text(
                                "***7677",
                                style: styles.headlinestyle3,
                              )
                            ],
                          ),
                          Gap(5),
                          Text(
                            "Payment Mathird",
                            style: styles.headlinestyle4,
                          )
                        ],
                      ),
                      const appColumeLayout(
                        firstText: " \$299.98",
                        secondText: " Prise",
                        alignment: CrossAxisAlignment.end,
                        isColor: true,
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                    ],
                  )
                ]),
              ),
            ),
            /* bAR code*/
            const SizedBox(
              height: 1,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(appLayout.getHight(21)),
                      bottomLeft: Radius.circular(appLayout.getHight(21)))),
              margin: EdgeInsets.only(
                  left: appLayout.getHight(15), right: appLayout.getHight(15)),
              padding: EdgeInsets.only(
                  top: appLayout.getHight(20), bottom: appLayout.getHight(20)),
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: appLayout.getHight(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(appLayout.getHight(15)),
                  child: BarcodeWidget(
                    data: 'https://github.com/martinovovo',
                    barcode: Barcode.code128(),
                    drawText: false,
                    color: styles.textcolor,
                    width: double.infinity,
                    height: 70,
                  ),
                ),
              ),
            ),
            Gap(appLayout.getHight(20)),
            Container(
                padding: EdgeInsets.only(left: appLayout.getHight(15)),
                child: Tikitview(
                  ticket: ticketList[0],
                )),
          ],
        ),
        Positioned(
          left: appLayout.getHight(20),
          top: appLayout.getHight(310),
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: styles.textcolor, width: 2),
            ),
            child: CircleAvatar(
              maxRadius: 7,
              backgroundColor: styles.textcolor,
            ),
          ),
        ),
        Positioned(
          right: appLayout.getHight(20),
          top: appLayout.getHight(310),
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: styles.textcolor, width: 2),
            ),
            child: CircleAvatar(
              maxRadius: 7,
              backgroundColor: styles.textcolor,
            ),
          ),
        ),
      ]),
    );
  }
}
