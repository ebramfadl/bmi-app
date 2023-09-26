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
      ChartData("Sat", 100),
      ChartData("Sun", 200),
      ChartData("Mon", 300),
      ChartData("Tue", 400),
      ChartData("Wed", 500),
      ChartData("Thu", 600),
      ChartData("Fri", 700),
    ];

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(child: LayoutBuilder(builder: (context, constraints) {
          double screenHeight = MediaQuery.of(context).size.height;
          double containerHeight = screenHeight * 0.5;
          return Center(
            child: Container(
              height: containerHeight,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(
                      title: AxisTitle(text: 'X-Axis'),
                      // Configure the text style for x-axis labels.
                      labelStyle: TextStyle(
                        color: Colors.black, // Change the font color here
                      ),
                      majorGridLines: MajorGridLines(width: 0),
                      labelPlacement: LabelPlacement.onTicks,
                      edgeLabelPlacement: EdgeLabelPlacement.shift,
                    ),

                    // Set the primaryYAxis to customize the appearance of the y-axis labels.
                    // primaryYAxis: NumericAxis(
                    //   title: AxisTitle(text: 'Y-Axis'),
                    //   // Configure the text style for y-axis labels.
                    //   labelStyle: TextStyle(
                    //     color: Colors.black, // Change the font color here
                    //   ),
                    //   labelPosition: ChartDataLabelPosition.inside,
                    // ),
                    series: <ChartSeries<ChartData, String>>[
                      ColumnSeries<ChartData, String>(
                          dataSource: chartData,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,
                          pointColorMapper: (ChartData data, _) =>
                              Color(0xFFC2FFE6),
                          // Width of the columns
                          width: 0.8,
                          // Spacing between the columns
                          spacing: 0.2)
                    ]),
              ),
            ),
          );
        })));
  }
}
