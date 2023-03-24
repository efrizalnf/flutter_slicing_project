import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/module/login/view/login_view3.dart';
import 'package:flutter_slicing_project/state_util.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget widgetUnderTest() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
            .copyWith(background: Colors.white),
      ),
      home: const LoginView3(),
      navigatorKey: Get.navigatorKey,
    );
  }

  group(
    'Widget testing for ELogin3:',
    () {
      testWidgets(
        'Ensuring the Icon widget for logo is appearing',
        (widgetTester) async {
          await widgetTester.pumpWidget(widgetUnderTest());
          expect(find.byType(Image), findsOneWidget);
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
        'Ensuring there is Text widget "Login with social networks"',
        (widgetTester) async {
          await widgetTester.pumpWidget(widgetUnderTest());
          expect(find.text('Login with social networks'), findsOneWidget);
        },
      );
      testWidgets(
        'Ensuring there are Login with Facebook and Twitter button',
        (widgetTester) async {
          await widgetTester.pumpWidget(widgetUnderTest());

          final loginWFacebook = find.ancestor(
            of: find.text('Facebook'),
            matching: find.byType(ElevatedButton),
          );

          final loginWTwitter = find.ancestor(
            of: find.text('Twitter'),
            matching: find.byType(ElevatedButton),
          );

          expect(loginWFacebook, findsOneWidget);
          expect(loginWTwitter, findsOneWidget);
          // expect(find.byType(IconData), findsNWidgets(2));
        },
      );
      testWidgets(
        'Ensuring there is Text widget "or sign up with Email"',
        (widgetTester) async {
          await widgetTester.pumpWidget(widgetUnderTest());
          expect(find.text('or sign up with Email'), findsOneWidget);
        },
      );
      testWidgets(
        'Ensuring there is Signup with Email button',
        (widgetTester) async {
          await widgetTester.pumpWidget(widgetUnderTest());

          final signupWEmail = find.ancestor(
            of: find.text('Sign Up'),
            matching: find.byType(ElevatedButton),
          );

          expect(signupWEmail, findsOneWidget);
        },
      );
      testWidgets(
        'Ensuring there is a Text Login with Email button',
        (widgetTester) async {
          await widgetTester.pumpWidget(widgetUnderTest());

          final loginWEmail = find.ancestor(
            of: find.text('Login with Email'),
            matching: find.byType(TextButton),
          );

          expect(loginWEmail, findsOneWidget);
        },
      );
    },
  );
}
