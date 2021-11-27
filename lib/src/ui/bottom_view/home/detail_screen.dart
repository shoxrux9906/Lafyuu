import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice_two/src/models/item_model.dart';
import 'package:practice_two/src/theme/app_theme.dart';
import 'package:practice_two/src/ui/bottom_view/cart/cart_screen.dart';

class DetailScreen extends StatefulWidget {
  final ItemModel data;

  DetailScreen({
    required this.data,
  });

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<String> sizes = [
    "6",
    "6.5",
    "7",
    "7.5",
    "8",
    "8.5",
    "9",
    "9.5",
    "10",
    "10.5",
  ];

  List<Color> colors = [
    AppTheme.yellow,
    AppTheme.blue,
    AppTheme.primary_red,
    AppTheme.green,
    AppTheme.primary_purple,
    AppTheme.yellow,
    AppTheme.blue,
    AppTheme.primary_red,
    AppTheme.green,
    AppTheme.primary_purple,
  ];

  List<ItemModel> itemsList = [
    ItemModel(
      image: "assets/images/sneakers1.png",
      name: "FS - Nike Air Max 270 React...",
      ratingImage: "",
      price: "\$299,43",
      oldPrice: "\$534,33",
      percent: "24% Off",
      star: 0,
    ),
    ItemModel(
      image: "assets/images/sneakers2.png",
      name: "FS - QUILTED MAXI CROS...",
      ratingImage: "",
      price: "\$299,43",
      oldPrice: "\$534,33",
      percent: "24% Off",
      star: 0,
    ),
    ItemModel(
      image: "assets/images/sneakers1.png",
      name: "FS - Nike Air Max 270 React...",
      ratingImage: "",
      price: "\$299,43",
      oldPrice: "\$534,33",
      percent: "24% Off",
      star: 0,
    ),
    ItemModel(
      image: "assets/images/sneakers2.png",
      name: "FS - QUILTED MAXI CROS...",
      ratingImage: "",
      price: "\$299,43",
      oldPrice: "\$534,33",
      percent: "24% Off",
      star: 0,
    ),
    ItemModel(
      image: "assets/images/sneakers1.png",
      name: "FS - Nike Air Max 270 React...",
      ratingImage: "",
      price: "\$299,43",
      oldPrice: "\$534,33",
      percent: "24% Off",
      star: 0,
    ),
    ItemModel(
      image: "assets/images/sneakers2.png",
      name: "FS - QUILTED MAXI CROS...",
      ratingImage: "",
      price: "\$299,43",
      oldPrice: "\$534,33",
      percent: "24% Off",
      star: 0,
    ),
    ItemModel(
      image: "assets/images/sneakers1.png",
      name: "FS - Nike Air Max 270 React...",
      ratingImage: "",
      price: "\$299,43",
      oldPrice: "\$534,33",
      percent: "24% Off",
      star: 0,
    ),
    ItemModel(
      image: "assets/images/sneakers2.png",
      name: "FS - QUILTED MAXI CROS...",
      ratingImage: "",
      price: "\$299,43",
      oldPrice: "\$534,33",
      percent: "24% Off",
      star: 0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.white,
        leadingWidth: 44,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(8),
            child: SvgPicture.asset(
              "assets/icons/left_back.svg",
            ),
          ),
        ),
        titleSpacing: 0,
        title: Text(
          widget.data.name,
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
      backgroundColor: AppTheme.white,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Image.asset(
            widget.data.image,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitWidth,
            height: 300,
          ),
          Container(
            margin: EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.data.name,
                    style: TextStyle(
                      fontFamily: AppTheme.fontFamilyPoppins,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0.5,
                      height: 1.5,
                      color: AppTheme.dark_grey,
                    ),
                  ),
                ),
                SvgPicture.asset("assets/icons/add_favorite.svg"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8, left: 16, right: 16),
            child: Row(
              children: [
                SvgPicture.asset("assets/icons/star01.svg"),
                SizedBox(
                  width: 4,
                ),
                SvgPicture.asset("assets/icons/star01.svg"),
                SizedBox(
                  width: 4,
                ),
                SvgPicture.asset("assets/icons/star01.svg"),
                SizedBox(
                  width: 4,
                ),
                SvgPicture.asset("assets/icons/star01.svg"),
                SizedBox(
                  width: 4,
                ),
                SvgPicture.asset("assets/icons/star05.svg"),
                SizedBox(
                  width: 4,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Text(
              widget.data.price,
              style: TextStyle(
                fontFamily: AppTheme.fontFamilyPoppins,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                letterSpacing: 0.5,
                height: 1.5,
                color: AppTheme.blue,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 24,
              left: 16,
              right: 16,
            ),
            child: Text(
              "Select Size",
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
          ),
          Container(
            height: 48,
            margin: EdgeInsets.only(
              top: 12,
              left: 16,
              right: 16,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                    right: 16,
                  ),
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(48),
                    border: Border.all(
                      color: AppTheme.light_grey,
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      sizes[index],
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
                  ),
                );
              },
              itemCount: sizes.length,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 24,
              left: 16,
              right: 16,
            ),
            child: Text(
              "Select Color",
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
          ),
          Container(
            height: 48,
            margin: EdgeInsets.only(top: 12, left: 16,right: 16),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: colors.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: 16,),
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: colors[index],
                    borderRadius: BorderRadius.circular(48),
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 24,
              left: 16,
              right: 16,
            ),
            child: Text(
              "Specification",
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
          ),
          Container(
            margin: EdgeInsets.only(top: 12, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    "Shown:",
                    style: TextStyle(
                      fontFamily: AppTheme.fontFamilyPoppins,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0.5,
                      height: 1.8,
                      color: AppTheme.dark_grey,
                    ),
                  ),
                ),
                Text(
                  "Laser\nBlue/Anthracite/Watermel\non/White",
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
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    "Style:",
                    style: TextStyle(
                      fontFamily: AppTheme.fontFamilyPoppins,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0.5,
                      height: 1.8,
                      color: AppTheme.dark_grey,
                    ),
                  ),
                ),
                Text(
                  "CD0113-400",
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
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 16,
              left: 16,
              right: 16,
            ),
            child: Text(
              "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.",
              style: TextStyle(
                fontFamily: AppTheme.fontFamilyPoppins,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                letterSpacing: 0.5,
                height: 1.8,
                color: AppTheme.normal_grey,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    "Review Product",
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
                ),
                Text(
                  "See More",
                  style: TextStyle(
                    fontFamily: AppTheme.fontFamilyPoppins,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0.5,
                    height: 1.5,
                    color: AppTheme.blue,
                  ),
                  textAlign: TextAlign.end,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8, left: 16, right: 16),
            child: Row(
              children: [
                SvgPicture.asset("assets/icons/star01.svg"),
                SizedBox(
                  width: 4,
                ),
                SvgPicture.asset("assets/icons/star01.svg"),
                SizedBox(
                  width: 4,
                ),
                SvgPicture.asset("assets/icons/star01.svg"),
                SizedBox(
                  width: 4,
                ),
                SvgPicture.asset("assets/icons/star01.svg"),
                SizedBox(
                  width: 4,
                ),
                SvgPicture.asset("assets/icons/star05.svg"),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "4.5",
                  style: TextStyle(
                    fontFamily: AppTheme.fontFamilyPoppins,
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0.5,
                    height: 1.5,
                    color: AppTheme.normal_grey,
                  ),
                ),
                Text(
                  "(5 Review)",
                  style: TextStyle(
                    fontFamily: AppTheme.fontFamilyPoppins,
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0.5,
                    height: 1.5,
                    color: AppTheme.normal_grey,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 16,
              right: 16,
              left: 16,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/account.png",
                  width: 48,
                  height: 48,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "James Lawson",
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
                      Row(
                        children: [
                          SvgPicture.asset("assets/icons/star01.svg"),
                          SizedBox(
                            width: 4,
                          ),
                          SvgPicture.asset("assets/icons/star01.svg"),
                          SizedBox(
                            width: 4,
                          ),
                          SvgPicture.asset("assets/icons/star01.svg"),
                          SizedBox(
                            width: 4,
                          ),
                          SvgPicture.asset("assets/icons/star01.svg"),
                          SizedBox(
                            width: 4,
                          ),
                          SvgPicture.asset("assets/icons/star05.svg"),
                          SizedBox(
                            width: 8,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(
              top: 16,
              right: 16,
              left: 16,
            ),
            child: Text(
              "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
              style: TextStyle(
                fontFamily: AppTheme.fontFamilyPoppins,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                letterSpacing: 0.5,
                height: 1.8,
                color: AppTheme.normal_grey,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/sneak_position1.png",
                  width: 72,
                  height: 72,
                ),
                SizedBox(
                  width: 12,
                ),
                Image.asset(
                  "assets/images/sneak_position2.png",
                  width: 72,
                  height: 72,
                ),
                SizedBox(
                  width: 12,
                ),
                Image.asset(
                  "assets/images/sneak_position3.png",
                  width: 72,
                  height: 72,
                ),
                SizedBox(
                  width: 12,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 16,
              right: 16,
              left: 16,
            ),
            child: Text(
              "December 10, 2016",
              style: TextStyle(
                fontFamily: AppTheme.fontFamilyPoppins,
                fontSize: 10,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                letterSpacing: 0.5,
                height: 1.5,
                color: AppTheme.normal_grey,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 24,
              left: 16,
              right: 16,
            ),
            child: Text(
              "You Might Also Like",
              style: TextStyle(
                fontFamily: AppTheme.fontFamilyPoppins,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                height: 1.5,
                letterSpacing: 0.5,
                color: AppTheme.dark_grey,
              ),
            ),
          ),
          Container(
            height: 260,
            padding: EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 16,
            ),
            child: ListView.builder(
              itemCount: itemsList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                    top: 12,
                    right: 16,
                  ),
                  padding: EdgeInsets.all(
                    16,
                  ),
                  height: 260,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppTheme.light_grey)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        itemsList[index].image,
                        height: 110,
                        width: 110,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        itemsList[index].name,
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
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        itemsList[index].price,
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
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              itemsList[index].oldPrice,
                              style: TextStyle(
                                fontFamily: AppTheme.fontFamilyPoppins,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.normal,
                                fontSize: 10,
                                height: 1.5,
                                letterSpacing: 0.5,
                                color: AppTheme.normal_grey,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ),
                          Text(
                            itemsList[index].percent,
                            style: TextStyle(
                              fontFamily: AppTheme.fontFamilyPoppins,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              height: 1.5,
                              letterSpacing: 0.5,
                              color: AppTheme.primary_red,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
          widget.data.cardCount == 1
              ? Container()
              : GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        widget.data.cardCount = 1;
                        cardData.add(widget.data);
                      },
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 56,
                    margin: EdgeInsets.only(
                      top: 20,
                      right: 16,
                      left: 16,
                      bottom: 48,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: AppTheme.blue,
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: Offset(
                                0,
                                2,
                              ))
                        ],
                        color: AppTheme.blue),
                    child: Center(
                      child: Text(
                        "Add To Cart",
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
                )
        ],
      ),
    );
  }
}
