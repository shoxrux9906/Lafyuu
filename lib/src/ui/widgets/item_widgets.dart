import 'package:flutter/cupertino.dart';
import 'package:practice_two/src/models/item_model.dart';
import 'package:practice_two/src/theme/app_theme.dart';

class ItemWidget extends StatelessWidget {
  final ItemModel child;
  final EdgeInsets margin;
  final double width;

  ItemWidget({
    this.width = 150,
    required this.child,
    required this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: margin,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: AppTheme.light_grey,
          width: 1,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            child.image,
            height: 110,
            width: 110,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            child.name,
            style: TextStyle(
              fontFamily: AppTheme.fontFamilyPoppins,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              height: 1.5,
              letterSpacing: 0.5,
              color: AppTheme.dark_grey,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            child.price,
            style: TextStyle(
              fontFamily: AppTheme.fontFamilyPoppins,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              height: 1.5,
              letterSpacing: 0.5,
              color: AppTheme.blue,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  child.oldPrice,
                  style: TextStyle(
                    fontFamily: AppTheme.fontFamilyPoppins,
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    height: 1.5,
                    letterSpacing: 0.5,
                    color: AppTheme.normal_grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ),
              Text(
                child.percent,
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
    );
  }
}
