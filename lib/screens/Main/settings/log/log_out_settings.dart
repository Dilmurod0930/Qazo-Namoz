import 'package:flutter/material.dart';

class LogOutSettings extends StatelessWidget {
  const LogOutSettings({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tizimdan  chiqish")),
      body: Container(color: Colors.teal),
    );
  }
}