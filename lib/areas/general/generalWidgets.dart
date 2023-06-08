import 'package:flutter/material.dart';

//#region CustomAppBar

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String pageTitle;
  final IconData backButtonIcon;
  final IconData forwardButtonIcon;
  final VoidCallback? backButtonOnPressed;
  final VoidCallback? forwardButtonOnPressed;
  final Widget child;
  final String forwardButtonLabel;
  final String backButtonLabel;

  const CustomAppBar({
    Key? key,
    required this.pageTitle,
    required this.backButtonIcon,
    required this.forwardButtonIcon,
    required this.forwardButtonLabel,
    required this.backButtonLabel,
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
            ? TextButton.icon(
                icon: Icon(backButtonIcon),
                onPressed: backButtonOnPressed,
                label: Text(backButtonLabel),
              )
            : null,
        actions: [
          if (forwardButtonOnPressed != null)
            TextButton.icon(
                icon: Icon(forwardButtonIcon),
                onPressed: forwardButtonOnPressed,
                label: Text(forwardButtonLabel)),
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