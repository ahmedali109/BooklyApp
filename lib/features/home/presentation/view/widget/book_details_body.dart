import 'package:bookly_app/core/helper/widget/box_action.dart';
import 'package:bookly_app/core/helper/widget/similar_books_list_view.dart';
import 'package:bookly_app/core/util/constant/style.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/view/widget/book_rating.dart';
import 'package:bookly_app/features/home/presentation/view/widget/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/view/widget/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});
  final BookModel bookModel;
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
                  child: CustomListViewItem(
                      imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
                ),
                const SizedBox(height: 45),
                Text(
                  textAlign: TextAlign.center,
                  bookModel.volumeInfo.title ?? '',
                  style: Styles.textStyle30,
                ),
                const SizedBox(height: 6),
                Text(
                  bookModel.volumeInfo.authors?[0] ?? '',
                  style: Styles.textStyle18.copyWith(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 18),
                const BookRating(
                  rating: 0,
                  ratingCount: 0,
                ),
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
