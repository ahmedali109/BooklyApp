import 'package:bookly_app/core/helper/widget/box_action.dart';
import 'package:bookly_app/core/helper/widget/similar_books_list_view.dart';
import 'package:bookly_app/core/util/constant/style.dart';
import 'package:bookly_app/features/home/presentation/view/widget/book_rating.dart';
import 'package:bookly_app/features/home/presentation/view/widget/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/view/widget/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.2),
                  child: const CustomListViewItem(),
                ),
                const SizedBox(height: 45),
                const Text(
                  "The Jungle Book",
                  style: Styles.textStyle30,
                ),
                const SizedBox(height: 6),
                Text(
                  "Rudyard Kipling",
                  style: Styles.textStyle18.copyWith(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 18),
                const BookRating(),
                const SizedBox(height: 37),
                const BooksActions(),
                const Expanded(child: SizedBox(height: 50)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You can also like",
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const SimilarBooksListView(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
