import 'package:coffeeui/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:ui';

import 'package:flutter/widgets.dart';


Future<void> main() async {
  var myErrorsHandle;
  await myErrorsHandle.initialize();
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    var myErrorsHandles;
    myErrorsHandles.onErrorDetails(details);
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    myErrorsHandle.onError(error, stack);
     return true;
  };
  runApp(const MyApp());
}

// void main() {
  
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  get widget => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      home: const HomePage(),
      
       builder: (context, widget){
        Widget error = const Text('...rendering');
        if (widget is Scaffold || Widget is GestureDetector) {
          error = Scaffold(body: Center(child: error));
        }
        ErrorWidget.builder = (errorDetails) => error;
        if(widget != null) return widget;
        // ignore: dead_code
        throw StateError('widget is null');
       },


     
    );
  }
}
