import 'package:flutter/material.dart';
import 'package:flutter_test_demo/route/TipRoute.dart';

class RouterTestRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: Center(
            child: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pushNamed(context, "/helloWorld");
              },
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                var result = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return TipRoute(text: "我是提示的");
                }));
                print("路有返回值: $result");
              },
              child: Text("打开提示页"),
            ),
            ElevatedButton(
              onPressed: ()  {
                Navigator.pushNamed(context, "/jsonData");
              },
              child: Text("JSON文件解析"),
            ),
          ],
        ),
      ),
    );
  }
}
