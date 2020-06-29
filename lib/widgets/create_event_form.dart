import 'package:flutter/material.dart';
import 'package:the_friends_look/controllers/db_controller.dart';
import 'package:the_friends_look/controllers/user_controller.dart';
import 'package:the_friends_look/models/event.dart';

class CreateEventForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CreateEventFormState();
  }
}

class CreateEventFormState extends State<CreateEventForm> {
  final _formKey = GlobalKey<FormState>();
  String title;
  String description;
  DateTime date;
  int maxSubscribers;
  String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Title:'),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                } else {
                  title = value;
                }
                return null;
              },
            ),
            Container(height: 10),
            Text('Description:'),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                } else {
                  description = value;
                }
                return null;
              },
            ),
            Container(height: 10),
            Text('Image URL:'),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                } else {
                  imageUrl = value;
                }
                return null;
              },
            ),
            Container(height: 10),
            Text('Max Subscribers:'),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                } else {
                  maxSubscribers = int.parse(value);
                }
                return null;
              },
            ),
            Container(height: 10),
            Text('Date (yyyy-mm-dd):'),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                } else {
                  date = DateTime.parse(value);
                }
                return null;
              },
            ),
            RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  DbController().createEvent(Event(
                      0,
                      UserController().getCurrentUser().id,
                      title,
                      description,
                      date,
                      maxSubscribers,
                      imageUrl));

                  Navigator.of(context).pop();
                } else {
                  Scaffold.of(context).showSnackBar(
                      SnackBar(content: Text('Failed to create event')));
                }
              },
              child: Text('Submit'),
            ),
          ],
        ));
  }
}
