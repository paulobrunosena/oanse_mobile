import 'package:flutter_modular/flutter_modular.dart';

import 'modules/club/club_module.dart';
import 'modules/home/home_module.dart';
import 'modules/login/login_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module(Modular.initialRoute, module: LoginModule());
    r.module(routeHome, module: HomeModule());
    r.module(routeClub, module: ClubModule());
  }
}

const routeLogin = '/';
const routeHome = '/home/';
const routeClub = '/club/';
