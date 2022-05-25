import 'package:flutter/material.dart';
import 'package:namoz_app/core/constant/constant.dart';

class TilOzgarPage extends StatelessWidget {
  const TilOzgarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //! AppBar
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: ColorConst.red,
          ),
          onPressed: () {Navigator.pushNamedAndRemoveUntil(context, "setting_main", (route) => false);},
        ),
        centerTitle: true,
        title: const Text("Tilni o'zgartirish"),
        actions: [
          TextButton(
            child: const Text(
              'Tayyor',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            onPressed: () {},
          )
        ],
      ),

      //!  Body
      body: Container(),
    );
  }
}
