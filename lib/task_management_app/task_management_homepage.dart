import 'package:flutter/material.dart';

import 'widgets/custom_appbar.dart';
import 'widgets/custom_bottom_navbar.dart';
import 'widgets/custom_button.dart';
import 'widgets/task_card.dart';

class TaskManagementHomePage extends StatefulWidget {
  const TaskManagementHomePage({Key? key}) : super(key: key);

  @override
  State<TaskManagementHomePage> createState() => _TaskManagementHomePageState();
}

class _TaskManagementHomePageState extends State<TaskManagementHomePage> {
  final String _welcomeTitle = 'Hey, David Boon';
  final String welcomeSubtitle = 'Are you ready to get back to your workplace?';
  final String spaceType1 = 'Workspace';
  final String spaceType2 = 'Running Task';
  final String spaceName1 = 'Techcare Design';
  final String createdDate = '21 Oct 2022';

  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(200), child: CustomAppBar()),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 12, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _welcomeTitle,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  welcomeSubtitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.grey[600]),
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  spaceType1,
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: Colors.grey[700], fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    spaceName1,
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                  const CustomButton(icon: Icon(Icons.arrow_forward)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Text(keys.dateSpace + createdDate),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  spaceType2,
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: Colors.grey[700], fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (content, index) {
                    return const Padding(
                      padding: EdgeInsets.only(
                          top: 8, left: 0, right: 16, bottom: 8),
                      child: TaskCard(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const customBottomNavBar(),
      ),
    );
  }
}

class ProjectKeys {
  final String dateSpace = "Created Date: ";
}
