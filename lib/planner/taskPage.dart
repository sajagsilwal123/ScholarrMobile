import 'package:flutter/material.dart';
import 'package:scholarr/planner/tplanner.dart';
import 'package:scholarr/planner/taskCard.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start
                ,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(20),
                      child:
                      Row(
                        children:  <Widget>[
                          InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context)=>TPlanner()
                                  )
                              );
                              print('Go Back to Planner List PRESSED');
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  top: 0,
                                  bottom: 0,
                                  left: 5,
                                  right: 15
                              ),
                              child: Image(
                                image: AssetImage('assets/images/backArrow.png'),
                                height: 24,
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              onSubmitted: (value){print('The value is : $value');},
                              decoration: const InputDecoration(
                                  hintText: "Enter Task Title",
                                  border: InputBorder.none
                              ),
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 6.0,
                    ),
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: "Enter Description for the task",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 24
                        )
                      ),
                    ),
                  ),
                  ToDoList(text: 'HCI Lab Sheet', isDone: false),
                  ToDoList(isDone:true),
                  ToDoList(isDone: false,),
                  ToDoList(isDone: false),
                ],
              ),
              Positioned(
                right: 24,
                bottom: 20,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context)=>TaskPage()
                        )
                    );
                    print('Go to PRESSED');
                  },
                  child: Container(
                    height: 50, width: 60,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Image(
                        image: AssetImage('assets/images/delete.png'),
                        height: 10,
                      )
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
