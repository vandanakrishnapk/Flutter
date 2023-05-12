import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
   CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
int counter=0;

incrementCounter(){
  setState(() {
    counter++;
  });

  print(counter);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have pushed the button this many times'),
            Text('$counter',style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: incrementCounter,child: Icon(Icons.add)),
    );
  }
}
