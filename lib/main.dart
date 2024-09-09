import 'package:flutter/material.dart';
import 'package:test_ui/onboarding/presentation/page/task_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskPage(),
    );
  }
}