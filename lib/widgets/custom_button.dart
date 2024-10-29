import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, this.isLoading = false});
  final void Function()? onPressed;
  final bool isLoading;
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
      onPressed: onPressed,
      child: isLoading
          ? const CircularProgressIndicator(
              color: Colors.black,
            )
          : const Text(
              'Add',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
    );
  }
}
