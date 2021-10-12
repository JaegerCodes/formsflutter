import 'package:flutter/material.dart';

import 'history_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          SizedBox(height: 20),
          HistoryWidget(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          HistoryWidget(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          HistoryWidget(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          HistoryWidget(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          HistoryWidget(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
