import 'package:bookly_app/core/util/constant/colors.dart';
import 'package:bookly_app/core/util/routes/routes.dart';
import 'package:bookly_app/core/util/service/service_locator.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manger/featured_books/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manger/newest_news/newest_news_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewsetNewsCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewestBooks(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.route,
        title: 'Bookly',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: kPrimaryColor,
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
          useMaterial3: false,
        ),
      ),
    );
  }
}
