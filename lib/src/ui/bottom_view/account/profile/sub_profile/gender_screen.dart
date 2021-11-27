import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice_two/src/theme/app_theme.dart';

class GenderScreen extends StatefulWidget {
  String gender;
  final Function(String gender) changeGender;

  GenderScreen({required this.gender, required this.changeGender});

  @override
  _GenderScreenState createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  String _gender = "Male";

  @override
  void initState() {
    _gender = widget.gender;
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
          "Gender",
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
              "Choose Gender",
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
                border: Border.all(
                  color: AppTheme.light_grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "$_gender",
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
                  PopupMenuButton<String>(
                    icon: SvgPicture.asset("assets/icons/drop_down.svg"),
                    enabled: true,
                    onSelected: (value) {
                      setState(() {
                        _gender = value;
                      });
                    },
                    itemBuilder: (BuildContext context) => [
                      PopupMenuItem(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Male",
                            style: TextStyle(
                              fontFamily: AppTheme.fontFamilyPoppins,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              height: 1.8,
                              letterSpacing: 0.5,
                              color: AppTheme.normal_grey,
                            ),
                          ),
                        ),
                        value: "Male",
                      ),
                      PopupMenuItem(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Female",
                            style: TextStyle(
                              fontFamily: AppTheme.fontFamilyPoppins,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              height: 1.8,
                              letterSpacing: 0.5,
                              color: AppTheme.normal_grey,
                            ),
                          ),
                        ),
                        value: "Female",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                widget.changeGender(_gender);
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
