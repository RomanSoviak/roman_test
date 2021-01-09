import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            "Examples",
          ), //TODO add flutter_intl for supporting localizations
        ),
        body: ListView.builder(
          itemCount: examples.length,
          itemBuilder: (_, i) {
            return ExampleItem(
              title: examples.keys.toList()[i],
              onItemClicked: examples.values.toList()[i],
            );
          },
        ),
      );
}
