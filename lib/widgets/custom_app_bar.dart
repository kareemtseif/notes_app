import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon_button.dart';

AppBar customAppBar({
  required IconData icon,
  required String title,
  void Function()? onPressed,
}) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Text(title, style: const TextStyle(fontSize: 28)),
    ),
    actions: [
      CustomIconButton(
        onPressed: onPressed,
        icon: icon,
      )
    ],
  );
}
