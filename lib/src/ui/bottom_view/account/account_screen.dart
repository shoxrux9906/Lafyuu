import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice_two/src/theme/app_theme.dart';
import 'package:practice_two/src/ui/bottom_view/account/profile/profile_screen.dart';
import 'package:practice_two/src/ui/widgets/account_items.dart';

class AccountScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AccountScreenState();
  }
}

class _AccountScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      appBar: AppBar(
        elevation: 1,
        shadowColor: AppTheme.light_grey,
        backgroundColor: AppTheme.white,
        title: Text(
          "Account",
          style: TextStyle(
            fontFamily: AppTheme.fontFamilyPoppins,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            letterSpacing: 0.5,
            height: 1.5,
            color: AppTheme.dark_grey,
          ),
          // textAlign: TextAlign.start,
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AccountItems(
              icon: SvgPicture.asset("assets/icons/user.svg"),
              name: "Profile",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ProfileScreen();
                    },
                  ),
                );
              },
            ),
            AccountItems(
              icon: SvgPicture.asset("assets/icons/bag.svg"),
              name: "Order",
              onTap: () {},
            ),
            AccountItems(
              icon: SvgPicture.asset("assets/icons/location.svg"),
              name: "Address",
              onTap: () {},
            ),
            AccountItems(
              icon: SvgPicture.asset("assets/icons/credit_card.svg"),
              name: "Payment",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
