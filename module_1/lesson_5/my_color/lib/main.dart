import 'package:flutter/material.dart';
import 'dart:math' as math show Random;

void main() {
  runApp(
    MaterialApp(
      title: 'My Color',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Switching'),
      ),

      /**
         * Todo:
         *  - set the container color using given color list
         * 
         * Hint:
         *  - 'color' property can be used to modify container color
         */

      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /**
           * Todo:
           *  - reassign the counter with a random value
           *  - trigger rebuild of the widget tree to refresh color displayed
           * 
           * Hint:
           *  - setState() can be used to trigger rebuild of widget tree
           *  - math.Random().nextInt(max) can be used to obtain random int value
           *  - the random value obtained should not exceed the length of the given list
           */
        },
        tooltip: 'Switch Color',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

// Given a list of container color
List<Color> containerColor = [
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.green,
  Colors.blue,
  Colors.indigo,
  Colors.purple,
];
