import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/slideLeftRoute.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_auth_ui/slideRightRoute.dart';
import 'package:flutter_auth_ui/signUpPage.dart';
import 'package:flutter_auth_ui/loginPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: camel_case_types
class loginSignUpPage extends StatefulWidget {
  @override
  _loginSignUpPageState createState() => _loginSignUpPageState();
}

// ignore: camel_case_types
class _loginSignUpPageState extends State<loginSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child:SingleChildScrollView(
          child:Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 150, bottom: 40),
                child: Center(
                  child: Text(
                    "Hello",
                    style: GoogleFonts.sourceCodePro(
                      fontSize: 50,
                    ),
                  ),
                ),
              ),

              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(behavior: HitTestBehavior.opaque,
                    onTap: (){
                      Navigator.push(
                          context,
                          SlideRightRoute(
                            page: signUpPage(),
                          )
                      );
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * .10,
                      width: MediaQuery.of(context).size.width * .45,
                      decoration: BoxDecoration(
                        color: Colors.green[700],
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                        )
                      ),
                      child: Padding(padding: EdgeInsets.only(right:8, top:8,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(padding: EdgeInsets.only(bottom: 8, top: 8),
                              child: Text("Sign Up",
                                style: GoogleFonts.sourceCodePro(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        )
                      )
                    ),
                  ),
                  Spacer(),
                  GestureDetector(behavior: HitTestBehavior.opaque,
                    onTap: (){
                    Navigator.push(
                      context,
                      SlideLeftRoute(
                        page: LoginPage(),

                        ),
                      );
                    },

                    child: Container(
                        height: MediaQuery.of(context).size.height * .10,
                        width: MediaQuery.of(context).size.width * .45,
                        decoration: BoxDecoration(
                            color: Colors.blue[700],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)
                            )
                        ),
                        child: Padding(padding: EdgeInsets.only(right:8, top:8,),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(padding: EdgeInsets.only(bottom: 8, top: 8),
                                  child: Text("Sign In",
                                    style: GoogleFonts.sourceCodePro(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            )
                        )
                    ),
                  )
                ],
              ),
              // End Row


              Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(
                      right: 6,
                      bottom: 0,
                    ),
                      child:Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Color(0xffDB4437),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                            child: FaIcon(
                            FontAwesomeIcons.googlePlusG,
                            color:Colors.white,
                          )
                        ),
                      ),
                    ),

                    Padding(padding: EdgeInsets.only(
                        right: 6,
                        bottom: 0
                    ),
                      child:Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.twitter,
                              color:Colors.white,
                            )
                        ),
                      ),
                    ),

                    Padding(padding: EdgeInsets.only(
                        right: 6,
                        bottom: 0
                    ),
                      child:Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Color(0xff123456),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.facebookF,
                              color:Colors.white,
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
