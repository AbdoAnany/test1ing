import 'package:flutter/material.dart';
import 'package:testing/responsive_layout.dart';
import 'package:testing/screens/tab_screens/history.dart';
import 'package:testing/screens/tab_screens/settings.dart';

import 'screens/tab_screens/homeScreen_pages/productDetailsScreen.dart';
import 'widgets/tabsLayout.dart';


class WidgetTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: ResponsiveLayout(
        iphone: TabsLayout(),
        ipad: Row(
          children: [
            Expanded(
              flex: _size.width < 800 ? 6 : 7,
              child: TabsLayout(),
            ),
            Expanded(
              flex: _size.width < 800 ? 4 : 3,
              child: TabsLayout(),
            ),
          ],
        ),
        ipadTurned: Row(
          children: [
            Expanded(
              flex: _size.width < 900 ? 5 : 4,
              child: TabsLayout(),
            ),
            Expanded(
              flex: _size.width < 900 ? 5 : 6,
              child: TabsLayout(),
            ),
          ],
        ),
        macbook: Row(
          children: [
            Expanded(
              flex: _size.width > 1340 ? 3 : 6,
              child: TabsLayout(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 7 : 10,
              child: TabsLayout(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 2 : 4,
              child: TabsLayout(),
            ),
          ],
        ),
      ),
    );
  }
}
