import 'package:flutter_modular/flutter_modular.dart';

import 'app/modules/home/home_module.dart';
import 'app/modules/login/login_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module('/', module: LoginModule());
    r.module(routeHome, module: HomeModule());
  }
}

const routeHome = '/home/';
