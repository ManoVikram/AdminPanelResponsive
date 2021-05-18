import 'package:admin_panel/responsive.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../widgets/header.dart';
import '../widgets/storageDetails.dart';
import '../widgets/myFiles.dart';
import '../models/recentFiles.dart';

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

    DataRow recentFilesRow(RecentFile recentFileInfo) {
      return DataRow(
        cells: [
          DataCell(
            Row(
              children: [
                SvgPicture.asset(
                  recentFileInfo.icon,
                  height: 30,
                  width: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Text(recentFileInfo.title),
                ),
              ],
            ),
          ),
          DataCell(
            Text(recentFileInfo.date),
          ),
          DataCell(
            Text(recentFileInfo.size),
          ),
        ],
      );
    }

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
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      Container(
                        padding: EdgeInsets.all(defaultPadding),
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Recent Files",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            SizedBox(
                              width: double.infinity,
                              // DataTable() creates table of rows and columns
                              child: DataTable(
                                horizontalMargin: 0.0,
                                columnSpacing: defaultPadding,
                                columns: [
                                  DataColumn(
                                    label: Text("File Name"),
                                  ),
                                  DataColumn(
                                    label: Text("Date"),
                                  ),
                                  DataColumn(
                                    label: Text("Size"),
                                  ),
                                ],
                                // List.generate() generates a list of data
                                rows: List.generate(
                                  recentFiles.length,
                                  (index) => recentFilesRow(
                                    recentFiles[index],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (Responsive.isMobile(context))
                        SizedBox(
                          height: defaultPadding,
                        ),
                      if (Responsive.isMobile(context))
                        StorageDetails(
                            pieChartSectionDataList: pieChartSectionDataList),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                SizedBox(
                  width: defaultPadding,
                ),
                // StorgeDetails() will not be shown on mobile screens
                if (!Responsive.isMobile(context))
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
