import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:providercounterapp/provider/slider_provider.dart';

class sliderexample extends StatefulWidget {
  const sliderexample({super.key});

  @override
  State<sliderexample> createState() => _sliderexampleState();
}

class _sliderexampleState extends State<sliderexample> {


  double value = 0.5;

  @override
  Widget build(BuildContext context) {
    final sliderProvider = Provider.of<SliderProvider>(context,listen: false);

    return Scaffold(
      appBar:AppBar(
        title: Text('Slider Example'),
      ),
      body:Column(
        children: [
          Slider(
              min:0,
              max:1,
              value: sliderProvider.value, onChanged:(val){
            setState(() {
              value = val;
            });

          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.red.withOpacity(value),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green.withOpacity(value),
              ),
            ],
          )

        ],
      ),
      );
  }
}
