import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tracker/models/ActivitiesProvider.dart';

class AddActivity extends StatefulWidget {
  final validateActivity;
  AddActivity({Key key, this.validateActivity}) : super(key: key);

  @override
  AddActivityState createState() => AddActivityState();
}

class AddActivityState extends State<AddActivity> {
  final _formKey = GlobalKey<FormState>();
  String activityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Activity'),
        ),
        body: Container(child:
            Consumer<ActivitiesModel>(builder: (context, activities, child) {
          return Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Form(
                  key: _formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Activity name to track',
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please an activity name';
                              }
                              return null;
                            },
                            onChanged: (val) =>
                                setState(() => activityName = val)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: RaisedButton(
                            onPressed: () {
                              // Validate will return true if the form is valid, or false if
                              // the form is invalid.
                              if (_formKey.currentState.validate()) {
                                activities.addActivity(activityName);
                                Navigator.pop(context);
                              }
                            },
                            child: Text('Track this!'),
                          ),
                        )
                      ])));
        })));
  }
}
