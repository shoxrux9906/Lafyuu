import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice_two/src/models/category_item_model.dart';
import 'package:practice_two/src/theme/app_theme.dart';

class ExploreScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ExploreScreenState();
  }
}

class _ExploreScreenState extends State {

  List<CategoryItemModel> categoryItems = [
    CategoryItemModel(
      image: "assets/images/shirt.png",
      name: "Man Shirt",
    ),
    CategoryItemModel(
      image: "assets/images/man_bag.png",
      name: "Man Work Equipment",
    ),
    CategoryItemModel(
      image: "assets/images/shirt.png",
      name: "Man Shirt",
    ),
    CategoryItemModel(
      image: "assets/images/man_shoes.png",
      name: "Man Shoes",
    ),
    CategoryItemModel(
      image: "assets/images/man_pants.png",
      name: "Man Pants",
    ),
    CategoryItemModel(
      image: "assets/images/man_underwear.png",
      name: "Man Underwear",
    ),
  ];

  List<CategoryItemModel> categoryItems3 = [
    CategoryItemModel(
      image: "assets/icons/dress.svg",
      name: "Dress",
    ),
    CategoryItemModel(
      image: "assets/icons/woman_tshirt.svg",
      name: "Woman t-shirt",
    ),
    CategoryItemModel(
      image: "assets/icons/woman_pants.svg",
      name: "Woman Pants",
    ),
    CategoryItemModel(
      image: "assets/icons/skirt.svg",
      name: "Skirt",
    ),
    CategoryItemModel(
      image: "assets/icons/dress.svg",
      name: "Dress",
    ),
    CategoryItemModel(
      image: "assets/icons/woman_tshirt.svg",
      name: "Woman t-shirt",
    ),
    CategoryItemModel(
      image: "assets/icons/woman_pants.svg",
      name: "Woman Pants",
    ),
    CategoryItemModel(
      image: "assets/icons/skirt.svg",
      name: "Skirt",
    ),
    CategoryItemModel(
      image: "assets/icons/woman_bag.svg",
      name: "Woman Bag",
    ),
    CategoryItemModel(
      image: "assets/icons/woman_shoes.svg",
      name: "High Heels",
    ),
    CategoryItemModel(
      image: "assets/icons/bikini.svg",
      name: "Bikini",
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
          padding: EdgeInsets.only(left: 16, right: 8),
          height: 48,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppTheme.light_grey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              SvgPicture.asset("assets/icons/search3.svg"),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search Product",
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
            ],
          ),
        ),
        actions: [
          SizedBox(
            width: 16,
          ),
          SvgPicture.asset("assets/icons/add_favorite.svg"),
          SizedBox(
            width: 16,
          ),
          SvgPicture.asset("assets/icons/notification.svg"),
          SizedBox(
            width: 16,
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 16,
              left: 16,
              right: 16,
            ),
            child: Text(
              "Man Fashion",
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
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(
              top: 16,
              left: 16,
              right: 16,
              bottom: 24,
            ),
            //itemCount: categoryItems.length,
            itemCount: categoryItems.length % 4 == 0
                ? categoryItems.length ~/ 4
                : categoryItems.length ~/ 4 + 1,
            itemBuilder: (context, index) {
              return Container(
                height: 108,
                margin: EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: index * 4 >= categoryItems.length
                          ? Container()
                          : Container(
                              height: 108,
                              width: 70,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset(
                                      categoryItems[index * 4].image,
                                      width: 24,
                                      height: 24,
                                    ),
                                    padding: EdgeInsets.all(23),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(70),
                                      border: Border.all(
                                        color: AppTheme.light_grey,
                                        width: 1,
                                      ),
                                    ),
                                    width: 70,
                                    height: 70,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    categoryItems[index * 4].name,
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      fontFamily: AppTheme.fontFamilyPoppins,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FontStyle.normal,
                                      height: 1.5,
                                      letterSpacing: 0.5,
                                      color: AppTheme.normal_grey,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: index * 4 + 1 >= categoryItems.length
                          ? Container()
                          : Container(
                              height: 108,
                              width: 70,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset(
                                      categoryItems[index * 4 + 1].image,
                                      width: 24,
                                      height: 24,
                                    ),
                                    padding: EdgeInsets.all(23),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(70),
                                      border: Border.all(
                                        color: AppTheme.light_grey,
                                        width: 1,
                                      ),
                                    ),
                                    width: 70,
                                    height: 70,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    categoryItems[index * 4 + 1].name,
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      fontFamily: AppTheme.fontFamilyPoppins,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FontStyle.normal,
                                      height: 1.5,
                                      letterSpacing: 0.5,
                                      color: AppTheme.normal_grey,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: index * 4 + 2 >= categoryItems.length
                          ? Container()
                          : Container(
                              height: 108,
                              width: 70,

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset(
                                      categoryItems[index * 4 + 2].image,
                                      width: 24,
                                      height: 24,
                                    ),
                                    padding: EdgeInsets.all(23),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(70),
                                      border: Border.all(
                                        color: AppTheme.light_grey,
                                        width: 1,
                                      ),
                                    ),
                                    width: 70,
                                    height: 70,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    categoryItems[index * 4 + 2].name,
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      fontFamily: AppTheme.fontFamilyPoppins,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FontStyle.normal,
                                      height: 1.5,
                                      letterSpacing: 0.5,
                                      color: AppTheme.normal_grey,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: index * 4 + 3 >= categoryItems.length
                          ? Container()
                          : Container(
                              height: 108,
                              width: 70,
                              child: Column(
                                children: [
                                  Container(
                                    child: Image.asset(
                                      categoryItems[index * 4 + 3].image,
                                      width: 24,
                                      height: 24,
                                    ),
                                    padding: EdgeInsets.all(23),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(70),
                                      border: Border.all(
                                        color: AppTheme.light_grey,
                                        width: 1,
                                      ),
                                    ),
                                    width: 70,
                                    height: 70,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Expanded(child: Text(
                                    categoryItems[index * 4 + 3].name,
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      fontFamily: AppTheme.fontFamilyPoppins,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FontStyle.normal,
                                      height: 1.5,
                                      letterSpacing: 0.5,
                                      color: AppTheme.normal_grey,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),)
                                  ,
                                ],
                              ),
                            ),
                    ),
                  ],
                ),
              );
            },
          ),
          Container(
            margin: EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Text(
              "Woman Fashion",
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
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(
              top: 16,
              left: 16,
              right: 16,
              bottom: 24,
            ),
            //itemCount: categoryItems.length,
            itemCount: categoryItems3.length % 4 == 0
                ? categoryItems3.length ~/ 4
                : categoryItems3.length ~/ 4 + 1,
            itemBuilder: (context, index) {
              return Container(
                height: 108,
                margin: EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: index * 4 >= categoryItems3.length
                          ? Container()
                          : Container(
                        height: 108,
                        width: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                categoryItems3[index * 4].image,
                                width: 24,
                                height: 24,
                              ),
                              padding: EdgeInsets.all(23),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                border: Border.all(
                                  color: AppTheme.light_grey,
                                  width: 1,
                                ),
                              ),
                              width: 70,
                              height: 70,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              categoryItems3[index * 4].name,
                              style: TextStyle(
                                fontSize: 10.0,
                                fontFamily: AppTheme.fontFamilyPoppins,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.normal,
                                height: 1.5,
                                letterSpacing: 0.5,
                                color: AppTheme.normal_grey,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: index * 4 + 1 >= categoryItems3.length
                          ? Container()
                          : Container(
                        height: 108,
                        width: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                categoryItems3[index * 4 + 1].image,
                                width: 24,
                                height: 24,
                              ),
                              padding: EdgeInsets.all(23),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                border: Border.all(
                                  color: AppTheme.light_grey,
                                  width: 1,
                                ),
                              ),
                              width: 70,
                              height: 70,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              categoryItems3[index * 4 + 1].name,
                              style: TextStyle(
                                fontSize: 10.0,
                                fontFamily: AppTheme.fontFamilyPoppins,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.normal,
                                height: 1.5,
                                letterSpacing: 0.5,
                                color: AppTheme.normal_grey,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: index * 4 + 2 >= categoryItems3.length
                          ? Container()
                          : Container(
                        height: 108,
                        width: 70,

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                categoryItems3[index * 4 + 2].image,
                                width: 24,
                                height: 24,
                              ),
                              padding: EdgeInsets.all(23),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                border: Border.all(
                                  color: AppTheme.light_grey,
                                  width: 1,
                                ),
                              ),
                              width: 70,
                              height: 70,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              categoryItems3[index * 4 + 2].name,
                              style: TextStyle(
                                fontSize: 10.0,
                                fontFamily: AppTheme.fontFamilyPoppins,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.normal,
                                height: 1.5,
                                letterSpacing: 0.5,
                                color: AppTheme.normal_grey,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: index * 4 + 3 >= categoryItems3.length
                          ? Container()
                          : Container(
                        height: 108,
                        width: 70,
                        child: Column(
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                categoryItems3[index * 4 + 3].image,
                                width: 24,
                                height: 24,
                              ),
                              padding: EdgeInsets.all(23),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                border: Border.all(
                                  color: AppTheme.light_grey,
                                  width: 1,
                                ),
                              ),
                              width: 70,
                              height: 70,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Expanded(child: Text(
                              categoryItems3[index * 4 + 3].name,
                              style: TextStyle(
                                fontSize: 10.0,
                                fontFamily: AppTheme.fontFamilyPoppins,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.normal,
                                height: 1.5,
                                letterSpacing: 0.5,
                                color: AppTheme.normal_grey,
                              ),
                              textAlign: TextAlign.center,
                            ),)
                            ,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
