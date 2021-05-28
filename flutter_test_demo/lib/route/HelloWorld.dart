import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // var args = ModalRoute.of(context).settings

    // return Rou;
    return Center(
      // child: DecoratedBox(
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage("images/love.png")
      //     )
      //   ),
        child: Image.asset('assets/love.png'),
      );
  }
}
