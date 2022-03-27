import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black26,
      body: Column(
        children: <Widget>[
          Stack(
              children:<Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0, 110, 0, 0),
                  child: const Center(
                    child: Text("Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50
                      ),
                    ),
                  ),
                ),
              ]
          ),
          SizedBox(height: 60,),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Container(
                  width: 145,
                  height: 40,
                  child: TextFormField(

                    decoration: InputDecoration(
                        fillColor: Colors.white30,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'First Name',
                        labelStyle:const TextStyle(
                            color:Colors.white70
                        )
                    ),
                    style: TextStyle(color: Colors.white70),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 145,
                  height: 40,
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.white30,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'Last Name',
                        labelStyle:const TextStyle(
                          color:Colors.white70,
                        )
                    ),
                    style: const TextStyle(color: Colors.white70),
                    textAlign: TextAlign.center,
                  ),
                ),
              ]
          ),
          SizedBox(height: 30,),
          Container(
            height: 40,
            width: 300,
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.white30,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: 'Email',
                  labelStyle:const TextStyle(
                      color:Colors.white70
                  )
              ),
              style: const TextStyle(color: Colors.white70,),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: 40,
            width: 300,
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.white30,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: 'Password',
                  labelStyle:const TextStyle(
                    color:Colors.white70,
                  )
              ),
              style: TextStyle(color: Colors.white70),
              obscureText: true,
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: 40,
            width: 300,
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.white30,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: 'Confirm Password',
                  labelStyle:const TextStyle(
                    color:Colors.white70,
                  )
              ),
              style: const TextStyle(color: Colors.white70),
              obscureText: true,
            ),
          ),
          SizedBox(height: 60,),
          Container(
            height: 30,
            width: 250,
            child: ElevatedButton(
              onPressed: (){print("REGISTER BUTTON PRESSED");},
              child: const Text('REGISTER',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                ),),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )
                  )
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Already have an account?   ',
                  style: TextStyle(
                      color: Colors.white70
                  ),
                ),
                InkWell(
                  child: const Text('Login Here',
                    style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white70,
                        fontSize: 15
                    ),
                  ),
                  onTap: (){print('Login Button (INKWELL) Pressed');},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
