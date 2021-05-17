import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import './chart.dart';
import './storageInfoCard.dart';
import '../constants.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
    required this.pieChartSectionDataList,
  }) : super(key: key);

  final List<PieChartSectionData> pieChartSectionDataList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Details",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(pieChartSectionDataList: pieChartSectionDataList),
          StorageInfoCard(
            title: "Document Files",
            icon: "assets/icons/Documents.svg",
            numberOfFiles: 1329,
            fileSize: "1.3GB",
          ),
          StorageInfoCard(
            title: "Media Files",
            icon: "assets/icons/media.svg",
            numberOfFiles: 1329,
            fileSize: "15.3GB",
          ),
          StorageInfoCard(
            title: "Other Files",
            icon: "assets/icons/folder.svg",
            numberOfFiles: 1329,
            fileSize: "1.3GB",
          ),
          StorageInfoCard(
            title: "Unknown",
            icon: "assets/icons/unknown.svg",
            numberOfFiles: 140,
            fileSize: "1.3GB",
          ),
        ],
      ),
    );
  }
}
