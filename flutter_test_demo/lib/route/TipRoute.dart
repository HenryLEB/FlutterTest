import 'package:flutter/material.dart';

class TipRoute extends StatelessWidget {
  final String text;

  TipRoute({ Key ? key, required this.text}) : super(key: key);


  // TipRoute({
  //   required this.text,  // 接收一个text参数
  // }); 是

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("提示"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: [
              Text(text),
              ElevatedButton(onPressed: () => Navigator.pop(context, "我是返回值"),
              child: Text("返回"),)
            ],
          ),
        ),
      ),
    );
  }
}
