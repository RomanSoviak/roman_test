import 'package:flutter/material.dart';
import 'package:roman_test/example_item.dart';
import 'package:roman_test/examples/chat/chat_screen.dart';

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
  Map<String, Function> _examples;

  @override
  void initState() {
    super.initState();
    _examples = {
      "Chat": () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ChatScreen(),
          ),
        );
      }
    };
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            "Examples",
          ), //TODO add flutter_intl for supporting localizations
        ),
        body: ListView.builder(
          itemCount: _examples.length,
          itemBuilder: (_, i) {
            return ExampleItem(
              title: _examples.keys.toList()[i],
              onItemClicked: _examples.values.toList()[i],
            );
          },
        ),
      );
}
