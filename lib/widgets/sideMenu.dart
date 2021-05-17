import 'package:flutter/material.dart';

import './drwerListTile.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/logo.png"),
            ),
            DrawerListTile(
              title: "Drawer",
              icon: "assets/icons/menu_dashbord.svg",
              onPress: () {},
            ),
            DrawerListTile(
              title: "Transaction",
              icon: "assets/icons/menu_tran.svg",
              onPress: () {},
            ),
            DrawerListTile(
              title: "Task",
              icon: "assets/icons/menu_task.svg",
              onPress: () {},
            ),
            DrawerListTile(
              title: "Documents",
              icon: "assets/icons/menu_doc.svg",
              onPress: () {},
            ),
            DrawerListTile(
              title: "Store",
              icon: "assets/icons/menu_store.svg",
              onPress: () {},
            ),
            DrawerListTile(
              title: "Notification",
              icon: "assets/icons/menu_notification.svg",
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}
