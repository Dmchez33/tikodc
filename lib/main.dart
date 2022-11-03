import 'package:flutter/material.dart';
import 'package:tikodc/MainSecond.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'TikODC';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: MainSecondWidget(),
    );
  }
}
