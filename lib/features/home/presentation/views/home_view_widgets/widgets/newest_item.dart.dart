// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:test1/core/utils/app_routes.dart';
import 'package:test1/core/utils/styles.dart';
import 'package:test1/features/home/data/book_model/book_model.dart';
import 'package:test1/features/home/presentation/views/home_view_widgets/widgets/book_image.dart';
import 'package:test1/features/home/presentation/views/home_view_widgets/widgets/book_rating.dart';

class NewestItem extends StatelessWidget {
  const NewestItem({super.key, required this.bookModel});
  final BookModel bookModel;

  // getAuthors(){
  //   var
  //   for (var element in bookModel.volumeInfo!.authors!) {

  //   }
  // }
  @override
  Widget build(BuildContext context) {
    var authorsList = bookModel.volumeInfo!.authors;
    return GestureDetector(
      onTap: () => context.push(AppRoutes.kBookDetailsView),

      child: Container(
        margin: .symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: .circular(16),
          color: Colors.white.withOpacity(0.15),
        ),
        height: 120,
        child: Row(
          children: [
            BookImage(imagePath: bookModel.volumeInfo!.imageLinks!.thumbnail!),
            Gap(16),
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Gap(4),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.68,
                    child: Text(
                      bookModel.volumeInfo!.title,
                      maxLines: 2,
                      overflow: .ellipsis,
                      style: Styles.regularTextStyle18.copyWith(),
                    ),
                  ),
                  Gap(3),
                  Text(
                    authorsList![0],
                    style: Styles.regularTextStyle14.copyWith(
                      color: Colors.amberAccent,
                    ),
                  ),

                  Spacer(),
                  Row(
                    children: [
                      Text(
                        bookModel.saleInfo!.saleability! == 'FOR_SALE'
                            ? '${bookModel.saleInfo!.listPrice!.amount!.round().toString()} ${bookModel.saleInfo!.listPrice!.currencyCode}'
                            : 'Not for sale',
                        style: Styles.regularTextStyle20.copyWith(
                          fontWeight: .bold,
                        ),
                      ),
                      Spacer(),
                      BookRating(),
                      Gap(16),
                    ],
                  ),
                  Gap(4),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

      // Get.to(
      //   () => BookDetailView(),
      //   transition: .size,
      //   duration: Duration(milliseconds: 500),
      // ),