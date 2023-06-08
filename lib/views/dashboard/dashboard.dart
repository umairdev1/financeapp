// ignore_for_file: library_private_types_in_public_api

import 'package:financeapp/utilis/colors.dart';
import 'package:financeapp/views/dashboard/widget/chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_charts/flutter_charts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../widget/cardtile.dart';
import '../../widget/textwidget.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size.width;
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
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "March",
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "\$544.3890",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        const ChartView(),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
                color: kwhiteClr,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                children: [
                  Row(
                    children: const [
                      Text(
                        "Top Stories",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: _size * 0.3,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          color: kblackClr,
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Container(
                        height: 10,
                        width: _size * .2,
                        color: Colors.black54,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Container(
                        height: 10,
                        width: _size * .15,
                        color: Colors.black45,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Container(
                        height: 10,
                        width: _size * .1,
                        color: Colors.black26,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Container(
                        height: 10,
                        width: _size * .08,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          color: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CardTile(
                    title: "Adidas",
                    price: "403.8",
                    purchase: "4",
                    category: "Sports",
                    icon: Icons.sports_handball,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CardTile(
                    title: "Walmart",
                    price: "328.9",
                    purchase: "7",
                    category: "Retailling",
                    icon: Icons.mark_chat_read,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CardTile(
                    title: "Adidas",
                    price: "403.8",
                    purchase: "4",
                    category: "Sports",
                    icon: Icons.sports_handball,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CardTile(
                    title: "Walmart",
                    price: "328.9",
                    purchase: "7",
                    category: "Retailling",
                    icon: Icons.mark_chat_read,
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
