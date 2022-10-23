import 'package:flutter/material.dart';

import 'custom_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButton(icon: Icon(Icons.apps)),
          CustomButton(icon: Icon(Icons.notifications_none_outlined)),
        ],
      ),
    );
  }
}