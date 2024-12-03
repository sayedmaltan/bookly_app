import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_widget.dart';
import 'package:bookly_app/core/widgets/custom_text_form_field.dart';
import 'package:bookly_app/features/search/presentation/manger/searched_books_cubit/searched_books_cubit.dart';
import 'package:bookly_app/features/search/presentation/manger/searched_books_cubit/searched_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'search_items_list.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    SearchedBooksCubit searchedBooksCubit = SearchedBooksCubit.get(context);
    return SafeArea(
      child: BlocBuilder<SearchedBooksCubit, SearchedBooksState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                CustomTextFormField(
                  onChanged: (value) {
                    searchedBooksCubit.fetchSearchedBooks(text: value);
                  },
                  focusedBorderColor: Colors.grey,
                  suffixIcon: Icons.search,
                  hintText: 'Search',
                  keyboardType: TextInputType.text,
                  isPassword: false,
                  controller: searchedBooksCubit.controller,
                  validator: (value) {
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                if (searchedBooksCubit.controller.text.isNotEmpty)
                  (state is SearchedBooksSuccess)
                      ? Expanded(
                          child: SearchItemsList(
                          books: state.featuredBooks,
                        ))
                      : (state is SearchedBooksFailure)
                          ? CustomErrorWidget(errMessage: state.errMessage)
                          : CustomLoadingWidget(),
              ],
            ),
          );
        },
      ),
    );
  }
}
