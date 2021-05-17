import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
    required this.pieChartSectionDataList,
  }) : super(key: key);

  final List<PieChartSectionData> pieChartSectionDataList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              startDegreeOffset: -90.0,
              sectionsSpace: 0.0,
              centerSpaceRadius: 70.0,
              sections: pieChartSectionDataList,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: defaultPadding,
                ),
                Text(
                  "29.1",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Text("of 128GB"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
