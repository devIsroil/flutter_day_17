import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key, required this.location});
  final double location;

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero,(){
      scrollController.animateTo(widget.location, duration: Duration(seconds: 1), curve: Curves.fastOutSlowIn);

    });
  }

  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    scrollController.addListener(() {
      print(scrollController.offset);
    });
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(onPressed: (){
            Navigator.of(context).pop(scrollController.offset);
          }, icon: Icon(Icons.keyboard_arrow_down_outlined),),
          title: Text("Task 1"),
          actions: [IconButton(onPressed: (){
            scrollController.animateTo(1000, duration: Duration(seconds: 10), curve: Curves.easeInOut);
          }, icon: Icon(Icons.add))],
        ),
        body: Transform.rotate(
          angle: 0,
          child: SingleChildScrollView(
            reverse: false,
            padding: EdgeInsets.all(20),
            physics: BouncingScrollPhysics(),
            controller: scrollController,
            child: Column(children: [...List.generate(100, (index) {
              return Card(
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(children: [Text("Salom $index")],),
                ),
              );
            })
            ],),
          ),
        ));
  }
}
