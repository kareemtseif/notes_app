import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      textColor: Colors.black,
      color: kPrimaryColor,
      minWidth: MediaQuery.of(context).size.width,
      onPressed: () {},
      child: const Text(
        'Add',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
