import 'package:flutter/material.dart';

class HousingHomePage extends StatefulWidget {
  const HousingHomePage({Key? key}) : super(key: key);

  @override
  State<HousingHomePage> createState() => _HousingHomePageState();
}

class _HousingHomePageState extends State<HousingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(),
                Expanded(child: Column(
                  children: [
                    Text('Location'),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.indigo,
                        ),
                        Text('Semerang City'),
                      ],
                    ),
                  ],
                ),),
              ],
            ),
            Expanded(child: Placeholder(),),
            Container(
              height: 72,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//6.39
