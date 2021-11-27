import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_two/src/theme/app_theme.dart';

class OfferScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OfferScreenState();
  }
}

class _OfferScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      appBar: AppBar(
        elevation: 1,
        shadowColor: AppTheme.light_grey,
        backgroundColor: AppTheme.white,
        title: Text(
          "Offer",
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
      body: ListView(
        // padding: EdgeInsets.only(
        //   top: 70,
        //   left: 16,
        // ),
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 80,
            margin: EdgeInsets.only(
              top: 16,
              right: 16,
              left: 16,
            ),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: AppTheme.blue),
            child: Text(
              "Use “MEGSL” Cupon For\nGet 90%off",
              style: TextStyle(
                fontFamily: AppTheme.fontFamilyPoppins,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                letterSpacing: 0.5,
                height: 1.5,
                color: AppTheme.white,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, right: 16, left: 16),
            child: Stack(
              children: [
                ClipRRect(
                  child: Image.asset(
                    "assets/images/promotion.png",
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 32,
                    left: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Super Flash Sale\n50% Off",
                        style: TextStyle(
                          fontFamily: AppTheme.fontFamilyPoppins,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0.5,
                          height: 1.5,
                          color: AppTheme.white,
                        ),
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppTheme.white,
                            ),
                            child: Center(
                              child: Text(
                                "08",
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
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            ":",
                            style: TextStyle(
                              fontFamily: AppTheme.fontFamilyPoppins,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 0.5,
                              height: 1.5,
                              color: AppTheme.white,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppTheme.white,
                            ),
                            child: Center(
                              child: Text(
                                "34",
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
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            ":",
                            style: TextStyle(
                              fontFamily: AppTheme.fontFamilyPoppins,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 0.5,
                              height: 1.5,
                              color: AppTheme.white,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppTheme.white,
                            ),
                            child: Center(
                              child: Text(
                                "52",
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
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Stack(
              children: [
                ClipRRect(
                  child: Image.asset("assets/images/promotion2.png"),
                  borderRadius: BorderRadius.circular(5),
                ),
                Container(
                  padding: EdgeInsets.only(top: 32, left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "90% Off Super Mega\nSale",
                        style: TextStyle(
                          fontFamily: AppTheme.fontFamilyPoppins,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0.5,
                          height: 1.5,
                          color: AppTheme.white,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Special birthday Lafyuu",
                        style: TextStyle(
                          fontFamily: AppTheme.fontFamilyPoppins,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0.5,
                          height: 1.8,
                          color: AppTheme.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
