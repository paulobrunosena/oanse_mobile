import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_store.dart';
import 'pages/clubes_page.dart';
import 'pages/jogos_page.dart';
import 'pages/premios_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeStore = Modular.get<HomeStore>();

    final List<Widget> pages = [
      const ClubesPage(),
      const JogosPage(),
      const PremiosPage(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images_login/logo.png', // Logo na AppBar
          height: 40,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {
            // Ação para o botão do menu
          },
        ),
      ),
      body: Observer(builder: (_) => pages[homeStore.selectedIndex]),
      bottomNavigationBar: Observer(
        builder: (_) {
          return BottomNavigationBar(
            currentIndex: homeStore.selectedIndex,
            onTap: (index) => homeStore.setPage(index),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Clubes'),
              BottomNavigationBarItem(icon: Icon(Icons.sports), label: 'Jogos'),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard),
                label: 'Prêmios',
              ),
            ],
          );
        },
      ),
    );
  }
}
