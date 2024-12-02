import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_widget.dart';
import 'package:bookly_app/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manger/similar_books_cubit/similar_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_list_view_item_photo.dart';

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (BuildContext context, SimilarBooksState state) {
        if(state is SimilarBooksSuccess) {
          return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) =>  Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: CustomListItemPhoto(
              imageUrl:state.similarBooks[index].volumeInfo?.imageLinks?.thumbnail??'',
            ),
          ),
        );
        }
        else if(state is SimilarBooksFailure)
          {
            return CustomErrorWidget(errMessage: state.errMessage);

          }
        else
          {
            return CustomLoadingWidget();
          }
      },
    );
  }
}
