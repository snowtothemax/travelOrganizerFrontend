import 'package:flutter/material.dart';
import 'package:namer_app/areas/locations/main.dart';
import 'package:namer_app/areas/general/generalWidgets.dart';
import 'package:namer_app/areas/general/screenListItems.dart';
import 'package:namer_app/areas/locations/main.dart';
import 'package:namer_app/areas/trips/createTrips.dart';

class TripsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
        backButtonIcon: Icons.arrow_back,
        forwardButtonIcon: Icons.add,
        forwardButtonLabel: "",
        backButtonLabel: "",
        forwardButtonOnPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateTripScreen()),
          );
        },
        pageTitle: "Trips",
        child: ListView(children: [
          ListItemWidget(isEditMode: false, elements: [
            SelectableListItemWidget(
              title: "Max",
              content: "Max",
              footer: "Max",
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LocationsScreen()),
                )
              },
            ),
          ]),
        ]));
  }
}
