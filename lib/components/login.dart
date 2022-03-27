import 'package:flutter/material.dart';


class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Center(
                      child:Text(
                        'LOGIN',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500]
                        ),
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                  ),
                ],
              )
          ),
          const SizedBox(height: 70,),
          Container(
            width: 350,
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.white30,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    //borderSide: BorderSide(color: Colors.grey)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    //borderSide: BorderSide(color: Colors.grey)
                  ),
                  labelText: 'USERNAME',
                  labelStyle: const TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                  prefixIcon: const Icon(Icons.email_rounded, color: Colors.white70,)
              ),
              style: const TextStyle(color: Colors.white70),
            ),
          ),
          const SizedBox(height: 30,),
          Container(
            width: 350,
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white30,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: 'PASSWORD',
                labelStyle: const TextStyle(
                  color:Colors.white70,
                  fontWeight: FontWeight.bold,
                ),
                prefixIcon: Icon(Icons.lock, color: Colors.white70,),
              ),
              style: TextStyle(color: Colors.white70),
              obscureText: true,
            ),
          ),
          const SizedBox(height: 10,),
          Container(
              alignment: Alignment(1.0, 0.0),
              padding: EdgeInsets.only(top: 15, left: 10, right: 40),
              child: InkWell(
                child: const Text("FORGOT PASSWORD?",
                  style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white70,
                      decorationThickness: 2
                  ),
                ),
                onTap: (){print('FORGOT PASSWORD PRESSED');},
              )
          ),
          SizedBox(height: 70,),
          Container(
            height: 45,
            width: 300,
            child: ElevatedButton(
              onPressed: (){print("LOGIN BUTTON PRESSED");},
              child: Text('LOGIN',
                style: TextStyle(
                    fontSize: 20
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
          SizedBox(height: 30,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                const InkWell(
                  child: Text("Don't have an account?  ",
                    style: TextStyle(
                        color: Colors.white70
                    ),
                  ),
                ),
                InkWell(
                  child: Text('Sign Up',
                    style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                        decorationColor: Colors.white70
                    ),
                  ),
                  onTap: (){print('SIGNUP Button Pressed');},
                )
              ],
            ),
          )
        ],
      ),
      backgroundColor: Colors.black26,
    );
  }
}
