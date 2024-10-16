import 'package:flutter/material.dart';
import '../Widgets/widgetChooseType.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  // GlobalKey<FormState>fromstate = GlobalKey();
  // TextEditingController admin_username = TextEditingController();
  // TextEditingController admin_password = TextEditingController();

  bool _ispasswordValidated = false;
  bool _isuserValidated = false;
  var passwordVisible = true;
  var   indexUI = 0 ;
  // Crud curd = Crud() ;

  // login () async {
  //   var response = await curd.postRequest(linkLoginA, {
  //     "admin_username" : admin_username.text ,
  //     "admin_password" : admin_password.text ,
  //   });
  //   if (response ['status'] =="success"){
  //
  //     print("login");
  //     // sharedPref.setString("student_id", response['data']['student_id'].toString());
  //     // sharedPref.setString("parent_username", response['data']['parent_username']);
  //     // sharedPref.setString("parent_password", response['data']['parent_password']);
  //     SelectAdmin1(context); }
  //   else{ showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       icon: const Icon(
  //         Icons.crisis_alert_sharp,
  //         color: Colors.blue,
  //       ),
  //       title: const Text(
  //         "حاول مرة أخرى",
  //         textAlign: TextAlign.center,
  //         style: TextStyle(
  //           fontFamily: 'Sans',
  //           color: Colors.black,
  //           fontWeight: FontWeight.bold,
  //           fontSize: 15,
  //         ),
  //       ),
  //       actions: <Widget>[
  //         Center(
  //           child: Column(
  //             children: [
  //               Container(
  //                 margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
  //                 padding: EdgeInsetsDirectional.fromSTEB(
  //                     30, 5, 30, 10),
  //                 child: InkWell(
  //                   onTap: () {
  //                     setState(() {
  //                       Navigator.pop(context);
  //                     });
  //                   },
  //                   child: Container(
  //                     width: 250,
  //                     height: 50,
  //                     decoration: BoxDecoration(
  //                       color: Colors.blue,
  //                       borderRadius:
  //                       BorderRadius.circular(25),
  //                     ),
  //                     child: Align(
  //                       alignment: AlignmentDirectional(0, 0),
  //                       child: Text(
  //                         'موافق',
  //                         style: TextStyle(
  //                           fontFamily: 'Sans',
  //                           fontWeight: FontWeight.bold,
  //                           color: Colors.white,
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         )
  //       ],
  //     ),
  //   );}
  // }
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
                      const Text(
                        "تطبيق حلقات القرآن",
                        style: TextStyle(
                          fontFamily: 'Sans',
                          color: Color(0xFF3d83db),
                          fontSize: 26,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                        color:
                                            Color.fromRGBO(143, 148, 251, .2),
                                        blurRadius: 20.0,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Form(
                                // key: fromstate,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Enter a valid ueser';
                                          }
                                          return null;
                                        },
                                        keyboardType: TextInputType.text,
                                        // controller: admin_username,
                                        // onChanged: (val) {
                                        //   setState(() {
                                        //     _isuserValidated = true;
                                        //   });
                                        // },
                                        style: TextStyle(
                                          fontFamily: 'Sans',
                                        ),
                                        textAlign: TextAlign.end,
                                        decoration: InputDecoration(
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.red),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                  color: _isuserValidated
                                                      ? Colors.green
                                                      : Colors.blue),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: _isuserValidated
                                                      ? Colors.green
                                                      : Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            border: InputBorder.none,
                                            hintText: "اسم المستخدم",
                                            hintStyle: TextStyle(
                                                color: Colors.grey[400])),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        onChanged: (val) {
                                          setState(() {
                                            _ispasswordValidated = true;
                                          });
                                        },

                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Enter a valid password';
                                          }
                                          return null;
                                        },
                                        // controller: admin_password,
                                        style: const TextStyle(
                                          fontFamily: 'Sans',
                                        ),
                                        textAlign: TextAlign.end,
                                        decoration: InputDecoration(
                                          errorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.red),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                                color: _ispasswordValidated
                                                    ? Colors.green
                                                    : Colors.blue),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                                color: _ispasswordValidated
                                                    ? Colors.green
                                                    : Colors.grey),
                                          ),
                                          border: InputBorder.none,
                                          hintText: "كلمة السر",
                                          hintStyle: TextStyle(
                                              color: Colors.grey[400]),
                                          prefixIcon: IconButton(
                                            icon: Icon(
                                                passwordVisible
                                                    ? Icons.visibility_off
                                                    : Icons.visibility,
                                                size: 25),
                                            onPressed: () {
                                              setState(() {
                                                passwordVisible =
                                                    !passwordVisible;
                                              });
                                            },
                                          ),
                                        ),
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        obscureText: passwordVisible,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            InkWell(
                              onTap: () async {
                                // setState(() {
                                //   if (fromstate.currentState!.validate()){}
                                // });
                                // await login() ;
                              },
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFF3d83db),
                                ),
                                child: const Center(
                                  child: Text(
                                    "تسجيل الدخول",
                                    style: TextStyle(
                                        fontFamily: 'Sans',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "نسيت كلمة السر ؟",
                              style: TextStyle(
                                fontFamily: 'Sans',
                                color: Color(0xFF3d83db),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
          ],
        ),
      )),
    );
  }
}
