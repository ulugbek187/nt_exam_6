import 'package:flutter/material.dart';
import 'package:nt_exam_6/screen/tab_box/tab_box.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  // await StorageRepository.init();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabScreen(),
    );
  }
}

class User {
  String name = "";
  int age = 0;

  printCurrentName() {
    print("CURRENT NAME:$name");
  }
}
