import 'package:flutter/material.dart';

class TodaysActivities extends StatelessWidget {
  final activities;
  TodaysActivities({Key key, this.activities}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: activities
              .map<Widget>((activity) =>
                  new Text(activity != null ? activity : "null string"))
              .toList()),
    );
  }
}
