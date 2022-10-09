import 'package:flutter/material.dart';

class Thickcontainor extends StatelessWidget {
  final bool? iscolor;
  const Thickcontainor({super.key, required this.iscolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            width: 2.5,
            color: iscolor == null ? Colors.white : const Color(0xff8accf7)),
      ),
    );
  }
}
