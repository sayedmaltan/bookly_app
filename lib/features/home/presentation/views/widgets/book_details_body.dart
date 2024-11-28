import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_action_button.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item_photo.dart';
import 'package:flutter/material.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_star_row.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Opacity(
                  opacity: 0.9,
                  child: Row(
                    children: [
                      CustomActionButton(
                        backgroundColor: Colors.white,
                        text: '19.99€',
                        borderRadiusGeometry: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          topLeft: Radius.circular(16),
                        ),
                        textStyle: Styles.textStyle18.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                        ),
                      ),
                      CustomActionButton(
                        backgroundColor: Color(0xffEF8262),
                        text: 'Free preview',
                        borderRadiusGeometry: BorderRadius.only(
                          bottomRight: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        textStyle: Styles.textStyle16.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
