import 'package:bookly_app/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       body: RefreshIndicator(
           onRefresh: () async {
             FeaturedBooksCubit featuredBooksCubit=FeaturedBooksCubit.get(context);
             NewestBooksCubit newestBooksCubit=NewestBooksCubit.get(context);
             newestBooksCubit.fetchNewestBooks();
              featuredBooksCubit.fetchFeaturedBooks();
             return await Future.delayed(Duration(seconds: 2));
       },
       child: HomeViewBody()),
    );
  }
}
