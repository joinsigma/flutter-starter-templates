import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /**
       * Todo:
       *  - create an AppBar that shows Superhero with preferred AppBar color
       *  
       * Hint:
       *  - AppBar() widget provides control over application bar
       *  - 'title' property takes in a widget that used to show appBar title
       *  - 'backgroundColor' property helps to modify AppBar color
       */
      appBar: AppBar(),

      /**
       * Todo:
       *  - Replace the background color as your preferred color
       *  - Place image of superhero in the center of the screen
       * 
       * Hint:
       *  - Container() can be equipped with various colors
       *  - Center() widget helps to center its child widget
       *  - Image.network() can be used to display image from network source
       */
      body: Container(),

      /**
       * Todo:
       *  - create a FAB that says Next
       *  - as current workaround, trigger an empty function when FAB is clicked
       * 
       * Hint:
       *  - 'floatingActionButton' property in Scaffold helps to construct a FAB
       *  - FloatingActionButton() widget helps to create a simple button that always float on the page
       */
    );
  }
}
