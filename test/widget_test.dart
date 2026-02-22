import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:plant_id/app.dart';

void main() {
  testWidgets('App renders home screen', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(child: PlantIdApp()),
    );

    expect(find.text('PlantID'), findsOneWidget);
    expect(find.text('Tomar Foto'), findsOneWidget);
    expect(find.text('Elegir de Galería'), findsOneWidget);
  });
}
