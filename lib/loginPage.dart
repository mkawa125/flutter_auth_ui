import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

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
                      width: 48,
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
              )
            ],
          ),
        ),
      )
    );
  }
}
