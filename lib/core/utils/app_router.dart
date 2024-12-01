import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_screen_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
abstract class AppRouter{
  static const homeView='/HomeView';
  static const bookDetailsView='/BookDetailsView';
  static const searchScreenView='/SearchScreenView';
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
              return const BookDetailsView(
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
