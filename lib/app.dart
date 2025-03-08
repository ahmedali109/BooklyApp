import 'package:bookly_app/core/util/constant/colors.dart';
import 'package:bookly_app/features/splach/presentation/view/splach_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bookly',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryColor,
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        useMaterial3: false,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      home: const SplachView(),
    );
  }
}
