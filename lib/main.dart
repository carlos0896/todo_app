import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/providers/agenda_provider.dart';
import 'package:todo_app/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AgendaProvider(),
      child: const MaterialApp(home: HomeScreen()),
    );
  }
}
