import 'package:flutter_test/flutter_test.dart';
import 'package:music_player_app/main.dart';

void main() {
  testWidgets('Verifica renderizado inicial de la app', (WidgetTester tester) async {
    // Construye la app y dispara un frame.
    await tester.pumpWidget(const MiReproductorApp());

    // Verifica que exista el mensaje de bienvenida
    expect(find.text('¡Listos para agrupar tu música por géneros!'), findsOneWidget);
  });
}