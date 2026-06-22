import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Adicionado para o ProviderScope

import 'package:game_app/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // 1. Alterado de MyApp() para ProviderScope(child: GameApp()) para bater com seu main.dart
    await tester.pumpWidget(const ProviderScope(child: GameApp())); 

    // Nota: Como o seu app usa rotas e não tem mais aquele contador padrão do Flutter,
    // os testes abaixo provavelmente vão falhar quando você rodar o teste.
    // Se quiser apenas sumir com o erro visual do VS Code, o código acima já resolve!
    
    // Opcional: Você pode apagar as linhas abaixo se o teste falhar ao rodar.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}