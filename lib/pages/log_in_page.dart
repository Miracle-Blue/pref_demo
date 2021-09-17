import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pref_demo/pages/sign_up_page.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  static final String id = "log_in_page";

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  TextEditingController _emailController = TextEditingController();
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Image(
                  image: AssetImage('assets/images/img.png'),
                  width: 250,
                  height: 280,
                ),
              ),
              Text(
                "Welcome back!",
                style: GoogleFonts.mcLaren(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Log in to your existent account of Q Allure",
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
                    prefixIcon: Icon(FeatherIcons.user),
                  ),
                ),
              ),
              SizedBox(height: 10),
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
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {},
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Forget password?",
                    style: GoogleFonts.mcLaren(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
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
                  "Log In",
                  style: GoogleFonts.mcLaren(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Or connect using",
                style: GoogleFonts.mcLaren(color: Colors.grey.shade600),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: TextButton.icon(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue.shade900,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      icon: Icon(
                        AntIcons.facebookFilled,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {},
                      label: Text(
                        "Facebook",
                        style: GoogleFonts.mcLaren(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextButton.icon(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        AntIcons.googleOutlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      label: Text(
                        "Google",
                        style: GoogleFonts.mcLaren(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: GoogleFonts.mcLaren(color: Colors.black),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, SignUpPage.id);
                    },
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Sign Up",
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
