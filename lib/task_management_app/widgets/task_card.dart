import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String taskType = 'UI Design Kit';
  final String taskTitle = 'Website home page design';
  final String taskDescription =
      'Make a page display about service for website company with blue and red colors.';
  final String deadLineText = 'Deadline 20 Act. 16 days left';


  const TaskCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.indigo[50],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              taskType,
              style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(taskTitle,
              style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Colors.blue[900], fontWeight: FontWeight.w500)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(taskDescription),
          ),
          SizedBox(
            height: 24,
            child: Stack(
              children: const [
                Positioned(
                  left: 0,
                  child: CircleAvatar(
                    radius: 12,
                  ),
                ),
                Positioned(
                  left: 14,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.red,
                  ),
                ),
                Positioned(
                  left: 28,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.green,
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Progress'),
              Text('%50'),
            ],
          ),
          const LinearProgressIndicator(
            value: 0.5,
            backgroundColor: Colors.white,
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(14),
            width: 280,
            height: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: const Icon(
                      Icons.check,
                      size: 12,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    deadLineText,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Icon(
                    Icons.attach_file,
                    size: 14,
                  ),
                  Text(
                    "4 Attachment",
                    style: TextStyle(fontSize: 12),
                  ),
                  Spacer(),
                  Icon(
                    Icons.chat_outlined,
                    size: 14,
                  ),
                  Text(
                    "10 Comments",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
