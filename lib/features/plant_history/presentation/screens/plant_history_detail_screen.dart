import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../plant_identification/domain/plant_info.dart';
import '../../../plant_identification/presentation/widgets/plant_info_card.dart';
import '../../domain/plant_history_entry.dart';
import '../providers/plant_history_provider.dart';

class PlantHistoryDetailScreen extends ConsumerWidget {
  final String entryId;

  const PlantHistoryDetailScreen({super.key, required this.entryId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final historyAsync = ref.watch(plantHistoryProvider);

    return historyAsync.when(
      loading: () => const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (e, _) => Scaffold(body: Center(child: Text('Error: $e'))),
      data: (entries) {
        final entry = entries.firstWhere(
          (e) => e.id == entryId,
          orElse: () => throw Exception('Planta no encontrada'),
        );
        return _DetailView(entry: entry);
      },
    );
  }
}

class _DetailView extends ConsumerWidget {
  final PlantHistoryEntry entry;

  const _DetailView({required this.entry});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final plantInfo = entry.plantInfo;
    final displayName = entry.nickname ?? plantInfo.commonName;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Hero image
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            leading: BackButton(onPressed: () => context.pop()),
            actions: [
              IconButton(
                icon: const Icon(Icons.edit_outlined),
                tooltip: 'Cambiar nombre',
                onPressed: () => _showRenameDialog(context, ref),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  _buildImage(),
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
                    displayName,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  if (entry.nickname != null)
                    Text(
                      plantInfo.commonName,
                      style: const TextStyle(fontSize: 12, color: Colors.white70),
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

                // Confianza y advertencia
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
                            'La identificación podría no ser precisa.',
                            style: TextStyle(color: Colors.amber.shade900, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),

                // Familia y descripción
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Chip(
                            label: Text(plantInfo.family),
                            avatar: Icon(Icons.family_restroom, size: 18, color: colorScheme.primary),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            plantInfo.scientificName,
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: colorScheme.onSurfaceVariant,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(plantInfo.description, style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  ),
                ),

                // Cuidados
                PlantInfoCard(
                  title: 'Cuidados',
                  icon: Icons.water_drop,
                  rows: [
                    PlantInfoRow(label: 'Riego', value: plantInfo.careInstructions.wateringFrequency),
                    PlantInfoRow(label: 'Luz', value: plantInfo.careInstructions.sunlightNeeds),
                    PlantInfoRow(label: 'Suelo', value: plantInfo.careInstructions.soilType),
                    PlantInfoRow(label: 'Temperatura', value: plantInfo.careInstructions.temperatureRange),
                    PlantInfoRow(label: 'Humedad', value: plantInfo.careInstructions.humidity),
                    PlantInfoRow(label: 'Fertilizante', value: plantInfo.careInstructions.fertilizerSchedule),
                    PlantInfoRow(label: 'Poda', value: plantInfo.careInstructions.pruningTips),
                  ],
                ),

                // Clima
                PlantInfoCard(
                  title: 'Clima',
                  icon: Icons.wb_sunny,
                  rows: [
                    PlantInfoRow(label: 'Origen', value: plantInfo.climateInfo.nativeRegion),
                    PlantInfoRow(label: 'Zonas USDA', value: plantInfo.climateInfo.hardinessZones),
                    PlantInfoRow(label: 'Clima ideal', value: plantInfo.climateInfo.climatePreference),
                    PlantInfoRow(label: 'Ubicación', value: plantInfo.climateInfo.indoorOutdoor),
                  ],
                ),

                // Plagas
                if (plantInfo.pestsAndDiseases.isNotEmpty)
                  _PestsCard(pests: plantInfo.pestsAndDiseases),

                // Datos curiosos
                if (plantInfo.funFacts.isNotEmpty)
                  _FunFactsCard(facts: plantInfo.funFacts),

                const SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImage() {
    final file = File(entry.imagePath);
    if (file.existsSync()) {
      return Image.file(file, fit: BoxFit.cover);
    }
    return Container(color: Colors.grey.shade300, child: const Icon(Icons.image_not_supported));
  }

  void _showRenameDialog(BuildContext context, WidgetRef ref) {
    final controller = TextEditingController(text: entry.nickname ?? '');
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Nombre de tu planta'),
        content: TextField(
          controller: controller,
          autofocus: true,
          decoration: InputDecoration(
            hintText: entry.plantInfo.commonName,
            labelText: 'Apodo o nombre',
            border: const OutlineInputBorder(),
          ),
          textCapitalization: TextCapitalization.sentences,
          onSubmitted: (_) => _saveNickname(ctx, ref, controller.text),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () => _saveNickname(ctx, ref, controller.text),
            child: const Text('Guardar'),
          ),
        ],
      ),
    );
  }

  void _saveNickname(BuildContext ctx, WidgetRef ref, String value) {
    Navigator.pop(ctx);
    ref.read(plantHistoryProvider.notifier).rename(entry.id, value);
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
                Text('Plagas y Enfermedades',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold, color: colorScheme.primary)),
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
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                              color: pest.type == 'pest' ? Colors.orange.shade100 : Colors.red.shade100,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              pest.type == 'pest' ? 'Plaga' : 'Enfermedad',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: pest.type == 'pest' ? Colors.orange.shade800 : Colors.red.shade800,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(child: Text(pest.name, style: const TextStyle(fontWeight: FontWeight.w600))),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Text('Síntomas: ${pest.symptoms}', style: Theme.of(context).textTheme.bodySmall),
                      const SizedBox(height: 4),
                      Text('Tratamiento: ${pest.treatment}',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(color: colorScheme.primary)),
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
                Icon(Icons.lightbulb_outline, color: colorScheme.primary, size: 22),
                const SizedBox(width: 8),
                Text('Datos Curiosos',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold, color: colorScheme.primary)),
              ],
            ),
            const SizedBox(height: 12),
            ...facts.asMap().entries.map((e) => Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${e.key + 1}. ',
                          style: TextStyle(fontWeight: FontWeight.bold, color: colorScheme.primary)),
                      Expanded(child: Text(e.value)),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
