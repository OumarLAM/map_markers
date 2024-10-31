import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'package:map_markers/screens/home.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'map_markers',
      theme: AppTheme.theme,
      home: MainPage(),
    );
  }
}
