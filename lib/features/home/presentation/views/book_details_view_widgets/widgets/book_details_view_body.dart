import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/core/utils/styles.dart';
import 'package:test1/features/home/presentation/views/book_details_view_widgets/widgets/book_details_item.dart';
import 'horizontal_listview_book_details.dart';
import 'price_container.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            BookDetailsItem(),
            Gap(20),
            Row(
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
            ),
            Gap(MediaQuery.of(context).size.height * 0.06),
            Padding(
              padding: const .only(left: 16),
              child: Row(
                mainAxisAlignment: .start,
                children: [
                  Text('You can also like', style: Styles.regularTextStyle16),
                ],
              ),
            ),
            Gap(20),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.18,
              child: HorizontalListViewBookDetails(),
            ),
            Gap(30),
          ],
        ),
      ),
    );
  }
}
