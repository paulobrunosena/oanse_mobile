import 'package:flutter/material.dart';

import '../widgets/club_item.dart';

class ClubesPage extends StatelessWidget {
  const ClubesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            ClubItem(
              nome: 'Ursinhos',
              imagem: 'assets/icon_clubs/ursinhos.png',
            ),
            ClubItem(
              nome: 'Faísca',
              imagem: 'assets/icon_clubs/faisca.png',
            ),
            ClubItem(
              nome: 'Flama',
              imagem: 'assets/icon_clubs/flama.png',
            ),
            ClubItem(
              nome: 'Tocha',
              imagem: 'assets/icon_clubs/tocha.png',
            ),
            ClubItem(
              nome: 'Jovens Vencedores',
              imagem: 'assets/icon_clubs/jovens_vencedores.png',
            ),
            ClubItem(
              nome: 'VQ7',
              imagem: 'assets/icon_clubs/vq7.png',
            ),
          ],
        ),
      ),
    );
  }
}
