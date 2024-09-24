import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  @observable
  int selectedIndex = 0;

  @action
  void setPage(int index) {
    selectedIndex = index;
    if (index == 0) {
      Modular.to.navigate('/');
    } else if (index == 1) {
      Modular.to.navigate('/jogos');
    } else if (index == 2) {
      Modular.to.navigate('/premios');
    }
  }
}
