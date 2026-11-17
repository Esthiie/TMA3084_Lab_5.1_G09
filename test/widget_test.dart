import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

import 'package:profile_about_page_103756/app_state.dart';
import 'package:profile_about_page_103756/main.dart';

void main() {
  testWidgets('StudentHub displays correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => AppStateManager(),
        child: const StudentHubApp(),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('StudentHub Portal'), findsOneWidget);
    expect(find.text('Home'), findsOneWidget);
  });
}
