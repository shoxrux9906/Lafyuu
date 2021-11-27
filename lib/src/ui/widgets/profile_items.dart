import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice_two/src/theme/app_theme.dart';
import 'package:practice_two/src/ui/bottom_view/account/profile/sub_profile/gender_screen.dart';

class ProfileItems extends StatelessWidget {
  final SvgPicture icon1;
  final String name;
  final String type;
  final SvgPicture icon2;
  final Function() onTap;

  ProfileItems({
    required this.icon1,
    required this.name,
    required this.type,
    required this.icon2,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        margin: EdgeInsets.only(left: 16, right: 16),
        color: Colors.transparent,
        child: Row(
          children: [
            icon1,
            SizedBox(
              width: 16,
            ),
            Text(
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
            // Spacer(),
            Expanded(
              child: Text(
                type,
                style: TextStyle(
                  fontFamily: AppTheme.fontFamilyPoppins,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0.5,
                  height: 1.8,
                  color: AppTheme.normal_grey,
                ),
                textAlign: TextAlign.end,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            SvgPicture.asset(
              "assets/icons/prf_right.svg",
            ),
          ],
        ),
      ),
    );
  }
}
