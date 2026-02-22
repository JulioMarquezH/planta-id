import 'package:go_router/go_router.dart';

import 'features/plant_identification/presentation/screens/home_screen.dart';
import 'features/plant_identification/presentation/screens/plant_result_screen.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/result',
      builder: (context, state) => const PlantResultScreen(),
    ),
  ],
);
