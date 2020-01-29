import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:move_to_background/move_to_background.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _moveToBackground = '-';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String moveToBackground;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      await MoveToBackground.moveToBackground();
      moveToBackground = "ok";
    } on PlatformException {
      moveToBackground = 'Failed to move to background.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _moveToBackground = moveToBackground;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin Move to Background Example app'),
        ),
        body: Center(
          child: Text('Moving to background: $_moveToBackground\n'),
        ),
      ),
    );
  }
}
