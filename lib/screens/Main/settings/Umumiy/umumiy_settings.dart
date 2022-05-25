import 'package:flutter/material.dart';
import 'package:namoz_app/core/constant/constant.dart';

class UmumiySettingPage extends StatelessWidget {
  const UmumiySettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: ColorConst.red,
          ),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, "setting_main", (route) => false);
          },
        ),
        centerTitle: true,
        title: const Text("Umumiy sozlamalar"),
        actions: [
          TextButton(
            child: const Text(
              'Tayyor',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const Text("Telefon raqam"),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                ),
              ),
              const SizedBox(height: 30),
              const Text('Parol'),
              TextFormField(
                textCapitalization: TextCapitalization.none,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              const SizedBox(height: 30),
              const Text("Tug'ilgan kun"),
              TextFormField(),
              const SizedBox(height: 30),
              const Text("Birinchi ehtilom/hayz payti"),
              TextFormField(),
              const SizedBox(height: 30),
              const Text("Namoz boshlangan kun"),
              TextFormField(),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 80),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.0900,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(),
                    ),
                    child: TextButton(
                      child: const Text(
                        "Bekor qilish",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.0900,
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      color: ColorConst.green,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextButton(
                      child: const Text(
                        "Saqlash",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
