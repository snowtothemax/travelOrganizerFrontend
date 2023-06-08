import 'package:flutter/material.dart';
import 'package:namer_app/areas/general/generalWidgets.dart';
import 'package:namer_app/areas/general/screenListItems.dart';

class LocationsScreen extends StatefulWidget {
  @override
  State<LocationsScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationsScreen> {
  var isEditMode = false;

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
        backButtonIcon: Icons.arrow_back,
        forwardButtonIcon: !isEditMode ? Icons.edit : Icons.edit_off,
        forwardButtonLabel: "",
        backButtonLabel: "",
        forwardButtonOnPressed: () => setState(() {
              isEditMode = !isEditMode;
            }),
        pageTitle: "Trip Title",
        child: ListView(children: [
          ListItemWidget(isEditMode: isEditMode, elements: [
            SelectableListItemWidget(
              title: "Max",
              content: "Max",
              footer: "Max",
              onTap: () => {debugPrint("Hey")},
            ),
          ]),
        ]));
  }
}
