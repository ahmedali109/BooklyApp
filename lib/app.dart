import 'package:bookly_app/core/util/constant/colors.dart';
import 'package:bookly_app/core/util/routes/routes.dart';
import 'package:flutter/material.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.route,
      title: 'Bookly',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryColor,
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
    );
  }
}
