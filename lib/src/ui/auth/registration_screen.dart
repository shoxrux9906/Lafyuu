import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice_two/src/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegistrationScreenState();
  }
}

class _RegistrationScreenState extends State {
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  TextEditingController _controller3 = new TextEditingController();
  TextEditingController _controller4 = new TextEditingController();

  bool _obscureText1 = true;
  bool _obscureText2 = true;

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
            "Let’s Get Started",
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
            "Create an new account",
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
                Image.asset("assets/images/user_transparent.png"),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: TextFormField(
                    controller: _controller1,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Full Name",
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
                Image.asset("assets/images/email_transparent.png"),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: TextFormField(
                    controller: _controller2,
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
            margin: EdgeInsets.only(top: 8, right: 16, left: 16),
            padding: EdgeInsets.only(right: 12),
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
                    controller: _controller3,
                    obscureText: _obscureText1,
                    obscuringCharacter: "*",
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
                      _obscureText1 = !_obscureText1;
                    });
                  },
                  child: Icon(
                    _obscureText1 ? Icons.visibility_off : Icons.visibility,
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8, right: 16, left: 16),
            padding: EdgeInsets.only(right: 12),
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
                    controller: _controller4,
                    obscuringCharacter: "*",
                    obscureText: _obscureText2,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password Again",
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
                      _obscureText2 = !_obscureText2;
                    });
                  },
                  child: Icon(
                    _obscureText2 ? Icons.visibility_off : Icons.visibility,
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              if (_isValid()) {
                _saveData(
                  _controller1.text,
                  _controller2.text,
                  _controller3.text,
                );
                Navigator.pop(context);
              }
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
                "Sign up",
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
            margin: EdgeInsets.only(top: 24, bottom: 156),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "have a account? ",
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
                    Navigator.pop(
                      context,
                    );
                  },
                  child: Text(
                    "Sign In",
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

  Future<void> _saveData(
    String name,
    String email,
    String password,
  ) async {
    SharedPreferences preps = await SharedPreferences.getInstance();
    preps.setString("name", name);
    preps.setString("email", email);
    preps.setString("password1", password);
  }

  bool _isValid() {
    if (_controller1.text.isEmpty) {
      return false;
    } else if (_controller2.text.isEmpty) {
      return false;
    } else if (_controller3.text.isEmpty) {
      return false;
    } else if (_controller4.text.isEmpty) {
      return false;
    } else if (_controller3.text != _controller4.text) {
      return false;
    }
    return true;
  }
}
