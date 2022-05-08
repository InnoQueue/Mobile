import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inno_queue/features/features.dart';
import 'package:provider/src/provider.dart';
import 'package:provider/src/change_notifier_provider.dart';
import 'package:inno_queue/core/provider/theme_provider.dart';
import 'package:inno_queue/core/provider/language_provider.dart';

void main() {
  testWidgets("create queue bottom sheet pulls up", (WidgetTester tester) async {
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<ThemeProvider>(
            create: (_) => ThemeProvider()..initialize(),
          ),
          ChangeNotifierProvider<LanguageProvider>(
            create: (_) => LanguageProvider()..initialize(),
          ),
        ],
        child: MaterialApp(
          home: Scaffold(
            body: Container(),
            floatingActionButton: AddButton(key: Key("CreateQueueBottomSheet")),
          ),
        ),
      ),
    );

    final addButton = find.byKey(const ValueKey("CreateQueueBottomSheet"));

    await tester.tap(addButton);
    await tester.pumpAndSettle();
    await tester.pump();

    final x = find.byElementType(QueueBottomSheet);

    // print(x.first.evaluate());

    expect(find.text("Create new queue"), findsOneWidget);
  });
}
