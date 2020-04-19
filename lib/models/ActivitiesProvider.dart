import 'package:flutter/widgets.dart';

class ActivityAlreadyExistsError extends Error {}

class ActivityNotFoundError extends Error {}

class ActivitiesModel extends ChangeNotifier {
  final List<String> _activities = [];

  void addActivity(String activityName) {
    if (_activities.contains(activityName)) {
      throw new ActivityAlreadyExistsError();
    }
    _activities.add(activityName);
    notifyListeners();
  }

  void removeActivity(String activityName) {
    if (!_activities.contains(activityName)) {
      throw new ActivityNotFoundError();
    }
    _activities.remove(activityName);
    notifyListeners();
  }

  List<String> getActivities() {
    return _activities;
  }

  bool hasActivity() {
    return _activities.length > 0;
  }
}
