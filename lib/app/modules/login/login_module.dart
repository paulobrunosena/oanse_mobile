import 'package:flutter_modular/flutter_modular.dart';
import 'package:oanse_mobile/app/modules/login/login_store.dart';

import 'login_page.dart';

class LoginModule extends Module {
  @override
  void binds(i) {
    i.addSingleton(LoginStore.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => LoginPage());
  }
}
