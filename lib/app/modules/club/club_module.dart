import 'package:flutter_modular/flutter_modular.dart';

import 'club_page.dart';
import 'club_store.dart';

class ClubModule extends Module {
  @override
  void binds(i) {
    i.addSingleton(ClubStore.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => ClubPage(r.args.data));
  }
}
