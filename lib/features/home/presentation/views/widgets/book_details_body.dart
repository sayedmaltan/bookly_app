import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item_photo.dart';
import 'package:flutter/material.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_row_action.dart';
import 'custom_star_row.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  CustomBookDetailsAppbar(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.2),
                    child: CustomListItemPhoto(),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Text(
                    'The Jungle Book',
                    style: Styles.textStyle30KGT,
                  ),
                  Opacity(
                      opacity: 0.7,
                      child: Text(
                        'Rudyard Kipling',
                        style: Styles.textStyle18.copyWith(fontSize: 16),
                      )),
                  SizedBox(
                    height: 14,
                  ),
                  CustomStarRow(),
                  SizedBox(
                    height: 37,
                  ),
                  CustomRowAction(),
                  Expanded(
                    child: SizedBox(
                      height: 30,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      'You can also like',
                      style:
                      Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 150,
                    child: BookDetailsListView(),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

