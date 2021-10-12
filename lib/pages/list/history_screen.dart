import 'package:flutter/material.dart';

import 'components/body.dart';

class HistoryScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History"),
      ),
      body: Body(),
    );
  }
}
