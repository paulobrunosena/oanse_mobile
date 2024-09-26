import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../app_module.dart';
import 'home_store.dart';
import 'pages/clubes/clubes_page.dart';
import 'pages/jogos/jogos_page.dart';
import 'pages/premios/premios_page.dart';
import 'widgets/bar_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeStore = Modular.get<HomeStore>();

    final List<Widget> pages = [
      const ClubesPage(),
      const JogosPage(),
      PremiosPage(),
    ];

    const drawerHeader = UserAccountsDrawerHeader(
      accountName: Text(
        'Chico Ribeiro Dias',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      accountEmail: Text('chico@gmail.com'),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        child: FlutterLogo(
          size: 42,
        ),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images_login/pattern_bg.jpg',
          ), // Imagem de fundo
          fit: BoxFit.cover,
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
            selectedFontSize: 0,
            unselectedFontSize: 0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: homeStore.selectedIndex,
            onTap: (index) => homeStore.setPage(index),
            items: [
              BottomNavigationBarItem(
                icon: BarItem(Icons.group, 'Clubes', 0, homeStore),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: BarItem(Icons.sports, 'Jogos', 1, homeStore),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: BarItem(Icons.card_giftcard, 'Prêmios', 2, homeStore),
                label: '',
              ),
            ],
          );
        },
      ),
    );
  }
}
