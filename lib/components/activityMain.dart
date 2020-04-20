import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tracker/components/noActivity.dart';
import 'package:tracker/components/todaysActivities.dart';
import 'package:tracker/models/ActivitiesProvider.dart';

class ActivityMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<ActivitiesModel>(
        builder: (context, activities, child) {
          if (activities.hasActivity()) {
            return TodaysActivities(activities: activities.getActivities());
          }

          return NoActivity();
        },
      ),
    );
  }
}
