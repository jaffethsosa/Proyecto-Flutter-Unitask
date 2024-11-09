import 'package:app_fluter_unitask/presentation/screen/home/home.dart';
import 'package:go_router/go_router.dart';

final mainRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  )
]);
