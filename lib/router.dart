import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'features/plant_history/presentation/screens/my_plants_screen.dart';
import 'features/plant_history/presentation/screens/plant_history_detail_screen.dart';
import 'features/plant_identification/presentation/screens/home_screen.dart';
import 'features/plant_identification/presentation/screens/plant_result_screen.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) =>
          _AppShell(child: child, location: state.uri.toString()),
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomeScreen(),
          routes: [
            GoRoute(
              path: 'result',
              builder: (context, state) => const PlantResultScreen(),
            ),
          ],
        ),
        GoRoute(
          path: '/my-plants',
          builder: (context, state) => const MyPlantsScreen(),
          routes: [
            GoRoute(
              path: ':id',
              builder: (context, state) => PlantHistoryDetailScreen(
                entryId: state.pathParameters['id']!,
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);

class _AppShell extends StatelessWidget {
  final Widget child;
  final String location;

  const _AppShell({required this.child, required this.location});

  int get _selectedIndex {
    if (location.startsWith('/my-plants')) return 1;
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    // Ocultar bottom nav en la pantalla de resultado
    final showNav = !location.startsWith('/result');

    return Scaffold(
      body: child,
      bottomNavigationBar: showNav
          ? NavigationBar(
              selectedIndex: _selectedIndex,
              onDestinationSelected: (index) {
                if (index == 0) context.go('/');
                if (index == 1) context.go('/my-plants');
              },
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.search_outlined),
                  selectedIcon: Icon(Icons.search),
                  label: 'Identificar',
                ),
                NavigationDestination(
                  icon: Icon(Icons.yard_outlined),
                  selectedIcon: Icon(Icons.yard),
                  label: 'Mis Plantas',
                ),
              ],
            )
          : null,
    );
  }
}
