import 'package:business_logics/main.dart';
import 'package:business_logics/src/models/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:redux/redux.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    final Store<AppState> mockStore = Store<AppState>(
      (AppState state, dynamic action) => state,
      initialState: const AppState(),
    );

    await tester.pumpWidget(MyApp(store: mockStore));

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
