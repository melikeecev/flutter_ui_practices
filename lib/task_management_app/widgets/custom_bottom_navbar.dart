import 'package:flutter/material.dart';

class customBottomNavBar extends StatelessWidget {
  const customBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home_filled,
              size: 28,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.folder_copy_outlined),
          ),
          CircleAvatar(
            child: Icon(
              Icons.add,
            ),
            foregroundColor: Colors.white,
            minRadius: 26,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
