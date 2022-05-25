import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:namoz_app/core/constant/constant.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 55),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ro'yhatdan o'tish",
                  style: TextStyle(
                      fontSize: FontConst.mediumFont + 2,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  child: SvgPicture.asset("assets/icons/oy.svg"),
                )
              ],
            ),
            Column(
              children: [
                //! Ro'yxatdan o'tish Email
                TextFormField(
                  // validator: ,        //? Validator kiritish kerak
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                    labelText: "Email",
                    filled: true,
                    fillColor: Colors.grey,
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 6.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(height: 45),
                //! Ro'yxatdan o'tish Password
                TextFormField(
                  // validator: ,  //? Validator kiritish kerak        //!
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                    labelText: 'Password',
                    filled: true,
                    fillColor: Colors.grey,
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 6.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            //!  Registratsiya qilishga yuborish
            Container(
              height: MediaQuery.of(context).size.height * 0.079,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                  color: ColorConst.blue,
                  borderRadius: BorderRadius.circular(12)),
              child: TextButton(
                child: const Text("Yuborish",
                    style: TextStyle(color: Colors.white, fontSize: 19)),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                        context, "setting_main", (route) => false);
                },
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //! Google bilan ro'yxatdan  o'tish
                Container(
                  height: MediaQuery.of(context).size.height * 0.079,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    color: ColorConst.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Image.asset("assets/images/google.png",
                        fit: BoxFit.cover),
                  ),
                ),
                //! Fecabooke bilan Ro'yxatdan o'tish
                Container(
                  height: MediaQuery.of(context).size.height * 0.079,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    color: ColorConst.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Image.asset("assets/images/facebooke.png",
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const SizedBox(width: 75),
                const Text("Akountingiz bormi ?  "),
                TextButton(
                  child: const Text(
                    "Kirish",
                    style: TextStyle(color: Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "home", (route) => false);
                  },
                )
              ],
            ),
            const SizedBox(
              height: 55,
            )
          ],
        ),
      ),
    );
  }
}
