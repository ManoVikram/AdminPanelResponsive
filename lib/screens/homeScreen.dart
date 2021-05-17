import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import './dashbordScreen.dart';
import '../widgets/sideMenu.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              // By defult the flex is 1
              // Takes 1/6 of the screen width
              child: SideMenu(),
            ),
            Expanded(
              // Takes 5/6 of the screen width
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}




