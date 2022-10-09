import 'package:flight_booking/utils/app_layout.dart';
import 'package:flutter/material.dart';

class appLayoutBilder extends StatelessWidget {
  final double width;
  final bool? iscolor;
  final int sections;
  const appLayoutBilder(
      {super.key, this.iscolor, required this.sections, this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext, BoxConstraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
              (BoxConstraints.constrainWidth() / 15).floor(),
              (index) => SizedBox(
                    width: width,
                    height: appLayout.getHight(1),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                      color:
                          iscolor == null ? Colors.white : Colors.grey.shade400,
                    )),
                  )),
        );
      },
    );
  }
}
