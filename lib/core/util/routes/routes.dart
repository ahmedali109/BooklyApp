import 'package:bookly_app/core/util/constant/strings.dart';
import 'package:bookly_app/features/home/presentation/view/home_view.dart';
import 'package:get/get.dart';

class AppRoutes{
  static var home = Get.to(
    () =>  const HomeView(),
    transition: Transition.fade,
    duration: kFadeDuration,
  );
}
