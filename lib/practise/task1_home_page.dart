import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_17/practise/task_1.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double location = 0;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
        actions: [
          IconButton(
              onPressed: () async {
                location = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Task1(
                      location: location,
                    ),
                  ),
                );
              },
              icon: Icon(Icons.home))
        ],
      ),
    );
  }
}
