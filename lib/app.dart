import 'package:bookly_app/features/splach/presentation/view/splach_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bookly',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      home: const SplachView()
    );
  }
}
