import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../data/image_service.dart';
import '../../domain/identification_state.dart';
import '../providers/plant_identification_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final cameraSupported = ImageService().cameraSupported;

    ref.listen<IdentificationState>(
      plantIdentificationProvider,
      (previous, next) {
        if (next is IdentificationLoading) {
          context.push('/result');
        }
      },
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const Spacer(flex: 2),
              // App icon
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: colorScheme.primaryContainer,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.eco,
                  size: 60,
                  color: colorScheme.primary,
                ),
              ),
              const SizedBox(height: 24),
              // App name
              Text(
                'Plantify',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.primary,
                    ),
              ),
              const SizedBox(height: 8),
              Text(
                'Identifica cualquier planta con una foto',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                textAlign: TextAlign.center,
              ),
              const Spacer(flex: 3),
              // Camera button
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  onPressed: () {
                    ref
                        .read(plantIdentificationProvider.notifier)
                        .identifyFromCamera();
                  },
                  icon: Icon(cameraSupported ? Icons.camera_alt : Icons.photo_library),
                  label: Text(cameraSupported ? 'Tomar Foto' : 'Elegir Foto'),
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Gallery button
              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  onPressed: () {
                    ref
                        .read(plantIdentificationProvider.notifier)
                        .identifyFromGallery();
                  },
                  icon: const Icon(Icons.photo_library),
                  label: const Text('Elegir de Galería'),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
