import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(
                  horizontal: 16, vertical: 2),
              child: const TextFieldWidget(
                inputBorder: InputBorder.none,
                myIcon: Icon(Ionicons.search_outline),
                hintText: 'Enter your destination',
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 2),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Ionicons.calendar_outline,
                        ),
                        hintText: 'Dates',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 2),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Ionicons.apps_outline,
                        ),
                        hintText: 'Rooms',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(
                  horizontal: 16, vertical: 2),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Ionicons.people_outline,
                  ),
                  hintText: 'Guest',
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.indigoAccent[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Search hotel'.toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.myIcon,
    required this.hintText,
    required this.inputBorder,
  }) : super(key: key);

  final Icon myIcon;
  final String hintText;
  final InputBorder inputBorder;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: inputBorder,
        icon: myIcon,
        hintText: hintText,
      ),
    );
  }
}