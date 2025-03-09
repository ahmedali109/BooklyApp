import 'package:bookly_app/features/home/presentation/view/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/view/home_view.dart';
import 'package:bookly_app/features/splach/presentation/view/splach_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static final kSplach = '/';
  static final kHome = '/home';
  static final kBookDetails = '/book-details';
  static final route = GoRouter(
    routes: [
      GoRoute(
        path: kSplach,
        builder: (context, state) => const SplachView(),
      ),
      GoRoute(
        path: kHome,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetails,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
