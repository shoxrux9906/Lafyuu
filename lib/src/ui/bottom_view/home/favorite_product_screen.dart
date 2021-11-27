import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice_two/src/models/item_model.dart';
import 'package:practice_two/src/theme/app_theme.dart';

class FavoriteProductScreen extends StatefulWidget {
  // const FavoriteProductScreen({Key? key}) : super(key: key);

  final ItemModel item;

  FavoriteProductScreen({required this.item});

  @override
  _FavoriteProductScreenState createState() => _FavoriteProductScreenState();
}

class _FavoriteProductScreenState extends State<FavoriteProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.white,
        titleSpacing: 0,
        leadingWidth: 44,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(8),
            child: SvgPicture.asset("assets/icons/left_back.svg"),
          ),
        ),
        title: Text(
          widget.item.name,
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
    );
  }
}
