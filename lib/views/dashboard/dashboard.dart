import 'package:financeapp/utilis/colors.dart';
import 'package:flutter/material.dart';

import '../../widget/textwidget.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblueClr,
      appBar: AppBar(
        title: const Text("Expenses"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
              ))
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: kwhiteClr.withOpacity(0.3),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  click: () {},
                  title: 'W',
                ),
                TextWidget(
                  click: () {},
                  title: 'M',
                ),
                TextWidget(
                  click: () {},
                  title: '3M',
                ),
                TextWidget(
                  click: () {},
                  title: '6M',
                  active: true,
                ),
                TextWidget(
                  click: () {},
                  title: 'Y',
                ),
                TextWidget(
                  click: () {},
                  title: 'All',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
