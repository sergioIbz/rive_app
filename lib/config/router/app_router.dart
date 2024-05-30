import 'package:go_router/go_router.dart';
import 'package:rive_app/presentation/screens/home/home_screen.dart';
import 'package:rive_app/presentation/screens/state_provider/state_provider_screen.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/state-provider',
      builder: (context, state) => const StateProviderScreen(),
    ),
  ],
);
