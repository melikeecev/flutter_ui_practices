import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Ionicons.home_outline),
              SizedBox(
                height: 4,
              ),
              Text(
                'Home',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Ionicons.heart_outline),
              SizedBox(
                height: 4,
              ),
              Text(
                'Favorites',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Ionicons.notifications_outline),
              SizedBox(
                height: 4,
              ),
              Text(
                'Notifications',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Ionicons.bookmark_outline),
              SizedBox(
                height: 4,
              ),
              Text(
                'Booking',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Ionicons.person_outline),
              SizedBox(
                height: 4,
              ),
              Text(
                'Profile',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}