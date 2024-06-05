import 'package:flutter/material.dart';

class LocatsionScreen extends StatefulWidget {
  const LocatsionScreen({super.key});

  @override
  State<LocatsionScreen> createState() => _LocatsionScreenState();
}

class _LocatsionScreenState extends State<LocatsionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Location"),),
      body: ListView(),
    );
  }
}
