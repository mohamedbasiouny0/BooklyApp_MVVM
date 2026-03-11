import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';

class PriceContainer extends StatelessWidget {
  const PriceContainer({
    super.key,
    required this.borderRadiusGeometry,
    required this.backgroundColor,
    required this.text,
    required this.textColor,
  });

  final BorderRadiusGeometry borderRadiusGeometry;
  final Color backgroundColor;
  final Color textColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: .center,
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadiusGeometry,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 8,
            blurStyle: .outer,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Text(
        text,
        style: Styles.regularTextStyle18.copyWith(color: textColor),
      ),
    );
  }
}
