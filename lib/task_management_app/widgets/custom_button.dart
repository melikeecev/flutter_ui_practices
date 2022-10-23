import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Icon icon;

  const CustomButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: icon,
      style: OutlinedButton.styleFrom(
        shape: CircleBorder(),
        padding: EdgeInsets.all(12),
      ),
    );
  }
}