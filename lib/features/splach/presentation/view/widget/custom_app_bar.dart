import 'package:bookly_app/core/util/constant/assets.dart';
import 'package:bookly_app/core/util/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              AssetsData.logo,
              height: 20,
            ),
            IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRoutes.kSearch);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
