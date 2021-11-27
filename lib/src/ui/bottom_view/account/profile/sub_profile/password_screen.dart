import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice_two/src/dialog/center_dialog.dart';
import 'package:practice_two/src/theme/app_theme.dart';
import 'package:practice_two/src/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PasswordScreen extends StatefulWidget {
  final Function(String info) changePassword;

  PasswordScreen({
    required this.changePassword,
  });

  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();

  bool _obscureText1 = true;
  bool _obscureText2 = true;
  bool _obscureText3 = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      appBar: AppBar(
        backgroundColor: AppTheme.white,
        elevation: 1,
        shadowColor: AppTheme.light_grey,
        leadingWidth: 44,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(8),
            child: SvgPicture.asset("assets/icons/left_back.svg"),
          ),
        ),
        title: Text(
          "Change Password",
          style: TextStyle(
            fontFamily: AppTheme.fontFamilyPoppins,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            letterSpacing: 0.5,
            height: 1.5,
            color: AppTheme.dark_grey,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Old Password",
              style: TextStyle(
                fontFamily: AppTheme.fontFamilyPoppins,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                letterSpacing: 0.5,
                height: 1.5,
                color: AppTheme.dark_grey,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 16, right: 12),
              margin: EdgeInsets.only(top: 12),
              width: MediaQuery.of(context).size.width,
              height: 48,
              decoration: BoxDecoration(
                border: Border.all(color: AppTheme.light_grey, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Image.asset("assets/images/password.png"),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: _controller1,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        hintText: "Enter old passsword",
                        hintStyle: TextStyle(
                          fontFamily: AppTheme.fontFamilyPoppins,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          height: 1.8,
                          letterSpacing: 0.5,
                          color: AppTheme.normal_grey,
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        fontFamily: AppTheme.fontFamilyPoppins,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        height: 1.8,
                        letterSpacing: 0.5,
                        color: AppTheme.normal_grey,
                      ),
                      obscureText: _obscureText1,
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
            SizedBox(
              height: 24,
            ),
            Text(
              "New Password",
              style: TextStyle(
                fontFamily: AppTheme.fontFamilyPoppins,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                letterSpacing: 0.5,
                height: 1.5,
                color: AppTheme.dark_grey,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 16, right: 12),
              margin: EdgeInsets.only(top: 12),
              width: MediaQuery.of(context).size.width,
              height: 48,
              decoration: BoxDecoration(
                border: Border.all(color: AppTheme.light_grey, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Image.asset("assets/images/password.png"),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: _controller2,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        hintText: "Enter new passsword",
                        hintStyle: TextStyle(
                          fontFamily: AppTheme.fontFamilyPoppins,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          height: 1.8,
                          letterSpacing: 0.5,
                          color: AppTheme.normal_grey,
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        fontFamily: AppTheme.fontFamilyPoppins,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        height: 1.8,
                        letterSpacing: 0.5,
                        color: AppTheme.normal_grey,
                      ),
                      obscureText: _obscureText2,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          _obscureText2 = !_obscureText2;
                        },
                      );
                    },
                    child: Icon(
                      _obscureText2 ? Icons.visibility_off : Icons.visibility,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "New Password",
              style: TextStyle(
                fontFamily: AppTheme.fontFamilyPoppins,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                letterSpacing: 0.5,
                height: 1.5,
                color: AppTheme.dark_grey,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 16, right: 12),
              margin: EdgeInsets.only(top: 12),
              width: MediaQuery.of(context).size.width,
              height: 48,
              decoration: BoxDecoration(
                border: Border.all(color: AppTheme.light_grey, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Image.asset("assets/images/password.png"),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: _controller3,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        hintText: "Enter new passsword",
                        hintStyle: TextStyle(
                          fontFamily: AppTheme.fontFamilyPoppins,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          height: 1.8,
                          letterSpacing: 0.5,
                          color: AppTheme.normal_grey,
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        fontFamily: AppTheme.fontFamilyPoppins,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        height: 1.8,
                        letterSpacing: 0.5,
                        color: AppTheme.normal_grey,
                      ),
                      obscureText: _obscureText3,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText3 = !_obscureText3;
                      });
                    },
                    child: Icon(
                      _obscureText3 ? Icons.visibility_off : Icons.visibility,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                _getData();
                _saveDate(_controller2.text);
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 24),
                width: MediaQuery.of(context).size.width,
                height: 56,
                decoration: BoxDecoration(
                  color: AppTheme.blue,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: AppTheme.blue,
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Save",
                    style: TextStyle(
                      fontFamily: AppTheme.fontFamilyPoppins,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0.5,
                      height: 1.8,
                      color: AppTheme.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _getData() async {
    if (await Utils.isValidPasNew(_controller1.text)) {
      if (_controller2.text == _controller3.text) {
        String s = "";
        for (int i = 0; i < _controller2.text.length; i++) {
          s += "*";
        }
        widget.changePassword(
          s,
        );
        Navigator.pop(context);
      }
      _controller1.text = "";
      _controller2.text = "";
    } else {
      CenterDialog.showErrorDialog(context, "Password is wrong");
    }
  }

  Future<void> _saveDate(String newPassword) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("newPassword", newPassword);
  }
}
