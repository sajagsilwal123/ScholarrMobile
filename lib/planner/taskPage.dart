import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                    bottom: 0,
                    left: 5
                  ),
                  child: Image(
                    image: AssetImage('assets/images/backArrow.png'),
                    height: 24,
                  ),
                ),
                Expanded(
                  child: TextField(
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
