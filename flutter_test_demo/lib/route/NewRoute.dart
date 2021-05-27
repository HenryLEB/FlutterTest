import 'package:flutter/material.dart';
import 'package:flutter_test_demo/route/RandomWords.dart';

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        child: RandomWords()
      ),
    );
  }
}

