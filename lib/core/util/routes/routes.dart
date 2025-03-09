import 'package:bookly_app/features/home/presentation/view/home_view.dart';
import 'package:bookly_app/features/splach/presentation/view/splach_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static final route = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplachView(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
