import 'package:flutter/material.dart';

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
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade200,
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
              color: Colors.black,
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
