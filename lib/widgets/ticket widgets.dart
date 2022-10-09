import 'package:flight_booking/utils/app_layout.dart';
import 'package:flutter/material.dart';

class AppTiketTabs extends StatelessWidget {
  final String first_tab;
  final String second_tab;
  const AppTiketTabs(
      {super.key, required this.first_tab, required this.second_tab});

  @override
  Widget build(BuildContext context) {
    final Size = appLayout.getsize(context);

    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        // ignore: sort_child_properties_last
        child: Row(
          children: [
            //airline tickets
            Container(
              width: Size.width * .44,
              padding: EdgeInsets.symmetric(vertical: appLayout.getHight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(appLayout.getHight(50)),
                  ),
                  color: Colors.white),
              child: Center(
                child: Text(first_tab),
              ),
            ),
            // hotels
            Container(
              width: Size.width * .44,
              padding: EdgeInsets.symmetric(vertical: appLayout.getHight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(appLayout.getHight(50)),
                  ),
                  color: Colors.transparent),
              child: Center(child: Text(second_tab)),
            ),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              appLayout.getHight(50),
            ),
            color: const Color(0xfff4f6fd)),
      ),
    );
  }
}
