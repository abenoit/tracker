import 'package:flutter/material.dart';
import 'package:tracker/components/noActivity.dart';

class Main extends StatelessWidget {
  Main({Key key, this.title}) : super(key: key);
  final String title;

  void _addActivity() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            NoActivity(key: key),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addActivity,
        tooltip: 'Add Activity',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
