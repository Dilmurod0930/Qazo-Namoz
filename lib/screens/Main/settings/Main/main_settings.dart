import 'package:flutter/material.dart';

class MainSettings extends StatelessWidget {
  const MainSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 85),
          const Text('Sozlamalar',
              style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Image.asset("assets/images/setting.png"),
          const SizedBox(height: 20),
          Column(
            children: [
              ListTile(
                leading: const Icon(Icons.settings, color: Colors.blue),
                title: const Text("Umumiy"),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, "sozlama", (route) => false);
                },
              ),
              ListTile(
                leading: const Icon(Icons.language,color: Colors.blue),
                title: const Text("Tilni o'zgartirish"),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, "settings_til", (route) => false);
                },
              ),
              ListTile(
                leading: const  Icon(Icons.login_outlined, color: Colors.blue),
                title: const Text("Tizindan Chiqish"),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, "", (route) => false);
                },
              ),
              ListTile(
                leading: const  Icon(Icons.menu, color: Colors.blue),
                title: const Text("Menyuga qaytish"),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, "home", (route) => false);
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
