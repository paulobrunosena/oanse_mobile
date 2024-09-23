import 'dart:developer';

import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = LoginStoreBase with _$LoginStore;

abstract class LoginStoreBase with Store {
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

  @action
  Future<void> login() async {
    // Lógica de autenticação usando Dio ou qualquer outra API
    log("Tentando logar com $username e $password");
  }
}
