import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../domain/identification_state.dart';
import '../../domain/plant_info.dart';
import '../providers/plant_identification_provider.dart';
import '../widgets/error_view.dart';
import '../widgets/loading_indicator.dart';
import '../widgets/plant_info_card.dart';

class PlantResultScreen extends ConsumerStatefulWidget {
  const PlantResultScreen({super.key});

  @override
  ConsumerState<PlantResultScreen> createState() => _PlantResultScreenState();
}

class _PlantResultScreenState extends ConsumerState<PlantResultScreen> {
  bool _snackBarShown = false;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(plantIdentificationProvider);

    // Mostrar SnackBar una sola vez cuando hay éxito
    if (state is IdentificationSuccess && !_snackBarShown) {
      _snackBarShown = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Row(
                children: [
                  Icon(Icons.check_circle, color: Colors.white),
                  SizedBox(width: 8),
                  Text('Guardado en Mis Plantas'),
                ],
              ),
              backgroundColor: Colors.green.shade700,
              duration: const Duration(seconds: 3),
              behavior: SnackBarBehavior.floating,
              action: SnackBarAction(
                label: 'Ver',
                textColor: Colors.white,
                onPressed: () => context.go('/my-plants'),
              ),
            ),
          );
        }
      });
    }

    return Scaffold(
      body: switch (state) {
        IdentificationLoading(:final imageBytes) =>
          LoadingIndicator(imageBytes: imageBytes),
        IdentificationSuccess(:final imageBytes, :final plantInfo) =>
          _SuccessView(imageBytes: imageBytes, plantInfo: plantInfo),
        IdentificationError(:final message) => ErrorView(
            message: message,
            onRetry: () =>
                ref.read(plantIdentificationProvider.notifier).retry(),
            onGoBack: () {
              ref.read(plantIdentificationProvider.notifier).reset();
              context.go('/');
            },
          ),
        _ => const SizedBox.shrink(),
      },
    );
  }
}

class _SuccessView extends StatelessWidget {
  final Uint8List imageBytes;
  final PlantInfo plantInfo;

  const _SuccessView({
    required this.imageBytes,
    required this.plantInfo,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return CustomScrollView(
      slivers: [
        // Hero image with plant name overlay
        SliverAppBar(
          expandedHeight: 300,
          pinned: true,
          leading: BackButton(
            onPressed: () {
              context.go('/');
            },
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              fit: StackFit.expand,
              children: [
                Image.memory(imageBytes, fit: BoxFit.cover),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black87],
                    ),
                  ),
                ),
              ],
            ),
            title: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  plantInfo.commonName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  plantInfo.scientificName,
                  style: const TextStyle(
                    fontSize: 13,
                    fontStyle: FontStyle.italic,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
            titlePadding: const EdgeInsets.only(left: 16, bottom: 16),
          ),
        ),

        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),

              // Confidence indicator
              if (plantInfo.confidence < 0.5)
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.amber.shade50,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.amber.shade300),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.warning_amber, color: Colors.amber.shade700),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'La identificaci\u00f3n podr\u00eda no ser precisa. Intenta con una foto m\u00e1s clara.',
                          style: TextStyle(color: Colors.amber.shade900, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),

              // Family and description
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Chip(
                      label: Text(plantInfo.family),
                      avatar: Icon(Icons.family_restroom,
                          size: 18, color: colorScheme.primary),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      plantInfo.description,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),

              // Care instructions
              PlantInfoCard(
                title: 'Cuidados',
                icon: Icons.water_drop,
                rows: [
                  PlantInfoRow(
                      label: 'Riego',
                      value: plantInfo.careInstructions.wateringFrequency),
                  PlantInfoRow(
                      label: 'Luz',
                      value: plantInfo.careInstructions.sunlightNeeds),
                  PlantInfoRow(
                      label: 'Suelo',
                      value: plantInfo.careInstructions.soilType),
                  PlantInfoRow(
                      label: 'Temperatura',
                      value: plantInfo.careInstructions.temperatureRange),
                  PlantInfoRow(
                      label: 'Humedad',
                      value: plantInfo.careInstructions.humidity),
                  PlantInfoRow(
                      label: 'Fertilizante',
                      value: plantInfo.careInstructions.fertilizerSchedule),
                  PlantInfoRow(
                      label: 'Poda',
                      value: plantInfo.careInstructions.pruningTips),
                ],
              ),

              // Climate info
              PlantInfoCard(
                title: 'Clima',
                icon: Icons.wb_sunny,
                rows: [
                  PlantInfoRow(
                      label: 'Origen',
                      value: plantInfo.climateInfo.nativeRegion),
                  PlantInfoRow(
                      label: 'Zonas USDA',
                      value: plantInfo.climateInfo.hardinessZones),
                  PlantInfoRow(
                      label: 'Clima ideal',
                      value: plantInfo.climateInfo.climatePreference),
                  PlantInfoRow(
                      label: 'Ubicaci\u00f3n',
                      value: plantInfo.climateInfo.indoorOutdoor),
                ],
              ),

              // Pests and diseases
              if (plantInfo.pestsAndDiseases.isNotEmpty)
                _PestsCard(pests: plantInfo.pestsAndDiseases),

              // Fun facts
              if (plantInfo.funFacts.isNotEmpty)
                _FunFactsCard(facts: plantInfo.funFacts),

              // Identify another button
              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    onPressed: () => context.go('/'),
                    icon: const Icon(Icons.camera_alt),
                    label: const Text('Identificar otra planta'),
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),
            ],
          ),
        ),
      ],
    );
  }
}

class _PestsCard extends StatelessWidget {
  final List<PestDisease> pests;

  const _PestsCard({required this.pests});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.bug_report, color: colorScheme.primary, size: 22),
                const SizedBox(width: 8),
                Text(
                  'Plagas y Enfermedades',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.primary,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            ...pests.map((pest) => Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: colorScheme.surfaceContainerHighest.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                              color: pest.type == 'pest'
                                  ? Colors.orange.shade100
                                  : Colors.red.shade100,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              pest.type == 'pest' ? 'Plaga' : 'Enfermedad',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: pest.type == 'pest'
                                    ? Colors.orange.shade800
                                    : Colors.red.shade800,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              pest.name,
                              style: const TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'S\u00edntomas: ${pest.symptoms}',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Tratamiento: ${pest.treatment}',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: colorScheme.primary,
                            ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class _FunFactsCard extends StatelessWidget {
  final List<String> facts;

  const _FunFactsCard({required this.facts});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.lightbulb_outline,
                    color: colorScheme.primary, size: 22),
                const SizedBox(width: 8),
                Text(
                  'Datos Curiosos',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.primary,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            ...facts.asMap().entries.map((entry) => Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${entry.key + 1}. ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: colorScheme.primary,
                        ),
                      ),
                      Expanded(
                        child: Text(entry.value),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
