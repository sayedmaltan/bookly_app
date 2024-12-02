import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_star_row.dart';

class BestSellerListViewColumnText extends StatelessWidget {
  const BestSellerListViewColumnText({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              bookModel.volumeInfo!.title as String,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle20.copyWith(fontFamily: kGTSectraFine),
            ),
            Text(
              bookModel.volumeInfo!.authors!.isNotEmpty?bookModel.volumeInfo!.authors![0]:'No author found',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w400),
            ),
             Row(
              children: [
                Text(
                  'free',
                  style: Styles.textStyle20,
                ),
                Spacer(),
                CustomStarRow(
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
