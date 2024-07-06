import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providercounterapp/count_example.dart';
import 'package:providercounterapp/provider/count_provider.dart';
import 'package:providercounterapp/provider/slider_provider.dart';
import 'package:providercounterapp/slider_example.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
ChangeNotifierProvider(create: (context) => CountProvider()),
ChangeNotifierProvider(create: (context) => SliderProvider()),
        ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: sliderexample(),
      ),
    );

  }
}