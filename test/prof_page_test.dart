// /Users/ir/Desktop/deli_app/deli_app/test/views/prof_page_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:deli_app/views/prof_page.dart';

void main() {
  group('ProfPage Tests', () {
    testWidgets('Renders ProfPage and checks AppBar', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: ProfPage()));

      // appbarタイトルの確認
      expect(find.text('User Public Key Here'), findsOneWidget);

      // profileImageの確認
      expect(find.byType(CircleAvatar), findsOneWidget);
    });

    testWidgets('Renders ProfPage and checks tabs', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: ProfPage()));
      // hisタブとwalletタブの確認
      expect(find.text('HISTORY'), findsOneWidget);
      expect(find.text('WALLET'), findsOneWidget);
    });

    // TODO: 子タブとその相互作用テストを追加する
  });
}
