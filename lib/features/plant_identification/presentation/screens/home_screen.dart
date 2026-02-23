import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../data/image_service.dart';
import '../../domain/identification_state.dart';
import '../providers/plant_identification_provider.dart';
import '../../../usage/presentation/providers/usage_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  Future<void> _handleIdentify(
    BuildContext context,
    WidgetRef ref,
    bool fromCamera,
  ) async {
    final canIdentify = await ref.read(usageNotifierProvider.notifier).canIdentify();
    if (!context.mounted) return;
    if (!canIdentify) {
      context.push('/paywall');
      return;
    }
    if (fromCamera) {
      ref.read(plantIdentificationProvider.notifier).identifyFromCamera();
    } else {
      ref.read(plantIdentificationProvider.notifier).identifyFromGallery();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final cameraSupported = ImageService().cameraSupported;
    final usageAsync = ref.watch(usageNotifierProvider);

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
                decoration: const BoxDecoration(
                  color: Color(0xFF2E7D32),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.eco,
                  size: 60,
                  color: Colors.white,
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
                  onPressed: () => _handleIdentify(context, ref, true),
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
                  onPressed: () => _handleIdentify(context, ref, false),
                  icon: const Icon(Icons.photo_library),
                  label: const Text('Elegir de Galería'),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Indicador de usos restantes
              usageAsync.when(
                data: (remaining) {
                  final isEmpty = remaining == 0;
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        isEmpty ? Icons.lock_outline : Icons.eco_outlined,
                        size: 14,
                        color: isEmpty ? Colors.red.shade300 : Colors.green.shade600,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        isEmpty
                            ? 'Límite diario alcanzado'
                            : '$remaining de 3 identificaciones restantes hoy',
                        style: TextStyle(
                          fontSize: 12,
                          color: isEmpty ? Colors.red.shade300 : Colors.black38,
                        ),
                      ),
                    ],
                  );
                },
                loading: () => const SizedBox(height: 18),
                error: (_, __) => const SizedBox(height: 18),
              ),
              const Spacer(),
              // Version number
              Align(
                alignment: Alignment.centerRight,
                child: FutureBuilder<PackageInfo>(
                  future: PackageInfo.fromPlatform(),
                  builder: (context, snapshot) {
                    final version = snapshot.data?.version ?? '';
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Text(
                        'v$version',
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.black38,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
