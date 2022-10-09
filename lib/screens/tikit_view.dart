import 'package:flight_booking/utils/app_layout.dart';
import 'package:flight_booking/utils/app_styles.dart';
import 'package:flight_booking/widgets/LayoutBilder_widget.dart';
import 'package:flight_booking/widgets/colum_layout.dart';
import 'package:flight_booking/widgets/thick_containar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/get_utils.dart';

class Tikitview extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? iscolor;
  const Tikitview({super.key, required this.ticket, this.iscolor});

  @override
  Widget build(BuildContext context) {
    final Size = appLayout.getsize(context);
    return SizedBox(
      width: Size.width * 0.85,
      height: appLayout.getHight(GetPlatform.isAndroid == true ? 178 : 169),
      child: Container(
        margin: EdgeInsets.only(
          right: appLayout.getHight(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: iscolor == null ? const Color(0xff526799) : Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: iscolor == null
                            ? styles.headlinestyle3
                                .copyWith(color: Colors.white)
                            : styles.headlinestyle3,
                      ),
                      Spacer(),
                      Thickcontainor(
                        iscolor: true,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: appLayout.getHight(40),
                              child: LayoutBuilder(
                                builder: (BuildContext, BoxConstraints) {
                                  print(
                                      "the width is ${BoxConstraints.constrainWidth()}");
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        (BoxConstraints.constrainWidth() / 6)
                                            .floor(),
                                        (index) => SizedBox(
                                              width: 3,
                                              height: 1,
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: iscolor == null
                                                        ? Colors.white
                                                        : Colors.grey.shade300),
                                              ),
                                            )),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Transform.rotate(
                          angle: 1.5,
                          child: Icon(
                            Icons.local_airport_rounded,
                            color: iscolor == null
                                ? Colors.white
                                : Color(0xff8accf7),
                          ),
                        ),
                      ),
                      Thickcontainor(
                        iscolor: true,
                      ),
                      Spacer(),
                      Text(
                        ticket['to']['code'],
                        style: iscolor == null
                            ? styles.headlinestyle3.copyWith(
                                color: Colors.white,
                              )
                            : styles.headlinestyle3,
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: appLayout.getWidth(100),
                        child: Text(
                          ticket['from']['name'],
                          style: iscolor == null
                              ? styles.headlinestyle4
                                  .copyWith(color: Colors.white)
                              : styles.headlinestyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: iscolor == null
                            ? styles.headlinestyle4
                                .copyWith(color: Colors.white)
                            : styles.headlinestyle4,
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: iscolor == null
                              ? styles.headlinestyle4
                                  .copyWith(color: Colors.white)
                              : styles.headlinestyle4,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            /* showing the blue part of the card/tikit */
            Container(),
            /* showing the orange part of card*/
            Container(
              color: iscolor == null
                  ? styles.orangecolor
                  : Colors.white, //const Color(0xfff37b67),
              child: Row(
                children: [
                  SizedBox(
                    height: appLayout.getHight(20),
                    width: appLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                      color:
                          iscolor == null ? Colors.grey.shade200 : Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    )),
                  ),
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: appLayoutBilder(
                            sections: 6,
                          ))),
                  SizedBox(
                    height: appLayout.getHight(20),
                    width: appLayout.getHight(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                      color:
                          iscolor == null ? Colors.grey.shade200 : Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    )),
                  ),
                ],
              ),
            ),

            /* showing bottom  orange part of the card/tikit*/

            Container(
              decoration: BoxDecoration(
                color: iscolor == null ? styles.orangecolor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(iscolor == null ? 21 : 0),
                  bottomRight: Radius.circular(iscolor == null ? 21 : 0),
                ),
              ),
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      appColumeLayout(
                        firstText: ticket['date'],
                        secondText: "Date",
                        alignment: CrossAxisAlignment.start,
                        isColor: iscolor,
                      ),
                      appColumeLayout(
                        firstText: (ticket['departure_time']),
                        secondText: "Deparcher Time",
                        alignment: CrossAxisAlignment.center,
                        isColor: iscolor,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "29 ",
                            style: iscolor == null
                                ? styles.headlinestyle3
                                    .copyWith(color: Colors.white)
                                : styles.headlinestyle3,
                          ),
                          const Gap(5),
                          Text(
                            "Number",
                            style: iscolor == null
                                ? styles.headlinestyle4
                                    .copyWith(color: Colors.white)
                                : styles.headlinestyle4,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
