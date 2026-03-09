import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem.horizontalBook({
    super.key,
    required this.height,
    required this.width,
  });
  final double? height, width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: .circular(8),
        image: DecorationImage(
          image: NetworkImage('https://picsum.photos/200'),
          fit: .cover,
        ),
      ),
    );
  }
}
