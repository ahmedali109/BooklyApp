import 'dart:io';

import 'package:bookly_app/core/helper/widget/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/manger/featured_books/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widget/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
       if (state is FeaturedBookFailure) {
          return Center(
            child: CustomErrorWidget(err: state.message),
          );
        }
        else if(state is FeaturedBooksSuccess){
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: CustomListViewItem(
                      imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail),
              );
            },
          ),
        );
        }
         return Transform.scale(
          scale: Platform.isIOS ? 1.5 : 1,
          child: const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        );
      },
    );
  }
}
