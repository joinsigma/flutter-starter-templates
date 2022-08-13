import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'My Quiz',
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
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Quiz'),
      ),
      body: Container(
        color: Colors.blue[100],
        child: Center(
          child: Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Question 1',
                  style: const TextStyle(
                      fontSize: 35.0, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 250,
                  alignment: Alignment.center,
                  child: Text(
                    "Question description",
                    style: const TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: Container(
                        height: 40,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Text(
                          'TRUE',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      onTap: () {
                        /**
                         * Todo:
                         * - if user selected 'True', they should be navigated to the second screen
                         *
                         * Hint:
                         * - you may use Navigator.push() to trigger screens switching
                         */
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        height: 40,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Text(
                          'FALSE',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      onTap: () {
                        /**
                         * Todo:
                         * - if user selected 'False', they should be navigated to the second screen
                         *
                         * Hint:
                         * - you may use Navigator.push() to trigger screens switching
                         */
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Switch to next question, reset to first question if comes to end of the question
        },
        child: const Text('Next'),
      ),
    );
  }
}

