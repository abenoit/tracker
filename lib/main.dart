import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './theme/style.dart';
import './screens/Home/home.dart';
import './models/ActivitiesProvider.dart';

void main() => runApp(ChangeNotifierProvider(
      create: (context) => ActivitiesModel(),
      child: App(),
    ));

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tracker',
      theme: appTheme(),
      home: Main(title: 'Tracker'),
    );
  }
}
