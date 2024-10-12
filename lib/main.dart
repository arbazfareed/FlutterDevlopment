import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// A StatefulWidget to handle dynamic state changes
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

// The State class
class _MyAppState extends State<MyApp> {
  bool showcontainer = false; // Initially, the container is hidden

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Flutter Development'),
          ),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Wrap "Hi" in GestureDetector to make it clickable
              GestureDetector(
                onTap: () {
                  setState(() {
                    showcontainer = !showcontainer; // Toggle the container visibility
                  });
                },
                child: Text(
                  'Hi',
                  style: TextStyle(
                    fontSize: 24,        // Set the font size
                    color: Colors.red,    // Set the text color
                  ),
                ),
              ),
              SizedBox(height: 20), // Add some space

              // Show the container with a text field when 'showcontainer' is true
              if (showcontainer)
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Write something...',
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}


// Shortcut guide:
// ctr + / -> for comments
// stf + Enter  -> Generates StatefulWidget in Android Studio
// alt + enter  -> Quick fixes or wrapping in widgets
// ctrl + space -> Shows code suggestions
