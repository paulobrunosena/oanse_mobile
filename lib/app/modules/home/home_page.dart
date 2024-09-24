import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../app_module.dart';
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

    const drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('Chico Ribeiro Dias'),
      accountEmail: Text('chico@gmail.com'),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        child: FlutterLogo(
          size: 42,
        ),
      ),
    );

    final drawerItems = ListView(
      children: [
        drawerHeader,
        const ListTile(
          leading: Icon(Icons.info),
          title: Text('Sobre'),
        ),
        const ListTile(
          leading: Icon(Icons.edit_document),
          title: Text('Termos de uso'),
        ),
        ListTile(
          leading: const Icon(Icons.exit_to_app),
          title: const Text('Sair'),
          onTap: () => Modular.to.pushReplacementNamed(routeLogin),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images_login/logo.png', // Logo na AppBar
          height: 40,
        ),
      ),
      drawer: Drawer(
        child: drawerItems,
      ),
      body: Observer(builder: (_) => pages[homeStore.selectedIndex]),
      bottomNavigationBar: Observer(
        builder: (_) {
          return BottomNavigationBar(
            currentIndex: homeStore.selectedIndex,
            onTap: (index) => homeStore.setPage(index),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.group),
                label: 'Clubes',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sports),
                label: 'Jogos',
              ),
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
