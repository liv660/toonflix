import 'package:flutter/material.dart';

class StateApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<StateApp> {
  //Ex 1) Click Event
  int counter = 0;

  void onClicked() {
    setState(() => counter++);
  }

  //Ex 2)
  List<int> numbers = [];
  void onClicked2() {
    setState(() {
      numbers.add(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style: TextStyle(fontSize: 30),
              ),
              /* Ex 1)
              Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 30,
                ),  // TextStyle
              ) */ // Text
              // Ex 2)
              for (var n in numbers) Text('$n'),
              IconButton(
                  iconSize: 40,
                  onPressed: onClicked2, //onClicked
                  icon: const Icon(Icons.add_box_rounded)),
            ],
          ),
        ),
      ),
    );
  }
}
