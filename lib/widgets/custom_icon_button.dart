import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    this.icon,
  });
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xff3D3D3D),
      ),
      height: 50,
      width: 50,
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon ?? Icons.search,
          size: 28,
        ),
      ),
    );
  }
}
