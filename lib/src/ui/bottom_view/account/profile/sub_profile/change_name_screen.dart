import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice_two/src/theme/app_theme.dart';

class ChangeNameScreen extends StatefulWidget {
  final String fullName;
  final Function(String info) changeInfo;

  ChangeNameScreen({
    required this.fullName,
    required this.changeInfo,
  });

  @override
  _ChangeNameScreenState createState() => _ChangeNameScreenState();
}

class _ChangeNameScreenState extends State<ChangeNameScreen> {
  TextEditingController _firstName = TextEditingController();
  TextEditingController _lastName = TextEditingController();

  @override
  void initState() {
    _firstName.text = widget.fullName.split(" ")[0];
    _lastName.text = widget.fullName.split(" ")[1];
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
          "Name",
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
              "First Name",
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
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.only(left: 16, right: 12),
              width: MediaQuery.of(context).size.width,
              height: 48,
              decoration: BoxDecoration(
                border: Border.all(color: AppTheme.light_grey, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                controller: _firstName,
                decoration: InputDecoration(
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
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Last Name",
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
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.only(left: 16, right: 12),
              width: MediaQuery.of(context).size.width,
              height: 48,
              decoration: BoxDecoration(
                border: Border.all(color: AppTheme.light_grey, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                controller: _lastName,
                decoration: InputDecoration(
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
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                widget.changeInfo(_firstName.text + " " + _lastName.text);
                Navigator.pop(context);
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
}
