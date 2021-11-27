import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice_two/src/theme/app_theme.dart';

class CustomAppBar extends StatelessWidget {
  final Widget leading;
  final double leadingWidth;
  final double elevation;
  final Color backgroundColor;
  final Color shadowColor;
  final String title;
  final Function() onTap;


  CustomAppBar({
    required this.leading,
    this.leadingWidth = 44,
    this.elevation = 1,
    this.backgroundColor = AppTheme.white,
    this.shadowColor = AppTheme.light_grey,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(8),
            child: SvgPicture.asset(
              "assets/icons/left_back.svg",
            ),
          ),
        ),
      ),
      shadowColor: shadowColor,
      backgroundColor: backgroundColor,
      title: Text(
        title,
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
    );
  }
}
