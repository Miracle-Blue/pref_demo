import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pref_demo/log_in_page.dart';

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
  TextEditingController _passwordController = TextEditingController();
  bool _isObscur = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
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
                ),
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
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
                ),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
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
                ),
                child: TextField(
                  controller: _phoneController,
                  decoration: InputDecoration(
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
                ),
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
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
                ),
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
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
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.height / 2),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Create",
                  style: GoogleFonts.mcLaren(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 120,
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
