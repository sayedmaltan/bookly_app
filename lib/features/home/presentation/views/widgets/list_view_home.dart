import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_widget.dart';
import 'package:bookly_app/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manger/featured_books_cubit/featured_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'custom_list_view_item_photo.dart';

class HorizontalListViewOfHome extends StatelessWidget {
  const HorizontalListViewOfHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit,FeaturedBooksState>(
      builder: (context, state) {
        if(state is FeaturedBooksSuccess) {
          return  SizedBox(
            height: MediaQuery.of(context).size.height * 0.28,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.featuredBooks.length,
              itemBuilder: (context, index) =>  Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: GestureDetector(
                  onTap: () {
                    context.push(AppRouter.bookDetailsView,extra:state.featuredBooks[index] );
                  },
                  child: CustomListItemPhoto(
                    imageUrl: state.featuredBooks[index].volumeInfo!.imageLinks!.thumbnail as String,
                  ),
                ),
              ),
            ),
          );
        }
        else if(state is FeaturedBooksFailure) {
          return  Center(child: CustomErrorWidget(errMessage: state.errMessage));
        }
        else{
          return CustomLoadingWidget();
        }
      },
      listener: (BuildContext context, Object? state) {},
    );
  }
}
