import 'package:bookly_app/core/util/constant/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 10,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color:  Color(0xffffdd4f),
          size: 14,
        ),
        const Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        Text(
          "(2450)",
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
