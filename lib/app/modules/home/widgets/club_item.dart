import 'package:flutter/material.dart';

class ClubItem extends StatelessWidget {
  final String nome;
  final String imagem;

  const ClubItem({required this.nome, required this.imagem, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(imagem, width: 50, height: 50),
        title: Text(nome),
      ),
    );
  }
}
