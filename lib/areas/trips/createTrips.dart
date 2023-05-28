import 'package:flutter/material.dart';
import 'package:namer_app/areas/general/generalWidgets.dart';

class CreateTripScreen extends StatefulWidget {
  @override
  _CreateTripScreenState createState() => _CreateTripScreenState();
}

class _CreateTripScreenState extends State<CreateTripScreen> {
  String _name = '';
  String _description = '';
  String _locations = '';
  String _persons = '';

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      backButtonLabel: "Back",
      forwardButtonLabel: "Next",
      pageTitle: "Create Trip",
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
              ),
              onChanged: (value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Description',
              ),
              onChanged: (value) {
                setState(() {
                  _description = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Locations',
              ),
              onChanged: (value) {
                setState(() {
                  _locations = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Persons',
              ),
              onChanged: (value) {
                setState(() {
                  _persons = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Save the Trip object to the database
                saveTrip();
              },
              child: Text('Create Trip'),
            ),
          ],
        ),
      ),
    );
  }

  void saveTrip() {
    // Save the Trip object to the database using the entered information
    // You can implement the logic to save the Trip object here
    // For demonstration purposes, let's print the entered data
    print('Name: $_name');
    print('Description: $_description');
    print('Locations: $_locations');
    print('Persons: $_persons');
  }
}
