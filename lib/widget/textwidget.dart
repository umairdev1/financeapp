import 'package:flutter/material.dart';

import '../utilis/colors.dart';

class TextWidget extends StatelessWidget {
  final String title;
  final VoidCallback click;
  bool? active;
  TextWidget({
    super.key,
    required this.title,
    required this.click,
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        decoration: BoxDecoration(
            color: active! ? kwhiteClr : Colors.transparent,
            borderRadius: BorderRadius.circular(50)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(
            title,
            style: const TextStyle(
              color: kblackClr,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
