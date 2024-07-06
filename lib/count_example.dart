import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providercounterapp/provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}
class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Count Example'),
      ),
      body:Center(
      child:
         Consumer<CountProvider>(builder:(context, countProvider, child) {

          return Text(
            'Count: ${countProvider.count}',
            style: TextStyle(fontSize: 24),
          );
         }
      ),
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
    child: Icon(Icons.add),
      ),
    );
  }
}
