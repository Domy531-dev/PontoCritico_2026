import 'package:flutter_test/flutter_test.dart';

import 'package:ponto_critico/main.dart';

void main() {

  testWidgets(
    'PontoCritico app loads correctly',

    (WidgetTester tester) async {

      await tester.pumpWidget(
        const PontoCriticoApp(),
      );

      expect(
        find.text('PontoCrítico'),
        findsOneWidget,
      );
    },
  );
}
