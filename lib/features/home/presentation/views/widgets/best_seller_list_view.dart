import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_widget.dart';
import 'package:bookly_app/features/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manger/newest_books_cubit/newest_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'best_seller_list_vie_item.dart';


class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (BuildContext context, NewestBooksState state) {
       if(state is NewestBooksSuccess) {
         return ListView.builder(
           shrinkWrap: true,
           physics: const NeverScrollableScrollPhysics(),
           itemCount: state.newestBooks.length,
           itemBuilder: (context, index) =>  Padding(
             padding: EdgeInsets.only(right: 15.0),
             child: Padding(
               padding: EdgeInsets.only(bottom: 20.0),
               child: BestSellerListViewItem(
                 bookModel: state.newestBooks[index],
               ),
             ),
           ),
         );
       }
      else if(state is NewestBooksFailure) {
         return Center(child: CustomErrorWidget(errMessage: state.errMessage));
       }
      else {
        return CustomLoadingWidget();
      }
    }
    );
  }
}
