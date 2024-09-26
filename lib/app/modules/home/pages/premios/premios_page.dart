import 'package:flutter/material.dart';

import 'enum/faixa.dart';
import 'model/item_intrega.dart';
import 'widgets/entrega_item_widget.dart';

class PremiosPage extends StatelessWidget {
  PremiosPage({super.key});
  final List<ItemEntrega> entregas = [
    ItemEntrega(
      faixa: Faixa.corVerde,
      nome: 'Ana Francisca Saraiva',
      responsavel: 'Chico Saraiva',
      faixas: [Faixa.corVerde, Faixa.corAzul, Faixa.corAmarela],
    ),
    ItemEntrega(
      faixa: Faixa.corVermelha,
      nome: 'Ana Francisca Saraiva',
      responsavel: 'Chico Saraiva',
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
      appBar: AppBar(
        title: const Text('Lista de Entregas'),
      ),
      body: ListView.builder(
        itemCount: entregas.length,
        itemBuilder: (context, index) {
          return EntregaItemWidget(entrega: entregas[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.lock),
      ),
    );
  }
}
