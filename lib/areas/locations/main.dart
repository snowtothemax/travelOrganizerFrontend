import 'package:flutter/material.dart';
import 'package:namer_app/areas/general/generalWidgets.dart';
import 'package:namer_app/areas/general/screenListItems.dart';

class LocationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
        backButtonLabel: "Back",
        forwardButtonLabel: "Next",
        pageTitle: "Trip Title",
        child: ListView(children: [
          ListItemWidget(elements: [
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
