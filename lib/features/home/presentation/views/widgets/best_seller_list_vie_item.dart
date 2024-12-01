import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'best_seller_list_view_coulmn_text.dart';
import 'custom_list_view_item_photo.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(AppRouter.bookDetailsView),
      child: const SizedBox(
        height: 140,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomListItemPhoto(
              imageUrl: 'https://img.freepik.com/free-photo/animal-eye-staring-close-up-watch-nature-generative-ai_188544-15471.jpg',
            ),
            SizedBox(width: 30,),
            BestSellerListViewColumnText()
          ],
        ),
      ),
    );
  }
}
