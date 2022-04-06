import 'package:flutter/material.dart';
import 'package:scholarr/models/database_helper.dart';
import 'package:scholarr/planner/taskPage.dart';
import 'package:jiffy/jiffy.dart';
import 'package:scholarr/planner/widgets.dart';



class TPlanner extends StatefulWidget {
  const TPlanner({Key? key}) : super(key: key);
  @override
  State<TPlanner> createState() => _TPlannerState();
}

class _TPlannerState extends State<TPlanner> {
   final DatabaseHelper _dbHelper = DatabaseHelper();
   // DateTime currentTime = DateTime.now();
   String month = Jiffy(DateTime.now()).format('MMMM yyyy');
   String test = 'HELLO';

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24
        ),
        width: double.infinity,
        child: Stack(
          children:[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(
                    top: 25,
                    bottom: 10,
                  ),
                  child: const Image(
                    image: AssetImage('assets/images/logo.png'),
                    width: 70,
                    height: 70,
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Planner",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40
                      ),
                    ) ,
                  ),
                ),
                Container(
                  child: Row(
                    children:  <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(left: 10, top: 20),
                        child: Image(
                          image: AssetImage('assets/images/calendar.png'),
                          height:30,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 20),
                          child: Text('$month',
                          style: TextStyle(
                            color: Colors.grey.shade300,
                            fontSize: 20
                          ),)
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: FutureBuilder(
                    initialData: const [],
                    future: _dbHelper.getTasks(),
                    builder: (context, snapshot){
                      return ScrollConfiguration(
                        behavior: NoGlowBehaviour(),
                        child: ListView.builder(
                            itemCount: (snapshot.data).toString().length,
                            itemBuilder: (context,index){
                              return TaskCard(
                                title: 'Test',
                                // title: snapshot.data[index],
                                desc: 'Dummy Dummy',
                              );
                            },
                        ),
                      );
                    },
                  ),
                ),
                ],
            ),
            Positioned(
              right: 0,
              bottom: 20,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => const TaskPage()),
                  ).then((value) {
                    setState(() {});
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),

                  ),
                    child: const Image(
                      image: AssetImage('assets/images/add.png'),
                      height: 40,
                    )
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}
