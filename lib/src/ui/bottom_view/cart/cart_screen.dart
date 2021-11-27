import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice_two/src/models/item_model.dart';
import 'package:practice_two/src/theme/app_theme.dart';

List<ItemModel> cardData = [];

class CartScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CartScreenState();
  }
}

class _CartScreenState extends State {
  int counter1 = 1;
  int counter2 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      appBar: AppBar(
        backgroundColor: AppTheme.white,
        elevation: 1,
        leadingWidth: 44,
        shadowColor: AppTheme.light_grey,
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
          "Your Cart",
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
      body: cardData.length > 0
          ? ListView(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: cardData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: 124,
                      margin: EdgeInsets.only(
                        top: 16,
                        left: 16,
                        right: 16,
                      ),
                      padding: EdgeInsets.all(
                        16,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: AppTheme.light_grey,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    cardData[index].image,
                                    width: 72,
                                    height: 72,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Container(
                                                child: Expanded(
                                                  child: Text(
                                                    cardData[index].name,
                                                    style: TextStyle(
                                                      fontFamily: AppTheme
                                                          .fontFamilyPoppins,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      letterSpacing: 0.5,
                                                      height: 1.5,
                                                      color: AppTheme.dark_grey,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SvgPicture.asset(
                                                  "assets/icons/love_red.svg"),
                                              SizedBox(
                                                width: 16,
                                              ),
                                              SvgPicture.asset(
                                                  "assets/icons/trash.svg"),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            cardData[index].price,
                                            style: TextStyle(
                                              fontFamily:
                                                  AppTheme.fontFamilyPoppins,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                              height: 1.5,
                                              letterSpacing: 0.5,
                                              color: AppTheme.blue,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 110,
                                              height: 24,
                                              child: Expanded(
                                                child: Row(
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          if (counter1 > 0) {
                                                            counter1--;
                                                          }
                                                        });
                                                      },
                                                      child: Container(
                                                        width: 32,
                                                        height: 24,
                                                        padding:
                                                            EdgeInsets.all(4),
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          5),
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          5)),
                                                          border: Border.all(
                                                            color: AppTheme
                                                                .light_grey,
                                                          ),
                                                        ),
                                                        child: SvgPicture.asset(
                                                            "assets/icons/minus.svg"),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        width: 40,
                                                        height: 24,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: AppTheme
                                                                .light_grey,
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              "$counter1",
                                                              style: TextStyle(
                                                                fontFamily: AppTheme
                                                                    .fontFamilyPoppins,
                                                                fontStyle:
                                                                    FontStyle
                                                                        .normal,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 12,
                                                                height: 1.5,
                                                                letterSpacing:
                                                                    0.5,
                                                                color: AppTheme
                                                                    .dark_grey,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          counter1++;
                                                        });
                                                      },
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.all(4),
                                                        width: 32,
                                                        height: 24,
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                            color: AppTheme
                                                                .light_grey,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topRight:
                                                                Radius.circular(
                                                                    5),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    5),
                                                          ),
                                                        ),
                                                        child: SvgPicture.asset(
                                                          "assets/icons/plus.svg",
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Container(
                  height: 56,
                  margin: EdgeInsets.only(
                    top: 32,
                    right: 16,
                    left: 16,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 0,
                            horizontal: 16,
                          ),
                          height: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                            ),
                            border: Border.all(
                              color: AppTheme.light_grey,
                            ),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter Cupon Code",
                              hintStyle: TextStyle(
                                fontFamily: AppTheme.fontFamilyPoppins,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                height: 1.8,
                                letterSpacing: 0.5,
                                color: AppTheme.normal_grey,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          width: 88,
                          decoration: BoxDecoration(
                            color: AppTheme.blue,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Apply",
                              style: TextStyle(
                                fontFamily: AppTheme.fontFamilyPoppins,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                height: 1.8,
                                letterSpacing: 0.5,
                                color: AppTheme.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 172,
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.only(
                    top: 16,
                    right: 16,
                    left: 16,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: AppTheme.light_grey,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Items (3)",
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
                            Text(
                              "\$598.86",
                              style: TextStyle(
                                fontFamily: AppTheme.fontFamilyPoppins,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                height: 1.8,
                                letterSpacing: 0.5,
                                color: AppTheme.dark_grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Shipping",
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
                            Text(
                              "\$40.00",
                              style: TextStyle(
                                fontFamily: AppTheme.fontFamilyPoppins,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                height: 1.8,
                                letterSpacing: 0.5,
                                color: AppTheme.dark_grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Import charges",
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
                            Text(
                              "\$128.00",
                              style: TextStyle(
                                fontFamily: AppTheme.fontFamilyPoppins,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                height: 1.8,
                                letterSpacing: 0.5,
                                color: AppTheme.dark_grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: AppTheme.light_grey,
                          width: 1,
                        )),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Total Price",
                                style: TextStyle(
                                  fontFamily: AppTheme.fontFamilyPoppins,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  height: 1.5,
                                  letterSpacing: 0.5,
                                  color: AppTheme.dark_grey,
                                ),
                              ),
                            ),
                            Text(
                              "\$766.86",
                              style: TextStyle(
                                fontFamily: AppTheme.fontFamilyPoppins,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                height: 1.8,
                                letterSpacing: 0.5,
                                color: AppTheme.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 56,
                  margin:
                      EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 24),
                  decoration: BoxDecoration(
                    color: AppTheme.blue,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 10,
                        color: AppTheme.blue,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Check Out",
                      style: TextStyle(
                        fontFamily: AppTheme.fontFamilyPoppins,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        height: 1.8,
                        letterSpacing: 0.5,
                        color: AppTheme.white,
                      ),
                    ),
                  ),
                ),
              ],
            )
          : Container(
              child: Center(
                child: Text(
                  "Products not selected yet!",
                  style: TextStyle(
                    fontFamily: AppTheme.fontFamilyPoppins,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    height: 1.8,
                    color: AppTheme.dark_grey,
                  ),
                ),
              ),
            ),
    );
  }
}
