import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'custom_bottom_nav.dart';
import 'scrolling_hotel_list.dart';
import 'search_card.dart';

class BookingHomePage extends StatefulWidget {
  const BookingHomePage({Key? key}) : super(key: key);

  @override
  State<BookingHomePage> createState() => _BookingHomePageState();
}

class _BookingHomePageState extends State<BookingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 16,
              right: 16,
              bottom: 64,
              top: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hello, Melike',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Let\'s find the best\nhotel for you',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: SearchCard(),
                  ),
                  Row(
                    children: const [
                      Text(
                        'Top Searches Hotel',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text('See All'),
                      Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ScrollingHotelList(),
                ],
              ),
            ),
            const Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: CustomBottomNav(),
            ),
            Positioned(
              right: 16,
              top: 16,
              child: Row(
                children: [
                  Badge(
                    child: const Icon(Ionicons.notifications_outline),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const CircleAvatar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}





