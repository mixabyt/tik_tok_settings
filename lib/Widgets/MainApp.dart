import 'package:flutter/material.dart';
import 'home.dart';

class MainApp extends StatelessWidget
{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Home(),
    );
  }
}