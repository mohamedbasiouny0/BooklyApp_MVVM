import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';

class PriceContainer extends StatelessWidget {
  const PriceContainer({
    super.key,
    required this.borderRadiusGeometry,
    required this.backgroundColor,
    required this.text,
    required this.textColor,
    this.fontSize,
  });

  final BorderRadiusGeometry borderRadiusGeometry;
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final double? fontSize;
  // final VoidCallback onPreesed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},

      style: ElevatedButton.styleFrom(
        padding: .zero,
        fixedSize: Size(150, 50),
        shape: RoundedRectangleBorder(borderRadius: borderRadiusGeometry),
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
      ),

      child: Text(
        text,
        style: Styles.regularTextStyle16.copyWith(
          fontSize: fontSize,
          fontWeight: .bold,
        ),
      ),
    );
  }
}
