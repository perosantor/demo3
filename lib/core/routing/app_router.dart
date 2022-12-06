import 'package:demo3/features/presentation/widgets/jobs_screen.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  main,
}

final goRouter = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const JobsScreen(),
      name: AppRoute.main.name,
    ),
  ],
);