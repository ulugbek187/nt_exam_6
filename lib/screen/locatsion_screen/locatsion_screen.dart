import 'package:flutter/material.dart';
import 'package:nt_exam_6/screen/global_widgets/global_widgets.dart';

class LocatsionScreen extends StatefulWidget {
  const LocatsionScreen({super.key});

  @override
  State<LocatsionScreen> createState() => _LocatsionScreenState();
}

class _LocatsionScreenState extends State<LocatsionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,),

      body: ListView(
        children: [
          GlobalAppBarContainer(title: "BIN LOCATOR"),
        ],
      ),
    );
  }
}
