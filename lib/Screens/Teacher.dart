import 'package:flutter/material.dart';

class Teacher extends StatefulWidget {
  const Teacher({super.key});

  @override
  State<Teacher> createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      child: MaterialApp(home:Scaffold(body: Center(child: Text("Teacher"),),) ),
    );

  }
}
