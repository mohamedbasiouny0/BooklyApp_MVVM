import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  const BookImage({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: .circular(16),
          image: DecorationImage(
            image: AssetImage('assets/images/test_image.png'),
            fit: .fitWidth,
          ),
        ),
      ),
    );
  }
}
