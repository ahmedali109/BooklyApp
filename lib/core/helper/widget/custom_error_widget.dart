import 'package:bookly_app/core/util/constant/style.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.err});
  final String err;
  @override
  Widget build(BuildContext context) {
    return Text(
      err,
      style: Styles.textStyle18,
    );
  }
}
