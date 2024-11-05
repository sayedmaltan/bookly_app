import 'package:bookly_app/features/home/presentaion/views/widets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'list_view_home.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 30,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            SizedBox(
              height: 30 ,
            ),
            ListViewOfHome(),
          ],
        ),
      ),
    );
  }
}
