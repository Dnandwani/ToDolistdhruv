// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:todolist/Logout.dart';
import 'package:todolist/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyToDo(),
    );
  }
}

class MyToDo extends StatefulWidget {
  const MyToDo({super.key});

  @override
  State<MyToDo> createState() => _MyToDoState();
}

class _MyToDoState extends State<MyToDo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("ToDo"),
            SizedBox(
              height: 10,
              width: 20,
            ),
            Icon(
              Icons.supervised_user_circle_outlined,
              color: Colors.white,
              size: 50,
            )
          ],
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 50,
            ),
            ListTile(
              title:
                  Text("Dhruv Nandwani", style: TextStyle(color: Colors.white)),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => MyLogin()));
                },
                child: ListTile(
                  title: Text("Your Tasks"),
                  textColor: Colors.white,
                )),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Logout()));
              },
              child: ListTile(
                title: Text("Logout"),
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyLogin()));
          },
          child: Icon(
            Icons.add,
            color: Colors.blue,
          )),
      backgroundColor: Colors.black,
    );
  }
}
