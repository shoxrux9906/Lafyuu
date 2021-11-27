import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice_two/src/theme/app_theme.dart';

class EmailScreen extends StatefulWidget {
  final String email;
  final Function(String info) changeEmail;

  EmailScreen({
    required this.email,
    required this.changeEmail,
  });

  @override
  State<StatefulWidget> createState() {
    return _EmailScreenState();
  }
}

class _EmailScreenState extends State<EmailScreen> {
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    _controller.text = widget.email;
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
          "Email",
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
              "Change Email",
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
                  Image.asset("assets/images/email_transparent.png"),
                  SizedBox(width: 12,),
                  Expanded(
                    child: TextFormField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: "Derlaxy@yahoo.com",
                        hintStyle: TextStyle(
                          fontFamily: AppTheme.fontFamilyPoppins,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
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
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                widget.changeEmail(_controller.text);
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
