import 'package:flutter/cupertino.dart';
import 'package:practice_two/src/theme/app_theme.dart';

class TopList extends StatelessWidget {
  final String left;
  final String right;
  final EdgeInsets margin;
  final Function() onTap;

  TopList({
    this.margin = const EdgeInsets.only(top: 24),
    required this.left,
    required this.right,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Row(
        children: [
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Text(
              left,
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
          GestureDetector(
            onTap: onTap,
            child: Text(
              right,
              style: TextStyle(
                fontFamily: AppTheme.fontFamilyPoppins,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                height: 1.5,
                letterSpacing: 0.5,
                color: AppTheme.blue,
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
        ],
      ),
    );
  }
}
