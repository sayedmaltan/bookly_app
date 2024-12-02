import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_screen_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const homeView = '/HomeView';
  static const bookDetailsView = '/BookDetailsView';
  static const searchScreenView = '/SearchScreenView';
  static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
        routes: <RouteBase>[
          GoRoute(
            path: homeView,
            builder: (BuildContext context, GoRouterState state) {
              return const HomeView();
            },
          ),
          GoRoute(
            path: bookDetailsView,
            builder: (BuildContext context, GoRouterState state) {
              return BlocProvider(
                create: (BuildContext context) {
                  return SimilarBooksCubit(
                    homeRepo: getIt.get<HomeRepoImpl>(),
                  );
                },
                  child:  BookDetailsView(bookModel: state.extra as BookModel,),
              );
            },
          ),
          GoRoute(
            path: searchScreenView,
            builder: (BuildContext context, GoRouterState state) {
              return const SearchScreenView();
            },
          ),
        ],
      ),
    ],
  );
}
