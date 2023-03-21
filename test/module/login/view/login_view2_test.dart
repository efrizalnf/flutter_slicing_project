import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget widgetUnderTest() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
            .copyWith(background: Colors.white),
      ),
      home: const LoginView2(),
      navigatorKey: Get.navigatorKey,
    );
  }

  group(
    'Widget testing for ELogin2:',
    () {
      testWidgets(
        'Ensuring the Icon widget for logo is appearing',
        (widgetTester) async {
          await widgetTester.pumpWidget(widgetUnderTest());
          expect(find.byType(Icon), findsOneWidget);
        },
      );
      testWidgets(
        'Ensuring there is Text widget "Scheme iOS Wireframe Layouts"',
        (widgetTester) async {
          await widgetTester.pumpWidget(widgetUnderTest());
          expect(find.text('Scheme\niOS Wireframe\nLayouts'), findsOneWidget);
        },
      );
      testWidgets(
        'Ensuring there is Text widget "Biggest collection of 300+ layouts for iOS prototyping."',
        (widgetTester) async {
          await widgetTester.pumpWidget(widgetUnderTest());
          expect(
              find.text(
                  'Biggest collection of 300+ layouts\nfor iOS prototyping.'),
              findsOneWidget);
        },
      );
      testWidgets(
        'Ensuring there is Text widget "Use Facebook to find your friends"',
        (widgetTester) async {
          await widgetTester.pumpWidget(widgetUnderTest());
          expect(
              find.text('Use Facebook to find your friends'), findsOneWidget);
        },
      );
      testWidgets(
        'Ensuring there is a Login with Facebook button',
        (widgetTester) async {
          await widgetTester.pumpWidget(widgetUnderTest());

          final loginButton = find.ancestor(
            of: find.text('Log In with Facebook'),
            matching: find.byType(ElevatedButton),
          );

          expect(loginButton, findsOneWidget);
        },
      );
    },
  );
}
