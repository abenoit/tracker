import 'package:flutter_test/flutter_test.dart';
import 'package:tracker/models/ActivitiesProvider.dart';

void main() {
  test('adding item increases total cost', () {
    final activities = ActivitiesModel().getActivities();

    expect(activities.length, 0);
  });

  test('adding Activity increases total activities', () {
    final activities = ActivitiesModel();

    activities.addActivity("An activity");

    activities.addListener(() {
      expect(activities.getActivities(), 1);
    });
  });
}
