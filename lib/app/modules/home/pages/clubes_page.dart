import 'package:flutter/material.dart';
import 'package:oanse_mobile/app/modules/home/widgets/club_item.dart';

class ClubesPage extends StatelessWidget {
  const ClubesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: const [
          ClubItem(nome: 'Ursinhos', imagem: 'images/ursinhos.png'),
          ClubItem(nome: 'Faísca', imagem: 'images/faisca.png'),
          ClubItem(nome: 'Flama', imagem: 'images/flama.png'),
          ClubItem(nome: 'Tocha', imagem: 'images/tocha.png'),
          ClubItem(nome: 'Jovens Vencedores', imagem: 'images/jovens.png'),
          ClubItem(nome: 'VQ7', imagem: 'images/vq7.png'),
        ],
      ),
    );
  }
}
