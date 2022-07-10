import 'package:flutter/material.dart';
import 'dart:math' as math show Random;

void main() {
  runApp(
    MaterialApp(
      title: 'My Image',
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
  /**
   * Todo:
   *  - setup and initialize an int counter to access the given superheros images list
   */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Switching'),
      ),

      /**
         * Todo:
         *  - place the superhero image in the center of the page
         *  - certain color can be added as background color
         *  - add padding with horizontal: 25.0, vertical: 10.0
         *  - the image should have size: width=200, height=400
         * 
         * Hint:
         *  - 'color' property can be used to modify container color
         *  - Padding() widget offers padding configuration on its child
         *  - you may load the given superheros images using Image.network()
         */

      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /**
           * Todo:
           *  - when FAB is clicked, a random image from the given list should be displayed
           * 
           * Hint:
           *  - setState() can be used to trigger rebuild of widget tree
           *  - math.Random().nextInt(max) can be used to obtain random int value
           *  - the random value obtained should not exceed the length of the given list
           */
        },
        tooltip: 'Switch Image',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

// Given a list of superheros images
final List<String> superheroUrls = [
  'https://images.unsplash.com/photo-1635805737707-575885ab0820?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
  'https://images.unsplash.com/photo-1594463750939-ebb28c3f7f75?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
  'https://images.unsplash.com/photo-1640499900704-b00dd6a1103a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',
  'https://images.unsplash.com/photo-1624213111452-35e8d3d5cc18?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=726&q=80',
  'https://images.unsplash.com/photo-1559535332-db9971090158?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
];
