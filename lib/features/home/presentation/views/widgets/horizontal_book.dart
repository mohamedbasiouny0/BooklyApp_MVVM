import 'package:flutter/material.dart';

class HorizontalBook extends StatelessWidget {
  const HorizontalBook({super.key, this.height, this.width});
  final double? height, width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: .circular(16),
        image: DecorationImage(
          image: AssetImage('assets/images/test_image.png'),
          fit: .fitWidth,
        ),
      ),
    );
  }
}
