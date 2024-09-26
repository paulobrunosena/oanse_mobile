import 'package:flutter/material.dart';

import 'enum/faixa.dart';
import 'model/item_intrega.dart';
import 'widgets/entrega_item_widget.dart';

class PremiosPage extends StatelessWidget {
  PremiosPage({super.key});
  final List<ItemEntrega> entregas = [
    ItemEntrega(
      imageProfile: Icons.person,
      nome: 'Ana Francisca Saraiva',
      responsavel: 'Chico Saraiva',
      faixas: [Faixa.corVerde, Faixa.corAzul, Faixa.corAmarela],
    ),
    ItemEntrega(
      imageProfile: Icons.person,
      nome: 'Ana Paulo Amorim Batista',
      responsavel: 'Chico Saraiva',
      faixas: [
        Faixa.corAzul,
        Faixa.corVermelha,
        Faixa.corAmarela,
        Faixa.corVerde,
      ],
    ),
    ItemEntrega(
      imageProfile: Icons.person,
      nome: 'Paulo Henrique Sena',
      responsavel: 'Vicente Paulo',
      faixas: [
        Faixa.corAzul,
        Faixa.corVermelha,
        Faixa.corAmarela,
        Faixa.corVerde,
      ],
    ),
    ItemEntrega(
      imageProfile: Icons.person,
      nome: 'Ronaldo Carvalho Moraes',
      responsavel: 'Vicente Paulo',
      faixas: [
        Faixa.corAzul,
        Faixa.corVermelha,
        Faixa.corAmarela,
        Faixa.corVerde,
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Sábado, 22 de julho',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(bottom: 80),
              itemCount: entregas.length,
              itemBuilder: (context, index) {
                return EntregaItemWidget(entrega: entregas[index]);
              },
              separatorBuilder: (context, index) => const Divider(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.save),
      ),
    );
  }
}
