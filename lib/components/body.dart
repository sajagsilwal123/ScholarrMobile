import 'package:flutter/material.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print('THE HEIGHT OF THE SCREEN IS : ${size.height}');
    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Image.network('https://image.shutterstock.com/image-vector/cute-kid-teen-boy-show-260nw-1509139481.jpg',
              width: size.width* 0.3,)
          )
        ],
      ),
    );
  }
}
