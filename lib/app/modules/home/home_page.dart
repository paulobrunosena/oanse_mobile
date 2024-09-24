import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:oanse_mobile/app/modules/home/home_store.dart';
import 'package:oanse_mobile/app/modules/home/pages/clubes_page.dart';
import 'package:oanse_mobile/app/modules/home/pages/jogos_page.dart';
import 'package:oanse_mobile/app/modules/home/pages/premios_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationStore = Modular.get<HomeStore>();

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/logo.png', // Logo na AppBar
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
      body: Flexible(
          child: PageView(
        children: const [ClubesPage(), JogosPage(), PremiosPage()],
      )),
      bottomNavigationBar: Observer(
        builder: (_) {
          return BottomNavigationBar(
            currentIndex: navigationStore.selectedIndex,
            onTap: (index) => navigationStore.setPage(index),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Clubes'),
              BottomNavigationBarItem(icon: Icon(Icons.sports), label: 'Jogos'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.card_giftcard), label: 'Prêmios'),
            ],
          );
        },
      ),
    );
  }
}
