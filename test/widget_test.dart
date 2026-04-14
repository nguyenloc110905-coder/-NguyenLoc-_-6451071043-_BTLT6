// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:nguyen_loc_btlt6/main.dart';

void main() {
  testWidgets('Main menu smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MainMenuApp());
    expect(find.text('MSSV: 6451071043'), findsWidgets);
  });
}
