import 'package:bookly_app/core/util/constant/style.dart';
import 'package:bookly_app/features/search/presentation/view/widget/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/view/widget/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          CustomSearchTextField(),
          Text(
            "Results",
            style: Styles.textStyle20,
          ),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
