import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice_two/src/theme/app_theme.dart';
import 'package:practice_two/src/ui/bottom_view/cart/cart_screen.dart';
import 'package:practice_two/src/ui/bottom_view/explore/explore_screen.dart';
import 'package:practice_two/src/ui/bottom_view/offert/offer_screen.dart';
import 'package:practice_two/src/ui/bottom_view/home/home_screen.dart';
import 'package:practice_two/src/ui/bottom_view/account/account_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State {
  int _selectedIndex = 0;
  List<Widget> screensList = [
    HomeScreen(),
    ExploreScreen(),
    CartScreen(),
    OfferScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screensList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppTheme.blue,
        unselectedLabelStyle: TextStyle(
          fontFamily: AppTheme.fontFamilyPoppins,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal,
          fontSize: 10,
          height: 1.5,
          letterSpacing: 0.5,
          color: AppTheme.normal_grey,
        ),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                "assets/icons/home.svg",
                color: AppTheme.blue,
              ),
              icon: SvgPicture.asset(
                "assets/icons/home.svg",
              ),
              label: "Home"),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              "assets/icons/search2.svg",
              color: AppTheme.blue,
            ),
            icon: SvgPicture.asset("assets/icons/search2.svg"),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              "assets/icons/cart2.svg",
              color: AppTheme.blue,
            ),
            icon: SvgPicture.asset("assets/icons/cart2.svg"),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              "assets/icons/offer.svg",
              color: AppTheme.blue,
            ),
            icon: SvgPicture.asset("assets/icons/offer.svg"),
            label: "Offer",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              "assets/icons/user2.svg",
              color: AppTheme.blue,
            ),
            icon: SvgPicture.asset("assets/icons/user2.svg"),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
