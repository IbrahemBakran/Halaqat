import 'package:flutter/material.dart';
import '../Widgets/widgetChooseType.dart';

class SelectTypeUse extends StatefulWidget {
  @override
  State<SelectTypeUse> createState() => _SelectTypeUse();
}

class _SelectTypeUse extends State<SelectTypeUse> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView (
            child: Align(
              alignment: AlignmentDirectional(0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 300,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/family.png'),
                            fit: BoxFit.fitWidth)),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: Container(
                          width: 331.1,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          child: Align(child: Text (" تسجيل الدخول كـ ",style: TextStyle(color: Colors.black,fontSize: 40,fontFamily: 'Sans',),)),
                        ),
                      ),
                      const SizedBox(height: 20),
                      widgetChooseType( 'assets/images/555.png'  , 'مشرف الحلقات',1),
                      const SizedBox(height: 20),
                      widgetChooseType( 'assets/images/555.png'  , 'مدرس بالحلقات',2),
                      const SizedBox(height: 20),
                      widgetChooseType( 'assets/images/555.png'  , 'ولي أمر الطالب', 3),
                      const SizedBox(height: 20),
                      const SizedBox(height: 30,)
                    ],
                  ),

                ],
              ),
            )) ,
      );
  }
}
