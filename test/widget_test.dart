// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:quiz_flutter/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(PerguntaApp());

    expect(find.text('Qual é sua cor favorita?'), findsOneWidget);
    expect(find.text('Vermelho'), findsOneWidget);
    expect(find.text('Preto'), findsOneWidget);
    expect(find.text('Reiniciar'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.text('Vermelho'));
    await tester.pump();
    await tester.tap(find.text('Gato'));
    await tester.pump();
    await tester.tap(find.text('Pizza'));
    await tester.pump();
    await tester.tap(find.text('Outono'));
    await tester.pump();

    // // Verify that our counter has incremented.
    expect(find.text('Nivel Máximo'), findsOneWidget);
    expect(find.text('Parabéns'), findsNothing);

    await tester.tap(find.text('Reiniciar'));
    await tester.pump();

    // expect(find.text('Qual a sua cor favorita?'), findsOneWidget);
    expect(find.text('Vermelho'), findsOneWidget);
    expect(find.text('Preto'), findsOneWidget);
    expect(find.text('Reiniciar'), findsNothing);
  });
}
