import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;
  // Avoid self isntance
  ColorsApp._();
  static ColorsApp get instance {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0XFFFFBC00);
  Color get secondary => const Color(0XFFA48E64);
  Color get terciary => const Color(0XFF769A6D);
  Color get black => const Color(0XFF140E0E);
}

extension ColorsAppExceptions on BuildContext {
  ColorsApp get colors => ColorsApp.instance;
}
