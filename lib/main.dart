import 'package:flutter/material.dart';
import 'package:flutter_project1/second_screen.dart';

void main() {
  runApp(const MyApp());
}

// The main application widget
class MyApp extends StatelessWidget {
  // Constructor for MyApp
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // MaterialApp is the root widget that holds the entire app
    return const MaterialApp(
      home: FirstScreen(),
    );
  }
}

// The first screen widget
class FirstScreen extends StatelessWidget {
  // Constructor for FirstScreen
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SafeArea ensures content is not obscured by device status bar or navigation bar
    return SafeArea(
      // Scaffold provides the basic structure of the visual interface
      child: Scaffold(
        backgroundColor: Colors.green,
        // Center widget centers its child both vertically and horizontally
        appBar: AppBar(
         title: Center(child: Text('A P N I   D U K A A N')),
         backgroundColor: Colors.blue,


        ),


        body: Center(
          // Column widget arranges its children in a vertical array
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, // Align children in the center horizontally
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Align children in the center vertically
            children: [
              // Icon widget displays a material design icon
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                      boxShadow: [
                        BoxShadow(
                        color: Colors.grey,
                        blurRadius: 20.2,
                        offset: Offset(2.0,2.0),
                        ),
                      ],
                    ),

                    child: const Icon(Icons.shopping_cart, size: 135, color: Colors.tealAccent,)),
              ),
              // ElevatedButton is a button with a Material-style raised surface
              ElevatedButton(
                onPressed: () {
                  // Navigate to the SecondScreen when the button is pressed
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SecondScreen()));
                },
                child: const Text('Start Shopping', style: TextStyle(color: Colors.blue,


                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}