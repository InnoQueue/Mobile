// ignore_for_file: import_of_legacy_library_into_null_safe
// @dart=2.9


import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:inno_queue/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('App Test', () {
    testWidgets("'create queue' bottom sheet pulls up", (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // find.byKey(const Key("arrowFwd"));
    });
  });
}
