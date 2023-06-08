import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../utilis/colors.dart';

class ChartView extends StatefulWidget {
  const ChartView({super.key});

  @override
  State<ChartView> createState() => _ChartViewState();
}

class _ChartViewState extends State<ChartView> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('Jan', 12),
      _ChartData('Feb', 25),
      _ChartData('Mar', 35),
      _ChartData('Apr', 19),
      _ChartData('May', 14),
      _ChartData('Jun', 28)
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: SfCartesianChart(
          backgroundColor: kblueClr,
          primaryXAxis: CategoryAxis(
              labelStyle: const TextStyle(
                  color: kblackClr, fontWeight: FontWeight.w500)),
          primaryYAxis: NumericAxis(
              minimum: 0, maximum: 40, interval: 10, isVisible: false),
          tooltipBehavior: _tooltip,
          series: <ChartSeries<_ChartData, String>>[
            ColumnSeries<_ChartData, String>(
                dataSource: data,
                xValueMapper: (_ChartData data, _) => data.x,
                yValueMapper: (_ChartData data, _) => data.y,
                name: '\$45673',
                color: kwhiteClr)
          ]),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
