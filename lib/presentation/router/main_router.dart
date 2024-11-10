import 'package:app_fluter_unitask/presentation/screen/home/home_screen.dart';
import 'package:app_fluter_unitask/presentation/screen/perfil/perfil_screen.dart';
import 'package:app_fluter_unitask/presentation/screen/task/task_screen.dart';
import 'package:go_router/go_router.dart';

final mainRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/perfil',
      builder: (context, state) => const PerfilScreen(),
    ),
    GoRoute(
      path: '/task',
      builder: (context, state) => const TaskScreen(),
    ),
  ],
);
