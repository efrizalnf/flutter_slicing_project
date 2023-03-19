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
      home: const LoginView(),
      navigatorKey: Get.navigatorKey,
    );
  }

  group(
    'Widget testing for ELogin1:',
    () {
      testWidgets(
        'Ensuring text and icon widget appears on the screen',
        (widgetTester) async {
          String text1 = 'Welcome\nto MagicBook';
          String text2 =
              'Biggest collection of 300+ layouts\nfor iOS prototyping.';

          await widgetTester.pumpWidget(widgetUnderTest());

          expect(find.text(text1), findsOneWidget);
          expect(find.text(text2), findsOneWidget);
          expect(find.byType(Image), findsOneWidget);
        },
      );

      testWidgets(
        'Ensuring textfield widget for email and password appears on the screen',
        (widgetTester) async {
          await widgetTester.pumpWidget(widgetUnderTest());
          expect(find.text('Email'), findsOneWidget);
          expect(find.text('Password'), findsOneWidget);
        },
      );

      testWidgets(
        'Ensuring the email and password field are editable',
        (widgetTester) async {
          await widgetTester.pumpWidget(widgetUnderTest());
          final emailField = find.ancestor(
            of: find.text('Email'),
            matching: find.byType(TextField),
          );

          final passwordField = find.ancestor(
            of: find.text('Password'),
            matching: find.byType(TextField),
          );

          await widgetTester.enterText(emailField, 'email');
          await widgetTester.enterText(passwordField, 'password');
          expect(find.text('email'), findsOneWidget);
          expect(find.text('password'), findsOneWidget);
        },
      );

      testWidgets(
        'Ensuring login button, forgot password button and signup button widget appears on the screen',
        (widgetTester) async {
          await widgetTester.pumpWidget(widgetUnderTest());

          // Finding by text on the buttons
          expect(find.text('Login'), findsOneWidget);
          expect(find.text('Forgot password?'), findsOneWidget);
          expect(find.text('Sign Up'), findsOneWidget);

          // Finding by the type of the buttons
          expect(find.byType(ElevatedButton), findsWidgets);
          expect(find.byType(ElevatedButton), findsNWidgets(2));
          expect(find.byType(TextButton), findsOneWidget);
        },
      );
    },
  );
}
