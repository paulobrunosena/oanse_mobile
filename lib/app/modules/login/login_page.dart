import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'login_store.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final LoginStore store = Modular.get<LoginStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagem de fundo
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'images/pattern_bg.jpg'), // Use a imagem como fundo
                fit: BoxFit.cover, // Faz a imagem preencher todo o fundo
              ),
            ),
          ),
          // Conteúdo da página de login com scroll e centralização
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/logo.png', // Logo no topo
                    height: 100,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Insira os dados de login e senha\natribuídos a você via e-mail.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 30),
                  Observer(
                    builder: (_) => TextField(
                      onChanged: store.setUsername,
                      decoration: InputDecoration(
                        hintText: 'Login',
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Observer(
                    builder: (_) => TextField(
                      obscureText: true,
                      onChanged: store.setPassword,
                      decoration: InputDecoration(
                        hintText: 'Senha',
                        prefixIcon: const Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: store.login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow[700],
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 80),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'ENTRAR',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      // Ação para "Esqueci minha senha"
                    },
                    child: const Text(
                      'Esqueci minha senha.',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
