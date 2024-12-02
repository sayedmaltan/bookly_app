import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'best_seller_list_view_coulmn_text.dart';
import 'custom_list_view_item_photo.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(AppRouter.bookDetailsView),
      child: SizedBox(
        height: 140,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomListItemPhoto(
              imageUrl:
                  bookModel.volumeInfo?.imageLinks?.smallThumbnail ??'',
            ),
            SizedBox(
              width: 30,
            ),
            BestSellerListViewColumnText(
              bookModel: bookModel,
            )
          ],
        ),
      ),
    );
  }
}
