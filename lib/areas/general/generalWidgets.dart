import 'package:flutter/material.dart';

//#region CustomAppBar

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String pageTitle;
  final String backButtonLabel;
  final String forwardButtonLabel;
  final VoidCallback? backButtonOnPressed;
  final VoidCallback? forwardButtonOnPressed;
  final Widget child;

  const CustomAppBar({
    Key? key,
    required this.pageTitle,
    required this.backButtonLabel,
    required this.forwardButtonLabel,
    this.backButtonOnPressed,
    this.forwardButtonOnPressed,
    required this.child,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
        leading: backButtonOnPressed != null
            ? IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: backButtonOnPressed,
              )
            : null,
        actions: [
          if (forwardButtonOnPressed != null)
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: forwardButtonOnPressed,
            ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: child,
      ),
    );
  }
}
//#endregion CustomAppBar