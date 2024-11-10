import 'package:app_fluter_unitask/presentation/screen/index.dart';
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
      path: '/notice',
      builder: (context, state) => const NoticeScreen(),
    ),
    GoRoute(
      path: '/task',
      builder: (context, state) => const TaskScreen(),
    ),
    GoRoute(
      path: '/setting',
      builder: (context, state) => const SettingScreen(),
    ),
  ],
);
