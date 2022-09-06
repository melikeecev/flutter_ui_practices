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
            const InputContainer(
              textFieldWidget: TextFieldWidget(
                myIcon: Icon(Ionicons.search_outline),
                hintText: 'Enter your destination',
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: const [
                Expanded(
                  child: InputContainer(
                    textFieldWidget: TextFieldWidget(
                      myIcon: Icon(Ionicons.calendar_outline),
                      hintText: 'Dates',
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: InputContainer(
                    textFieldWidget: TextFieldWidget(
                      myIcon: Icon(Ionicons.apps_outline),
                      hintText: 'Rooms',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const InputContainer(
              textFieldWidget: TextFieldWidget(
                myIcon: Icon(Ionicons.people_outline),
                hintText: 'Guest',
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

class InputContainer extends StatelessWidget {
  const InputContainer({
    Key? key,
    required this.textFieldWidget,
  }) : super(key: key);

  final TextFieldWidget textFieldWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      child: textFieldWidget,
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.myIcon,
    required this.hintText,
  }) : super(key: key);

  final Icon myIcon;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        icon: myIcon,
        hintText: hintText,
      ),
    );
  }
}
