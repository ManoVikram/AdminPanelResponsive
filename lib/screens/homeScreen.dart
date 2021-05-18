import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './dashbordScreen.dart';
import '../responsive.dart';
import '../widgets/sideMenu.dart';
import '../controllers/menuController.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SideMenu() is required only for large screens
            if (Responsive.isDesktop(context))
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
