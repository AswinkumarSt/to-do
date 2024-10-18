
import 'package:flutter/material.dart';
import 'package:todoapp/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
   const_addTask(){
    return Container(
      child: TextField(
        decoration: InputDecoration(
          hintText: "Add Task",
          border: OutlineInputBorder(),
        ),
      ),
    )
  }
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("TO DO"),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView(
        children: [

          ToDoTile(
            taskName: "learn Dart",
            taskCompleted: true,
            onChanged: (p0) {
              
            },
          ),
          ToDoTile(
            taskName: "Excercise dart",
            taskCompleted: false,
            onChanged: (p0) {
              
            },
          ),
          ToDoTile(
            taskName: "test Dart",
            taskCompleted: false,
            onChanged: (p0) {
              
            },
          ),
        ],
      ),  
      floatingActionButton: FloatingActionButton(onPressed:() {
        
      },
      child:const Icon(Icons.add),
      ),
    );
  }
}