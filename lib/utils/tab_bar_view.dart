import 'package:flutter/material.dart';

import '../constants/ui_constants.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            // TAB BAR //
            const TabBar(
              indicatorColor: kPrimaryColor,
              labelColor: kPrimaryColor,
              tabs: [
                Text("Card Info"),
                Text("Last 10 Transaction"),
                Text("Statement"),
              ],
            ),
            // TAB BAR VIEWS //
            SizedBox(
              height: 440,
              child: TabBarView(
                children: [
                  // Add your Card Info widget here
                  _buildCardInfo(),
                  // Add your Last 10 Transaction widget here
                  _buildLast10Transaction(),
                  // Add your Statement widget here
                  _buildStatement(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // Helper methods to build the content of each tab
  Widget _buildCardInfo() {
    return Container(
      color: Colors.brown,
      child: const Center(
        child: Text("Card Info"),
      ),
    );
  }

  Widget _buildLast10Transaction() {
    return Container(
      color: Colors.blue,
      child: const Center(
        child: Text("Last 10 Transaction"),
      ),
    );
  }

  Widget _buildStatement() {
    return Container(
      color: Colors.red,
      child: const Center(
        child: Text("Statement"),
      ),
    );
  }
}
