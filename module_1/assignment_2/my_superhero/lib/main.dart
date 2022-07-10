import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'My Superhero',
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
   *  - Given a list of superhero, define a counter for indexing later.
   * 
   * Hint:
   *  - counter should be int, and be initialized to 0
   */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Superhero'),
        centerTitle: true,
      ),

      /**
       * Todo:
       *  - place the superhero image in the center of the screen
       *  - use counter defined previously to access the given superhero list
       *  - upon tapping on the image, a second screen should be displayed with superhero name in AppBar and image in the center of the screen
       * 
       * Hint:
       *  - Center() widget places its child at the center of the given space
       *  - GestureDetector() offers 'onTap' property which triggers a function when its child is clicked
       *  - Navigator.push(context, route) helps in screens switching.
       *  - Second screen displays superhero name at AppBar, image at the center of body
       */
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: const Text('Next'),
        onPressed: () {
          /**
           * Todo:
           *  - write a function that shows next superhero upon clicking on 'Next' FAB
           * 
           * Hint:
           *  - setState((){}) can be used to trigger the rebuild of the widget tree
           *  - update the counter so that next superhero will be displayed
           *  - at the end of list, reset the counter so that first superhero will be redisplayed
           */
        },
      ),
    );
  }
}
