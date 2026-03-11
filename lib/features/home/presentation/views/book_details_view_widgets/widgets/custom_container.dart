import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.borderRadiusGeometry,
    required this.color,
    required this.text,
    required this.colorText,
  });

  final BorderRadiusGeometry borderRadiusGeometry;
  final Color color;
  final Color colorText;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: .center,
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        color: color,
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
        style: Styles.regularTextStyle18.copyWith(color: colorText),
      ),
    );
  }
}
