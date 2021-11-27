import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice_two/src/models/item_model.dart';
import 'package:practice_two/src/theme/app_theme.dart';

class OfferHomeScreen extends StatefulWidget {
  final List<ItemModel> dataList;
  final String title;

  OfferHomeScreen({
    required this.dataList,
    required this.title,
  });

  @override
  _OfferHomeScreenState createState() => _OfferHomeScreenState();
}

class _OfferHomeScreenState extends State<OfferHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      appBar: AppBar(
        elevation: 2,
        leadingWidth: 44,
        shadowColor: AppTheme.light_grey,
        backgroundColor: AppTheme.white,
        leading: Container(
          padding: EdgeInsets.all(8),
          child: SvgPicture.asset(
            "assets/icons/left_back.svg",
          ),
        ),
        title: Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: widget.title,
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontFamily: AppTheme.fontFamilyPoppins,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    height: 1.5,
                    letterSpacing: 0.5,
                    color: AppTheme.dark_grey,
                  ),
                ),
              ),
            ),
            SvgPicture.asset("assets/icons/search.svg"),
            SizedBox(
              width: 8,
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 16,
                  right: 16,
                  left: 16,
                ),
                child: ClipRRect(
                  child: Image.asset("assets/images/promotion.png"),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 32,
                  left: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Super Flash Sale 50% Off",
                      style: TextStyle(
                        fontFamily: AppTheme.fontFamilyPoppins,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        height: 1.5,
                        letterSpacing: 0.5,
                        color: AppTheme.white,
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            color: AppTheme.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              "08",
                              style: TextStyle(
                                fontFamily: AppTheme.fontFamilyPoppins,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                                height: 1.5,
                                letterSpacing: 0.5,
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
                            height: 1.5,
                            letterSpacing: 0.5,
                            color: AppTheme.white,
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            color: AppTheme.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              "32",
                              style: TextStyle(
                                fontFamily: AppTheme.fontFamilyPoppins,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                                height: 1.5,
                                letterSpacing: 0.5,
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
                            height: 1.5,
                            letterSpacing: 0.5,
                            color: AppTheme.white,
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            color: AppTheme.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              "43",
                              style: TextStyle(
                                fontFamily: AppTheme.fontFamilyPoppins,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                                height: 1.5,
                                letterSpacing: 0.5,
                                color: AppTheme.dark_grey,
                              ),
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
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: widget.dataList.length % 2 == 0
                ? widget.dataList.length ~/ 2
                : widget.dataList.length ~/ 2 + 1,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                  top: 16,
                  right: 16,
                  left: 16,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: index * 2 >= widget.dataList.length
                          ? Container()
                          : Container(
                              width: 165,
                              height: 282,
                              padding: EdgeInsets.all(16),
                              margin: EdgeInsets.only(
                                right: 8,
                              ),
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
                                    widget.dataList[index * 2].image,
                                    width: 132,
                                    height: 132,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    widget.dataList[index * 2].name,
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
                                    height: 16,
                                  ),
                                  Text(
                                    widget.dataList[index * 2].price,
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
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          widget.dataList[index * 2].oldPrice,
                                          style: TextStyle(
                                            fontFamily:
                                                AppTheme.fontFamilyPoppins,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 10,
                                            height: 1.5,
                                            letterSpacing: 0.5,
                                            color: AppTheme.normal_grey,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        widget.dataList[index * 2].percent,
                                        style: TextStyle(
                                          fontFamily:
                                              AppTheme.fontFamilyPoppins,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                          height: 1.5,
                                          letterSpacing: 0.5,
                                          color: AppTheme.primary_red,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 16,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                    ),
                    Expanded(
                      child: index * 2 + 1 >= widget.dataList.length
                          ? Container()
                          : Container(
                              width: 165,
                              height: 282,
                              padding: EdgeInsets.all(16),
                              margin: EdgeInsets.only(
                                left: 8,
                              ),
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
                                    widget.dataList[index * 2 + 1].image,
                                    width: 132,
                                    height: 132,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    widget.dataList[index * 2 + 1].name,
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
                                    height: 16,
                                  ),
                                  Text(
                                    widget.dataList[index * 2].price,
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
                                  Row(
                                    children: [
                                      Text(
                                        widget.dataList[index * 2].oldPrice,
                                        style: TextStyle(
                                          fontFamily:
                                              AppTheme.fontFamilyPoppins,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 10,
                                          height: 1.5,
                                          letterSpacing: 0.5,
                                          color: AppTheme.normal_grey,
                                        ),
                                      ),
                                      Text(
                                        widget.dataList[index * 2].percent,
                                        style: TextStyle(
                                          fontFamily:
                                              AppTheme.fontFamilyPoppins,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                          height: 1.5,
                                          letterSpacing: 0.5,
                                          color: AppTheme.primary_red,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 16,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
