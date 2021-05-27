import 'package:flutter_test_demo/route/NewRoute.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_demo/route/RouterTestRoute.dart';
import 'package:flutter_test_demo/route/Routes.dart';
import 'package:flutter_test_demo/route/TipRoute.dart';
import 'route/NewRoute.dart';
import 'package:english_words/english_words.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      routes: myRoutes,

      initialRoute: "/",
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            TextButton(
              // child: Text("open new route"),
              child: Text(generateWordPairs().take(1).toString()),
              onPressed: () {
               // Navigator.push(context,
               //   MaterialPageRoute(builder: (context) {
               //     return NewRoute();
               //   })
               // );
                Navigator.pushNamed(context, "/newRoute");
              }
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                   MaterialPageRoute(builder: (context) {
                     return RouterTestRouter();
                   })
                  );
                  // Navigator.pushNamed(context, "/RouterTestRoute");
                },
                child: Text("消息页面"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

