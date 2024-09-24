import 'package:mobx/mobx.dart';

part 'club_store.g.dart';

class ClubStore = ClubStoreBase with _$ClubStore;

abstract class ClubStoreBase with Store {
  @observable
  String username = '';

  @observable
  String password = '';

  @action
  void setUsername(String value) {
    username = value;
  }

  @action
  void setPassword(String value) {
    password = value;
  }
}
