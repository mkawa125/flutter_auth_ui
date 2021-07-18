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
                padding: EdgeInsets.only(top: 120, bottom: 22),
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
                      height: MediaQuery.of(context).size.height * .55,
                      width: MediaQuery.of(context).size.width * .45,
                      decoration: BoxDecoration(
                        color: Colors.blue[700],
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                        )
                      ),
                      child: Padding(padding: EdgeInsets.only(right:22, top:28,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(padding: EdgeInsets.only(bottom: 8, top: 8),
                              child: Text("Sign Up",
                                style: GoogleFonts.sourceCodePro(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8, bottom: 8.0),
                              child: Text("New Here?",
                                style: GoogleFonts.sourceCodePro(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                            ),
                            Text("Don't worry, just sign in to gain access to amazing app",
                              style: GoogleFonts.sourceCodePro(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                              ),
                              textAlign: TextAlign.right,
                            )
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
                      height: MediaQuery.of(context).size.height * .55,
                      width: MediaQuery.of(context).size.width * .45,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)
                        )
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 22,
                          right: 22,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start, children: [
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 8,
                              ),
                              child: Text(
                                "Sign In",
                                style: GoogleFonts.sourceCodePro(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, bottom:8.0),
                            child: Text("Returning?",
                              style: GoogleFonts.sourceCodePro(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, bottom:8.0),
                            child: Text("Just sign in to resume what you were doing",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.sourceCodePro(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(
                      right: 6,
                    ),
                      child:Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                            child: FaIcon(
                            FontAwesomeIcons.google,
                            color:Colors.white,
                          )
                        ),
                      ),
                    )
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
