import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../app_module.dart';

class ClubItem extends StatelessWidget {
  final String nome;
  final String imagem;

  const ClubItem({required this.nome, required this.imagem, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.grey[100],
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        leading: Image.asset(imagem, width: 50, height: 50),
        title: Text(
          nome,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        onTap: () => Modular.to.pushNamed(routeClub, arguments: nome),
      ),
    );
  }
}
