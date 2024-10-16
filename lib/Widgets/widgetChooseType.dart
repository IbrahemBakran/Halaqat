import 'package:flutter/material.dart';
import 'package:halaqatapp/Function/navigator.dart';
import 'package:halaqatapp/Screens/Login.dart';

class widgetChooseType extends StatefulWidget {
  const widgetChooseType( this.urlImage,  this.nameTypeUse, this.typeUser,  {super.key});
final urlImage ;
final nameTypeUse ;
final  typeUser ;

  @override
  State<widgetChooseType> createState() => _widgetChooseTypeState();
}

class _widgetChooseTypeState extends State<widgetChooseType> {
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        login(context,widget.typeUser);
        setState(() {});

      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(
            widget.urlImage,

          ),
            opacity: 0.3,
            fit: BoxFit.cover,
            repeat: ImageRepeat.repeat,),
          color: Color(0xFF3d83db),
          borderRadius: BorderRadius.circular(25),
        ),
        height: 50,
        width: 200 ,

        child: Center(
          child: Text(
            widget.nameTypeUse,
            style: TextStyle(
              fontFamily: 'Sans',
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.white,
            ),
          ),
        ),

      ),
    );
  }
}
