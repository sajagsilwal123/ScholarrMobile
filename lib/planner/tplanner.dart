import 'package:flutter/material.dart';
import 'package:scholarr/planner/taskPage.dart';
import 'package:scholarr/theme/theme.dart';
import 'package:provider/provider.dart';
import 'package:scholarr/planner/taskCard.dart';

class TPlanner extends StatefulWidget {
  const TPlanner({Key? key}) : super(key: key);

  @override
  State<TPlanner> createState() => _TPlannerState();
}

class _TPlannerState extends State<TPlanner> {
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
                Expanded(
                  child: ListView(
                    children: [
                      TaskCard(title: "Get Started",desc: "Hello Its mee",),
                      TaskCard(),
                      TaskCard(),
                      TaskCard(),
                      TaskCard()
                    ],
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
                      builder: (context)=>TaskPage()
                    )
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),

                  ),
                    child: Image(
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
