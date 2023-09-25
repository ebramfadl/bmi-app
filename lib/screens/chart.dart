import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_charts/flutter_charts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartData {
  ChartData(this.x, this.y);

  final String x;
  final double y;
}

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData("S", 100),
      ChartData("S", 200),
      ChartData("M", 300),
      ChartData("T", 400),
      ChartData("W", 500),
      ChartData("T", 600),
      ChartData("F", 700),
    ];
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Container(
                child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(
                      title: AxisTitle(text: 'X-Axis'),
                      // Configure the text style for x-axis labels.
                      labelStyle: TextStyle(
                        color: Colors.black, // Change the font color here
                      ),
                      majorGridLines: MajorGridLines(width: 0),
                      labelPlacement: LabelPlacement.betweenTicks,
                    ),

                    // Set the primaryYAxis to customize the appearance of the y-axis labels.
                    primaryYAxis: NumericAxis(
                      title: AxisTitle(text: 'Y-Axis'),
                      // Configure the text style for y-axis labels.
                      labelStyle: TextStyle(
                        color: Colors.black, // Change the font color here
                      ),
                    ),
                    series: <ChartSeries<ChartData, String>>[
              ColumnSeries<ChartData, String>(
                  dataSource: chartData,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y,
                  // Width of the columns
                  width: 0.2,
                  // Spacing between the columns
                  spacing: 0.1)
            ]))));
  }
}
