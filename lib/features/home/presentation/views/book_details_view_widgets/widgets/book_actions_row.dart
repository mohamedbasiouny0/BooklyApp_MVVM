
import 'package:flutter/material.dart';

import 'price_container.dart';

class BookActionsRow extends StatelessWidget {
  const BookActionsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .center,
      children: [
        PriceContainer(
          borderRadiusGeometry: .only(
            topLeft: .circular(20),
            bottomRight: .circular(20),
          ),
          color: Colors.white,
          text: '19.99 €',
          colorText: Colors.black,
        ),
        PriceContainer(
          borderRadiusGeometry: .only(
            topRight: .circular(20),
            bottomLeft: .circular(20),
          ),
          color: Color(0XFFEF8262),
          text: 'Free preview',
          colorText: Colors.white,
        ),
      ],
    );
  }
}
