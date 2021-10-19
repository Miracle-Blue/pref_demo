import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pref_demo/model/user_model.dart';
import 'package:pref_demo/pages/home_page.dart';
import 'package:pref_demo/pages/log_in_page.dart';
import 'package:pref_demo/services/pref_service.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static final String id = "sign_up_page";

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController1 = TextEditingController();
  TextEditingController _passwordController2 = TextEditingController();
  bool _isObscur = false;
  bool isFull = false;

  void _clear() {
    Prefs.removeUser();
    _emailController.clear();
    _passwordController1.clear();
    _passwordController2.clear();
    _nameController.clear();
    _phoneController.clear();
  }


  void _doSignUp(bool _isFull) {
      String email = _emailController.text.toString().trim();
      String password_1 = _passwordController1.text.toString().trim();
      String password_2 = _passwordController2.text.toString().trim();
      String name = _nameController.text.toString().trim();
      String pNumber = _phoneController.text.toString().trim();

      User user =
      User(email: email, password: password_1, name: name, pNumber: pNumber);
      Prefs.storeUser(user);

      setState(() {
        isFull =
                email.length != 0 &&
                password_1.length != 0 &&
                password_2.length != 0 &&
                pNumber.length != 0 &&
                name.length != 0;
      });

      if (isFull && password_1 == password_2) {
        Navigator.pushReplacementNamed(context, HomePage.id);
      } else {
        setState(() {
          _clear();
        });
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          iconSize: 30,
            icon: Icon(FeatherIcons.arrowLeft),
            color: Colors.black,
            onPressed: () => Navigator.pushReplacementNamed(context, LogInPage.id),
          ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Let's get Started!",
                style: GoogleFonts.mcLaren(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Create an account to Q Allure to get all features",
                style: GoogleFonts.mcLaren(color: Colors.grey.shade600),
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.height / 2),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      offset: Offset(0, 2),
                      spreadRadius: 1,
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 22,
                  ),
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: "Full Name",
                    hintStyle: TextStyle(
                        color: Colors.grey.shade400
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.height / 2),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        )),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.height / 2),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(FeatherIcons.user),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.height / 2),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      offset: Offset(0, 2),
                      spreadRadius: 1,
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 22,
                  ),
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(
                        color: Colors.grey.shade400
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.height / 2),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        )),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.height / 2),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(FeatherIcons.mail),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.height / 2),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      offset: Offset(0, 2),
                      spreadRadius: 1,
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 22,
                  ),
                  controller: _phoneController,
                  decoration: InputDecoration(
                    hintText: "Phone number",
                    hintStyle: TextStyle(
                      color: Colors.grey.shade400
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.height / 2),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        )),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.height / 2),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(FeatherIcons.phone),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.height / 2),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      offset: Offset(0, 2),
                      spreadRadius: 1,
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 22,
                  ),
                  controller: _passwordController1,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: Colors.grey.shade400
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.height / 2),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        )),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.height / 2),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(FeatherIcons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscur = !_isObscur;
                        });
                      },
                      icon: _isObscur
                          ? Icon(FeatherIcons.eyeOff)
                          : Icon(FeatherIcons.eye),
                    ),
                  ),
                  obscureText: _isObscur,
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.height / 2),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      offset: Offset(0, 2),
                      spreadRadius: 1,
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 22,
                  ),
                  controller: _passwordController2,
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(
                        color: Colors.grey.shade400
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.height / 2),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        )),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.height / 2),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(FeatherIcons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscur = !_isObscur;
                        });
                      },
                      icon: _isObscur
                          ? Icon(FeatherIcons.eyeOff)
                          : Icon(FeatherIcons.eye),
                    ),
                  ),
                  obscureText: _isObscur,
                ),
              ),
              SizedBox(height: 50),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height / 2),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.shade300,
                      offset: Offset(0, 2),
                      spreadRadius: 1,
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    backgroundColor: Colors.blue.shade700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.height / 2),
                    ),
                  ),
                  onPressed: () {
                    _doSignUp(isFull);
                  },
                  child: Text(
                    "Create",
                    style: GoogleFonts.mcLaren(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: GoogleFonts.mcLaren(color: Colors.black),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, LogInPage.id);
                    },
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "LogIn here",
                        style: GoogleFonts.mcLaren(
                          color: Colors.blue,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
