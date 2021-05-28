import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

class HelloWorld extends StatelessWidget {
  final width = window.physicalSize.width;
  final height = window.physicalSize.height;

  // JsonDecoder("{name: 1, a"}")

  final String filePath = r"..\assets\RapidPlatformInitConfing.json";


  _getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width.toString();
  }

  _getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height.toString();
  }

  @override
  Widget build(BuildContext context) {
    // var args = ModalRoute.of(context).settings
    return Scaffold(
      appBar: AppBar(
        title: Text("HelloWorld"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/love.png'),
            Text(
              "屏幕的宽:" + _getWidth(context),
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "屏幕的高:" + _getHeight(context),
              style: TextStyle(fontSize: 20),
            ),

            // FutureBuilder(
            //   future: DefaultAssetBundle.of(context)
            //       .loadString('assets/RapidPlatformInitConfing.json'),
            //   builder: (context, snapshot) {
            //     // ignore: deprecated_member_use
            //     var mydata = JSON.decode(snapshot.data.toString());
            //
            //     return ListView.builder(
            //       itemBuilder: (BuildContext context, int index) {
            //         return Card(
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.stretch,
            //             children: <Widget>[
            //               Text("Name:" + mydata[index]["name"]),
            //               Text("Age:" + mydata[index]["age"]),
            //               Text("Height:" + mydata[index]["height"]),
            //               Text("Hair:" + mydata[index]["hair_color"]),
            //               Text("Gender:" + mydata[index]["gender"]),
            //             ],
            //           ),
            //         );
            //       },
            //       itemCount: mydata == null ? 0 : mydata.length,
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );

    // return Rou;
    // return Center(
    //   // child: DecoratedBox(
    //   //   decoration: BoxDecoration(
    //   //     image: DecorationImage(
    //   //       image: AssetImage("images/love.png")
    //   //     )
    //   //   ),
    //     child: Image.asset('assets/love.png'),
    //   );
  }
}
