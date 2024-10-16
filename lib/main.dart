import 'package:flutter/material.dart';
import 'package:halaqatapp/Screens/SelectTypeUse.dart';
import 'package:halaqatapp/Widgets/widgetChooseType.dart';
import 'Function/navigator.dart';
import 'Screens/Login.dart';



// late SharedPreferences sharedPref ;
void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // sharedPref = await SharedPreferences.getInstance();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  // var user = TextEditingController();

  // var passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SelectTypeUse(),
    );

  }
}
