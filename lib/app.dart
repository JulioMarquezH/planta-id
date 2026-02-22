import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'router.dart';

class PlantIdApp extends StatelessWidget {
  const PlantIdApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'PlantID',
      theme: AppTheme.light,
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
