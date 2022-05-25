import 'package:flutter/material.dart';

class ZikirlarPage extends StatelessWidget {
  const ZikirlarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Zikirlar")),
      body: SingleChildScrollView(child: Column(children: [],)),
    );
  }
}
