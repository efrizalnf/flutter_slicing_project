import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/module/login/view/login_view4.dart';
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
      home: const LoginView4(),
      navigatorKey: Get.navigatorKey,
    );
  }

  group(
    'Widget testing for ELogin4:',
    () {
      testWidgets(
        'Ensurign the Image widget for logo is appearing',
        (widgetTester) async {
          await widgetTester.pumpWidget(widgetUnderTest());
          expect(find.byType(Image), findsOneWidget);
        },
      );
      testWidgets(
        'description',
        (widgetTester) async {},
      );
      testWidgets(
        'description',
        (widgetTester) async {},
      );
      testWidgets(
        'description',
        (widgetTester) async {},
      );
      testWidgets(
        'description',
        (widgetTester) async {},
      );
      testWidgets(
        'description',
        (widgetTester) async {},
      );
    },
  );
}
