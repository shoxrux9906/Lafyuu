import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice_two/src/dialog/center_dialog.dart';
import 'package:practice_two/src/theme/app_theme.dart';
import 'package:practice_two/src/ui/auth/registration_screen.dart';
import 'package:practice_two/src/ui/main_screen.dart';
import 'package:practice_two/src/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State {
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  bool _obscureText = true;
  String email = "";

  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 72),
            child: SvgPicture.asset("assets/icons/logo.svg"),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Welcome to Lafyuu",
            style: TextStyle(
              fontFamily: AppTheme.fontFamilyPoppins,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              height: 1.5,
              letterSpacing: 0.5,
              color: AppTheme.dark_grey,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Sign in to continue",
            style: TextStyle(
              fontFamily: AppTheme.fontFamilyPoppins,
              fontSize: 12,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.normal,
              height: 1.8,
              letterSpacing: 0.5,
              color: AppTheme.normal_grey,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.only(top: 28, right: 16, left: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: AppTheme.light_grey,
                width: 1,
              ),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Image.asset("assets/images/email_transparent.png"),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: TextFormField(
                    controller: _controller1,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Your Email",
                      hintStyle: TextStyle(
                        fontFamily: AppTheme.fontFamilyPoppins,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,
                        height: 1.8,
                        letterSpacing: 0.5,
                        color: AppTheme.normal_grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 12),
            margin: EdgeInsets.only(top: 8, right: 16, left: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: AppTheme.light_grey,
                width: 1,
              ),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Image.asset("assets/images/password.png"),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: TextFormField(
                    controller: _controller2,
                    obscuringCharacter: "*",
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: TextStyle(
                        fontFamily: AppTheme.fontFamilyPoppins,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,
                        height: 1.8,
                        letterSpacing: 0.5,
                        color: AppTheme.normal_grey,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              _getData();
            },
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 56,
              margin: EdgeInsets.only(top: 16, right: 16, left: 16),
              decoration: BoxDecoration(
                color: AppTheme.blue,
                borderRadius: BorderRadius.circular(5),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: AppTheme.blue,
                    blurRadius: 4,
                    offset: Offset(0.0, 5.0),
                  ),
                ],
              ),
              child: Text(
                "Sign in",
                style: TextStyle(
                  fontFamily: AppTheme.fontFamilyPoppins,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  height: 1.8,
                  letterSpacing: 0.5,
                  color: AppTheme.white,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, right: 16, left: 16),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 16),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: AppTheme.light_grey,
                  ),
                ),
                Text(
                  "OR",
                  style: TextStyle(
                    fontFamily: AppTheme.fontFamilyPoppins,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    height: 1.5,
                    letterSpacing: 0.5,
                    color: AppTheme.normal_grey,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 16),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: AppTheme.light_grey,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, right: 16, left: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: AppTheme.light_grey,
                width: 1,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/google.png"),
                Expanded(
                  child: Text(
                    "Login with Google",
                    style: TextStyle(
                      fontFamily: AppTheme.fontFamilyPoppins,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      height: 1.8,
                      letterSpacing: 0.5,
                      color: AppTheme.normal_grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8, right: 16, left: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: AppTheme.light_grey,
                width: 1,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/facebook.png"),
                Expanded(
                  child: Text(
                    "Login with facebook",
                    style: TextStyle(
                      fontFamily: AppTheme.fontFamilyPoppins,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      height: 1.8,
                      letterSpacing: 0.5,
                      color: AppTheme.normal_grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                fontFamily: AppTheme.fontFamilyPoppins,
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                height: 1.5,
                letterSpacing: 0.5,
                color: AppTheme.blue,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8, bottom: 112),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have a account? ",
                  style: TextStyle(
                    fontFamily: AppTheme.fontFamilyPoppins,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    height: 1.5,
                    letterSpacing: 0.5,
                    color: AppTheme.normal_grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegistrationScreen()),
                    );
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontFamily: AppTheme.fontFamilyPoppins,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      height: 1.5,
                      letterSpacing: 0.5,
                      color: AppTheme.blue,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _getData() async {
    if (await Utils.isValid(_controller1.text, _controller2.text)) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return MainScreen();
          },
        ),
      );
      _controller1.text = "";
      _controller2.text = "";
    } else {
      CenterDialog.showErrorDialog(context,
          "All fields are not filled,Please fill in all the fields or enter correct email or password!!!");
    }
  }
}
