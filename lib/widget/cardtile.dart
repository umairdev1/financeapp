import 'package:flutter/material.dart';

import '../utilis/colors.dart';

class CardTile extends StatelessWidget {
  final String title, price, purchase, category;
  final IconData icon;
  const CardTile({
    super.key,
    required this.title,
    required this.price,
    required this.purchase,
    required this.category,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: kblackClr,
          child: Icon(
            icon,
            color: kwhiteClr,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "\$$price",
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    category,
                    style: const TextStyle(
                      color: kgreyClr,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "$purchase purchases",
                    style: const TextStyle(
                      color: kgreyClr,
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
