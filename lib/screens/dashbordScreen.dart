import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../widgets/header.dart';
import '../widgets/storageDetails.dart';
import '../widgets/chart.dart';
import '../widgets/storageInfoCard.dart';
import '../widgets/myFiles.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> pieChartSectionDataList = [
      PieChartSectionData(
        value: 25.0,
        color: primaryColor,
        showTitle: false,
        radius: 25.0,
      ),
      PieChartSectionData(
        value: 20.0,
        color: Color(0xFF26E5FF),
        showTitle: false,
        radius: 22.0,
      ),
      PieChartSectionData(
        value: 10.0,
        color: Color(0xFFFFCF26),
        showTitle: false,
        radius: 19.0,
      ),
      PieChartSectionData(
        value: 15.0,
        color: Color(0xFFEE2727),
        showTitle: false,
        radius: 16.0,
      ),
      PieChartSectionData(
        value: 25.0,
        color: primaryColor.withOpacity(0.1),
        showTitle: false,
        radius: 13.0,
      ),
    ];

    return SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: MyFiles(),
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  flex: 2,
                  child: StorageDetails(
                      pieChartSectionDataList: pieChartSectionDataList),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


