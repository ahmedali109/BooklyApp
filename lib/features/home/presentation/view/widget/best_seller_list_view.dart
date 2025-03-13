import 'dart:io';

import 'package:bookly_app/core/helper/widget/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/manger/newest_news/newest_news_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widget/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetNewsCubit, NewsetNewsState>(
      builder: (context, state) {
        if (state is NewsetNewsSuccess) {
          return SliverList.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: BestSellerListViewItem(
                  books: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewsetNewsFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(err: state.message),
          );
        }
        return SliverFillRemaining(
          child: Transform.scale(
            scale: Platform.isIOS ? 1.5 : 1.0,
            child: const Center(child: CircularProgressIndicator.adaptive()),
          ),
        );
      },
    );
  }
}
