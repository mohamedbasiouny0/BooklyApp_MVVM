import 'package:flutter/material.dart';
import 'package:test1/features/home/presentation/views/book_details_view_widgets/widgets/book_details_item.dart';
import 'custom_container.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            BookDetailsItem(),
            Row(
              mainAxisAlignment: .center,
              children: [
                CustomContainer(
                  borderRadiusGeometry: .only(
                    topLeft: .circular(20),
                    bottomRight: .circular(20),
                  ),
                  color: Colors.white,
                  text: '19.99 €',
                  colorText: Colors.black,
                ),
                CustomContainer(
                  borderRadiusGeometry: .only(
                    topRight: .circular(20),
                    bottomLeft: .circular(20),
                  ),
                  color: Color(0XFFEF8262),
                  text: 'Free preview',
                  colorText: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
