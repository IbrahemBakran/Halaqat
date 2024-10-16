import 'package:flutter/material.dart';


class Admin extends StatefulWidget {
  const Admin({super.key});

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      child: MaterialApp(home:Scaffold(body: Center(child: Text("Admin"),),) ),
    );

  }
}
