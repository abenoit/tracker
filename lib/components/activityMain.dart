import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tracker/components/noActivity.dart';
import 'package:tracker/models/ActivitiesProvider.dart';

class ActivityMain extends StatelessWidget {
  ActivityMain({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<ActivitiesModel>(
        builder: (context, activities, child) {
          return activities.hasActivity() ? Text("Has Activities") : NoActivity;
        },
      ),
    );
  }
}
