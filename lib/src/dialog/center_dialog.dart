import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_two/src/theme/app_theme.dart';

class CenterDialog {
  static void showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(
            "Please fill in all fields or email or password is wrong",
            style: TextStyle(
              fontFamily: AppTheme.fontFamilyPoppins,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              height: 1.5,
              letterSpacing: 0.5,
              color: AppTheme.dark_grey,
            ),
          ),
          content: Text(message,
            style: TextStyle(
              fontFamily: AppTheme.fontFamilyPoppins,
              fontSize: 16,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.normal,
              height: 1.5,
              letterSpacing: 0.5,
              color: Colors.black,
            ),),
          actions: [
            Container(
              padding: EdgeInsets.all(16),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Ok",
                  style: TextStyle(
                    fontFamily: AppTheme.fontFamilyPoppins,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    height: 1.5,
                    letterSpacing: 0.5,
                    color: Colors.black,
                    decoration: TextDecoration.none
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
