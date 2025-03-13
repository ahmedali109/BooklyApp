import 'package:bookly_app/core/util/constant/style.dart';
import 'package:bookly_app/features/home/presentation/view/widget/best_seller_list_view.dart';
import 'package:bookly_app/features/splach/presentation/view/widget/custom_app_bar.dart';
import 'package:bookly_app/features/splach/presentation/view/widget/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedBooksListView(),
                SizedBox(height: 40),
                Text(
                  "Best Sellers",
                  style: Styles.textStyle18,
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        BestSellerListView(),
      ],
    );
  }
}
