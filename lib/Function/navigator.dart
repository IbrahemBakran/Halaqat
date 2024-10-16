import 'package:flutter/material.dart';
import 'package:halaqatapp/Screens/Admin.dart';
import 'package:halaqatapp/Screens/Student.dart';
import 'package:halaqatapp/Screens/Teacher.dart';
import 'package:halaqatapp/Screens/Login.dart';
import 'package:halaqatapp/Widgets/WidgetChooseType.dart';


void login (BuildContext ctx , int typeUser) {
  Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
    return Login();
  }));
}