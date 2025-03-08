import 'package:bookly_app/features/splach/presentation/view/widget/custom_app_bar.dart';
import 'package:bookly_app/features/splach/presentation/view/widget/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
      ],
    );
  }
}
