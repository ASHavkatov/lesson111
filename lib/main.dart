import 'package:flutter/material.dart';
import 'package:lesson111/main_page.dart';


void main() {
  runApp(const Main_Page());
}
class Main_Page extends StatelessWidget {
  const Main_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPages(),
    );
  }
}
