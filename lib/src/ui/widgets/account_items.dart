import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice_two/src/theme/app_theme.dart';

class AccountItems extends StatelessWidget {
  final SvgPicture icon;
  final String name;
  final Function() onTap;

  AccountItems({
    required this.icon,
    required this.name,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(right: 16, left: 16),
        width: MediaQuery.of(context).size.width,
        height: 56,
        child: Row(
          children: [
            icon,
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Text(
                name,
                style: TextStyle(
                  fontFamily: AppTheme.fontFamilyPoppins,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0.5,
                  height: 1.5,
                  color: AppTheme.dark_grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
