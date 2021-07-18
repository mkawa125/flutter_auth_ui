import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class signUpPage extends StatefulWidget {
  @override
  _signUpPageState createState() => _signUpPageState();
}

// ignore: camel_case_types
class _signUpPageState extends State<signUpPage> {
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();

  // Defining string variable
  String email;
  String name;
  String password;

  // Defining boolean variables
  bool _passwordVisible;
  bool _isLoading;

  // Instantiate state variables
  void initState(){
    _passwordVisible = false;
    _isLoading = false;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                behavior: HitTestBehavior.opaque,
                child: Padding(
                  padding: EdgeInsets.only(top: 65.0),
                  child: Center(
                    child: Container(
                      height: 48,
                      width: 68,
                      decoration: BoxDecoration(
                        color: Colors.blue[700],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                  top: 19,
                  bottom: 24,
                  right: MediaQuery.of(context).size.width * .15,
                  left: MediaQuery.of(context).size.width * .15,
                ),
                child: Center(
                  child: Text("Welcome!", style: GoogleFonts.sourceCodePro(fontSize: 50),),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * .06,
                  left: MediaQuery.of(context).size.width * .06,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * .50,
                  width: MediaQuery.of(context).size.width * 100,
                  decoration: BoxDecoration(color: Colors.blue[700],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                      right: MediaQuery.of(context).size.width * .05,
                      left: MediaQuery.of(context).size.width * .05,
                    ),
                    child: Form(
                      key: _formKey1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 20,
                              top: 20
                            ),
                            child: Text("Sign Up",
                              style: GoogleFonts.sourceCodePro(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w500,

                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(
                              left: 6,
                              right: 6,
                            ),
                            child: TextFormField(cursorColor: Colors.white,
                              style: TextStyle(color: Colors.white,),
                              decoration: InputDecoration(
                                hintText: "Enter your name",
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.5,
                                ),
                                labelText: "Name",
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              onChanged: (value){
                                setState(() {
                                  name = value;
                                });
                              },
                              validator: (value){
                                if(value.isEmpty || value.length < 4){
                                  return "Please enter correct values";
                                }
                                return null;
                              }
                            ),
                          ),

                        //  Next form field

                          Padding(
                            padding: EdgeInsets.only(
                              top: 25,
                              left: 6,
                              right: 6,
                            ),
                            child: TextFormField(cursorColor: Colors.white,
                                style: TextStyle(color: Colors.white,),
                                decoration: InputDecoration(
                                  hintText: "Enter your email",
                                  hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1.5,
                                    fontSize: 16,
                                  ),
                                  labelText: "Email",
                                  labelStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                onChanged: (value){
                                  setState(() {
                                    email = value;
                                  });
                                },
                                validator: (value){
                                  bool emailValid = RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$') as bool;
                                  if(value.isEmpty || value.length < 4 || !emailValid){
                                    return "Please enter correct values";
                                  }
                                  return null;
                                }
                            ),
                          ),

                          // Third form field
                          Padding(
                            padding: EdgeInsets.only(
                              left: 6,
                              right: 6,
                              top: 25
                            ),
                            child: TextFormField(cursorColor: Colors.white,
                                style: TextStyle(color: Colors.white,),
                                obscureText: !_passwordVisible,
                                decoration: InputDecoration(
                                  suffixIcon: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                    child: Icon(_passwordVisible?
                                        Icons.visibility
                                        : Icons.visibility_off
                                    ),
                                  ),
                                  hintText: "Enter your password",
                                  hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1.5,
                                  ),
                                  labelText: "Password",
                                  labelStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                onChanged: (value){
                                  setState(() {
                                    password = value;
                                  });
                                },
                                validator: (value){
                                  if(value.length < 6){
                                    return "Password should be at least 6 characters";
                                  }
                                  return null;
                                }
                            ),
                          ),

                          GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 30,
                              ),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                    )
                                  ],
                                  shape: BoxShape.circle,

                                ),
                                child: _isLoading?
                                SpinKitFadingCircle(color: Colors.blue) : Icon(Icons.arrow_forward, color:Colors.blue),
                              ),
                            ),

                            onTap: (){
                              print("Checking credentials");
                              setState(() {
                                _isLoading = true;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
