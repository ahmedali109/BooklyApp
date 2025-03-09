import 'package:bookly_app/core/util/constant/assets.dart';
import 'package:bookly_app/core/util/constant/style.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        spacing: 30,
        children: [
          AspectRatio(
            aspectRatio: 2.2 / 3.4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage(AssetsData.bookCover),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 3,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: const Text(
                  "Harry Potter and the goblet of fire",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: const Text(
                  "J.K. Rowling",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle14,
                ),
              ),
              Row(
                children: [
                  Text(
                    r"19.99$",
                    style: Styles.textStyle20
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
