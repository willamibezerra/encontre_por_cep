import 'package:encontre_por_cep/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'should find the itens',
    (tester) async {
      await tester.pumpWidget(const HomePage());
      expect(find.text('1'), findsOneWidget);
      final finder = find.byType(FloatingActionButton);
      await tester.tap(finder);
      await tester.pump();
      expect(find.text('2'), findsOneWidget);
    },
  );
}
