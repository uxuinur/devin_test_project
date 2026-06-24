// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:testp1/main.dart';
import 'package:testp1/onboarding_01.dart';

void main() {
  testWidgets('Onboarding screen displays expected content', (WidgetTester tester) async {
    enableFlutterTestMode();
    await tester.pumpWidget(const MyApp());

    expect(find.text('Discover through content'), findsOneWidget);
    expect(find.text('Find products you love through real posts from real people. Shop the feed.'), findsOneWidget);
    expect(find.text('Skip'), findsOneWidget);
    expect(find.byIcon(Icons.arrow_forward), findsOneWidget);
  });
}
