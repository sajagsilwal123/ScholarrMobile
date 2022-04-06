import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

String month = Jiffy(DateTime.now()).format('MMMM yyyy');

class TaskCard extends StatelessWidget {
  // const TaskCard({Key? key}) : super(key: key);
  final String title;
  final String desc;
  TaskCard({this.title='(NO TITLE ADDED)', this.desc='No decription Added'});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 24,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: Colors.grey.shade800,
      ),
      margin: const EdgeInsets.only(
        bottom: 20
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              desc,
            style: const TextStyle(
              color: Colors.grey,
              height: 1.4,
            ),),
          )
        ],
      ),
    );
  }
}

class ToDoList extends StatelessWidget {
  // const ToDoList({Key? key}) : super(key: key);
  final String text;
  final bool isDone;
  ToDoList({this.text='Unnamed Todo', required this.isDone});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 24
        ),
        child: Row(
          children: [
            Container(
                height: 16.0,
                width: 16.0,
                margin: const EdgeInsets.only(
                  right: 14.0
                ),
                decoration: BoxDecoration(
                  color: isDone ? Colors.black54 :Colors.transparent,
                  borderRadius: BorderRadius.circular(6),
                  border: isDone ? null : Border.all(
                    width: 1.5
                  )
                ),
                child: const Image(
                   image: AssetImage('assets/images/tick.png'),
                ),
            ),
             Text(
               text,
            style: TextStyle(
              color: isDone? Colors.grey.shade400 : Colors.grey.shade300,
              fontSize: 16,
              fontWeight: isDone? FontWeight.bold : FontWeight.w700
            ),
            ),
          ],
        ),
      ),
    );
  }
}

class NoGlowBehaviour extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}