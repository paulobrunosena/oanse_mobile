import 'package:flutter_modular/flutter_modular.dart';

import 'login_page.dart';
import 'login_store.dart';

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
