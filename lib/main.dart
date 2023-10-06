import 'package:flutter/material.dart';
import 'package:gpt_first_page/presentation/pages/first_page.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return const FirstPage();
  }
}
