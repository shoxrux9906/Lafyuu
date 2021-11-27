import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice_two/src/models/category_item_model.dart';
import 'package:practice_two/src/models/item_model.dart';
import 'package:practice_two/src/theme/app_theme.dart';
import 'package:practice_two/src/ui/bottom_view/home/favorite_product_screen.dart';
import 'package:practice_two/src/ui/bottom_view/home/offer_screen.dart';
import 'package:practice_two/src/ui/bottom_view/offert/offer_screen.dart';
import 'package:practice_two/src/ui/widgets/item_widgets.dart';
import 'package:practice_two/src/ui/widgets/top_list.dart';

import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> k = [
    "Super Flash Sale 50% Off",
    "Super Flash Sale 50% Off",
    "Super Flash Sale 50% Off",
  ];

  List<CategoryItemModel> categoryItems = [
    CategoryItemModel(
      image: "assets/images/shirt.png",
      name: "Man Shirt",
    ),
    CategoryItemModel(
      image: "assets/images/dress.png",
      name: "Dress",
    ),
    CategoryItemModel(
      image: "assets/images/man_bag.png",
      name: "Man Work Equipment",
    ),
    CategoryItemModel(
      image: "assets/images/woman_bag.png",
      name: "Woman bag",
    ),
    CategoryItemModel(
      image: "assets/images/shirt.png",
      name: "Man Shirt",
    ),
    CategoryItemModel(
      image: "assets/images/dress.png",
      name: "Dress",
    ),
    CategoryItemModel(
      image: "assets/images/man_bag.png",
      name: "Man Work Equipment",
    ),
    CategoryItemModel(
      image: "assets/images/woman_bag.png",
      name: "Woman bag",
    ),
  ];

  List<ItemModel> items = [
    ItemModel(
      image: "assets/images/prd1.png",
      name: "FS - Nike Air Max 270 React...",
      ratingImage: "",
      price: "\$299,43",
      oldPrice: "\$534,33",
      percent: "24% Off",
      star: 0,
    ),
    ItemModel(
      image: "assets/images/prd2.png",
      name: "FS - QUILTED MAXI CROS...",
      ratingImage: "",
      price: "\$299,43",
      oldPrice: "\$534,33",
      percent: "43% Off",
      star: 0,
    ),
    ItemModel(
      image: "assets/images/prd1.png",
      name: "FS - Nike Air Max 270 React...",
      ratingImage: "",
      price: "\$299,43",
      oldPrice: "\$534,33",
      percent: "33% Off",
      star: 0,
    ),
    ItemModel(
      image: "assets/images/prd2.png",
      name: "FS - QUILTED MAXI CROS...",
      ratingImage: "",
      price: "\$299,43",
      oldPrice: "\$534,33",
      percent: "24% Off",
      star: 0,
    ),
    ItemModel(
      image: "assets/images/prd1.png",
      name: "FS - Nike Air Max 270 React...",
      ratingImage: "",
      price: "\$299,43",
      oldPrice: "\$534,33",
      percent: "43% Off",
      star: 0,
    ),
    ItemModel(
      image: "assets/images/prd2.png",
      name: "FS - QUILTED MAXI CROS...",
      ratingImage: "",
      price: "\$299,43",
      oldPrice: "\$534,33",
      percent: "33% Off",
      star: 0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      appBar: AppBar(
        backgroundColor: AppTheme.white,
        elevation: 1,
        shadowColor: AppTheme.light_grey,
        title: Container(
          height: 56,
          color: AppTheme.white,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 44,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppTheme.light_grey,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      SvgPicture.asset("assets/icons/search.svg"),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Search Product",
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              fontFamily: AppTheme.fontFamilyPoppins,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              height: 1.8,
                              letterSpacing: 0.5,
                              color: AppTheme.normal_grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 16),
              SvgPicture.asset("assets/icons/add_favorite.svg"),
              SizedBox(width: 12),
              SvgPicture.asset("assets/icons/notification.svg"),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                SizedBox(height: 16),
                CarouselSlider(
                  options: CarouselOptions(
                      height: (MediaQuery.of(context).size.width - 32) *
                          206.0 /
                          343,
                      enlargeCenterPage: false,
                      viewportFraction: 1,
                      aspectRatio: 343 / 206,
                      initialPage: 2,
                      autoPlay: true),
                  items: k.map(
                    (i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            margin: EdgeInsets.only(left: 16, right: 16),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    "assets/images/promotion.png",
                                    width:
                                        MediaQuery.of(context).size.width - 32,
                                    height: (MediaQuery.of(context).size.width -
                                            32) *
                                        206.0 /
                                        343,
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 32,
                                    vertical: 24,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '$i',
                                        style: TextStyle(
                                          fontSize: 24.0,
                                          fontFamily:
                                              AppTheme.fontFamilyPoppins,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.normal,
                                          height: 1.5,
                                          letterSpacing: 0.5,
                                          color: AppTheme.white,
                                        ),
                                      ),
                                      Spacer(),
                                      Row(
                                        children: [
                                          Container(
                                            width: 44,
                                            height: 44,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: AppTheme.white,
                                            ),
                                            child: Center(
                                              child: Text(
                                                "08",
                                                style: TextStyle(
                                                  fontFamily: AppTheme
                                                      .fontFamilyPoppins,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.normal,
                                                  height: 1.5,
                                                  letterSpacing: 0.5,
                                                  color: AppTheme.dark_grey,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            ":",
                                            style: TextStyle(
                                              fontFamily:
                                                  AppTheme.fontFamilyPoppins,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.normal,
                                              height: 1.5,
                                              letterSpacing: 0.5,
                                              color: AppTheme.white,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Container(
                                            width: 44,
                                            height: 44,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: AppTheme.white,
                                            ),
                                            child: Center(
                                              child: Text(
                                                "34",
                                                style: TextStyle(
                                                  fontFamily: AppTheme
                                                      .fontFamilyPoppins,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.normal,
                                                  height: 1.5,
                                                  letterSpacing: 0.5,
                                                  color: AppTheme.dark_grey,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            ":",
                                            style: TextStyle(
                                              fontFamily:
                                                  AppTheme.fontFamilyPoppins,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.normal,
                                              height: 1.5,
                                              letterSpacing: 0.5,
                                              color: AppTheme.white,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Container(
                                            width: 44,
                                            height: 44,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: AppTheme.white,
                                            ),
                                            child: Center(
                                              child: Text(
                                                "56",
                                                style: TextStyle(
                                                  fontFamily: AppTheme
                                                      .fontFamilyPoppins,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.normal,
                                                  height: 1.5,
                                                  letterSpacing: 0.5,
                                                  color: AppTheme.dark_grey,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ).toList(),
                ),
                TopList(
                  margin: EdgeInsets.only(top: 16),
                  left: "Category",
                  right: "More Category",
                  onTap: () {},
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  height: 108,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    itemBuilder: (context, index) {
                      return Container(
                        width: 70,
                        margin: EdgeInsets.only(right: 16),
                        child: Column(
                          children: [
                            Container(
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(72),
                                  border: Border.all(
                                    color: AppTheme.light_grey,
                                    width: 1,
                                  ),
                                ),
                                child: Image.asset(categoryItems[index].image),
                                padding: EdgeInsets.all(23),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Center(
                              child: Text(
                                categoryItems[index].name,
                                style: TextStyle(
                                  fontFamily: AppTheme.fontFamilyPoppins,
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FontStyle.normal,
                                  height: 1.5,
                                  letterSpacing: 0.5,
                                  color: AppTheme.normal_grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: categoryItems.length,
                  ),
                ),
                TopList(
                  left: "Flash Sale",
                  right: "See More",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return OfferHomeScreen(
                            dataList: items,
                            title: "Super Flash Sale",
                          );
                        },
                      ),
                    );
                  },
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  height: 240,
                  // width: 140,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DetailScreen(
                                  data: items[index],
                                );
                              },
                            ),
                          );
                        },
                        child: ItemWidget(
                          width: 150,
                          child: items[index],
                          margin: EdgeInsets.only(right: 16),
                        ),
                      );
                    },
                  ),
                ),
                TopList(
                  left: "Mega Sale",
                  right: "See More",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return OfferHomeScreen(
                            dataList: items,
                            title: "Super Mega Sale",
                          );
                        },
                      ),
                    );
                  },
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  height: 240,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DetailScreen(data: items[index]);
                              },
                            ),
                          );
                        },
                        child: ItemWidget(
                          child: items[index],
                          margin: EdgeInsets.only(right: 16,),
                        ),
                      );
                    },
                    itemCount: items.length,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8, bottom: 12),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          "assets/images/promotion.png",
                          width: MediaQuery.of(context).size.width - 32,
                          height: (MediaQuery.of(context).size.width - 32) *
                              206 /
                              343,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Recommended\nProduct",
                            style: TextStyle(
                              fontSize: 24.0,
                              fontFamily: AppTheme.fontFamilyPoppins,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              height: 1.5,
                              letterSpacing: 0.5,
                              color: AppTheme.white,
                            ),
                          ),
                          Text(
                            "We recommend the best for you",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontFamily: AppTheme.fontFamilyPoppins,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              height: 1.8,
                              letterSpacing: 0.5,
                              color: AppTheme.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 290,
                        margin: EdgeInsets.all(16),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border:
                              Border.all(color: AppTheme.light_grey, width: 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/prd1.png",
                              width: 132,
                              height: 132,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Nike Air Max 270\nReact ENG",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: AppTheme.fontFamilyPoppins,
                                  color: AppTheme.dark_grey,
                                  height: 1.5,
                                  letterSpacing: 0.5),
                            ),
                            SizedBox(
                              height: 4,
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
                                  width: 4,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "\$299,43",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: AppTheme.fontFamilyPoppins,
                                  color: AppTheme.blue,
                                  height: 1.8,
                                  letterSpacing: 0.5),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "\$534,33",
                                    style: TextStyle(
                                        fontFamily: AppTheme.fontFamilyPoppins,
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                        height: 1.5,
                                        letterSpacing: 0.5,
                                        color: AppTheme.normal_grey,
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ),
                                Text(
                                  "24% Off",
                                  style: TextStyle(
                                    fontFamily: AppTheme.fontFamilyPoppins,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    height: 1.5,
                                    letterSpacing: 0.5,
                                    color: AppTheme.primary_red,
                                  ),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 290,
                        margin: EdgeInsets.all(16),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border:
                              Border.all(color: AppTheme.light_grey, width: 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/prd2.png",
                              width: 132,
                              height: 132,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Nike Air Max 270\nReact ENG",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: AppTheme.fontFamilyPoppins,
                                  color: AppTheme.dark_grey,
                                  height: 1.5,
                                  letterSpacing: 0.5),
                            ),
                            SizedBox(
                              height: 4,
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
                                  width: 4,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "\$299,43",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: AppTheme.fontFamilyPoppins,
                                  color: AppTheme.blue,
                                  height: 1.8,
                                  letterSpacing: 0.5),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "\$534,33",
                                    style: TextStyle(
                                        fontFamily: AppTheme.fontFamilyPoppins,
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                        height: 1.5,
                                        letterSpacing: 0.5,
                                        color: AppTheme.normal_grey,
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ),
                                Text(
                                  "24% Off",
                                  style: TextStyle(
                                    fontFamily: AppTheme.fontFamilyPoppins,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    height: 1.5,
                                    letterSpacing: 0.5,
                                    color: AppTheme.primary_red,
                                  ),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 290,
                        margin: EdgeInsets.all(16),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: AppTheme.light_grey,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/prd1.png",
                              width: 132,
                              height: 132,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Nike Air Max 270\nReact ENG",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: AppTheme.fontFamilyPoppins,
                                  color: AppTheme.dark_grey,
                                  height: 1.5,
                                  letterSpacing: 0.5),
                            ),
                            SizedBox(
                              height: 4,
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
                                  width: 4,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "\$299,43",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: AppTheme.fontFamilyPoppins,
                                  color: AppTheme.blue,
                                  height: 1.8,
                                  letterSpacing: 0.5),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "\$534,33",
                                    style: TextStyle(
                                        fontFamily: AppTheme.fontFamilyPoppins,
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                        height: 1.5,
                                        letterSpacing: 0.5,
                                        color: AppTheme.normal_grey,
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ),
                                Text(
                                  "24% Off",
                                  style: TextStyle(
                                    fontFamily: AppTheme.fontFamilyPoppins,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    height: 1.5,
                                    letterSpacing: 0.5,
                                    color: AppTheme.primary_red,
                                  ),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 290,
                        margin: EdgeInsets.all(16),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: AppTheme.light_grey,
                              width: 1,
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/prd2.png",
                              width: 132,
                              height: 132,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Nike Air Max 270\nReact ENG",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: AppTheme.fontFamilyPoppins,
                                  color: AppTheme.dark_grey,
                                  height: 1.5,
                                  letterSpacing: 0.5),
                            ),
                            SizedBox(
                              height: 4,
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
                                  width: 4,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "\$299,43",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: AppTheme.fontFamilyPoppins,
                                  color: AppTheme.blue,
                                  height: 1.8,
                                  letterSpacing: 0.5),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "\$534,33",
                                    style: TextStyle(
                                        fontFamily: AppTheme.fontFamilyPoppins,
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                        height: 1.5,
                                        letterSpacing: 0.5,
                                        color: AppTheme.normal_grey,
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ),
                                Text(
                                  "24% Off",
                                  style: TextStyle(
                                    fontFamily: AppTheme.fontFamilyPoppins,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    height: 1.5,
                                    letterSpacing: 0.5,
                                    color: AppTheme.primary_red,
                                  ),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
