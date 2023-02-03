import 'package:encontre_por_cep/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:encontre_por_cep/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  Widget makeTestable(Widget widget) => MaterialApp(home: widget);
  group(
    'Testes da home',
    () {
      testWidgets(
        'should find the ite',
        (WidgetTester tester) async {
          app.main();
          await tester.pumpAndSettle();
          await tester.pumpWidget(makeTestable(const HomePage()));
          expect(find.text('1'), findsOneWidget);
          final finder = find.byType(FloatingActionButton);
          for (var i = 1; i <= 5; i++) {
            await tester.tap(finder);
            await Future.delayed(const Duration(seconds: 1));
          }

          await tester.pumpAndSettle();

          // expect(find.text('6'), findsOneWidget);
          //7 await tester.enterText(find.byType(TextField), '1234');
          await Future.delayed(const Duration(seconds: 3));
        },
      );
    },
  );
}
