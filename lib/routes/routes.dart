import 'package:flutter/material.dart';
import 'package:namoz_app/screens/Main/Zkirlar/zikirlar_page.dart';
import 'package:namoz_app/screens/Main/main_page.dart';
import 'package:namoz_app/screens/Main/settings/Langs/til_settings.dart';
import 'package:namoz_app/screens/Main/settings/Main/main_settings.dart';
import 'package:namoz_app/screens/Main/settings/Umumiy/umumiy_settings.dart';
import 'package:namoz_app/screens/auth/sign_in.dart';
import 'package:namoz_app/screens/auth/sign_up.dart';
import 'package:namoz_app/screens/onboarding/lang/lang_page.dart';
import 'package:namoz_app/screens/onboarding/views/onboarding_page.dart';
import 'package:namoz_app/screens/splashscreen/splash.dart';

class MyRoute {
  static final MyRoute _instance = MyRoute._init();
  static MyRoute get instance => _instance;
  MyRoute._init();

  Route? onGenrateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "splash":
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case "lang":
        return MaterialPageRoute(builder: (context) => const LangPage());
      case "onboarding":
        return MaterialPageRoute(builder: (context) => const OnboardingPage());
      case "sign_up":
        return MaterialPageRoute(builder: (context) => const SingUpPage());
      case "sign_in":
        return MaterialPageRoute(builder: (context) => SingInPage());
      case "setting_main":
        return MaterialPageRoute(builder: (context) => MainSettings());
      case "settings_til":
        return MaterialPageRoute(builder: (context) => TilOzgarPage());
      case "sozlama":
        return MaterialPageRoute(builder: (context) => UmumiySettingPage());
      case "home":
        return MaterialPageRoute(builder: (context) => HomePage());
      case "zikirlar":
        return MaterialPageRoute(builder: (context) => ZikirlarPage());
    }
    return null;
  }
}
