import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.verticalPadding = 16,
    required this.hintText,
  });
  final double verticalPadding;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kPrimaryColor,
        ),
        contentPadding:
            EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 16),
        enabledBorder: border(Colors.white),
        focusedBorder: border(),
      ),
    );
  }
}

OutlineInputBorder border([Color? color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(
      color: color ?? kPrimaryColor,
    ),
  );
}
