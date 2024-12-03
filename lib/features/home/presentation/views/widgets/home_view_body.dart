import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'custom_home_view_app_bar.dart';
import 'list_view_home.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHomeViewAppBar(),
              SizedBox(
                height: 36,
              ),
              HorizontalListViewOfHome(),
              SizedBox(
                height: 36,
              ),
              Text(
                'Newest Books',
                style: Styles.textStyle18,
              ),
              SizedBox(
                height: 16,
              ),
              BestSellerListView(),
            ],
          ),
        ),
      ),
    );
  }
}
