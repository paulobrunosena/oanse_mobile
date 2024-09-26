import 'package:flutter/material.dart';

import '../enum/faixa.dart';

class ItemEntrega {
  final IconData imageProfile;
  final String nome;
  final String responsavel;
  final List<Faixa> faixas;

  ItemEntrega({
    required this.imageProfile,
    required this.nome,
    required this.responsavel,
    required this.faixas,
  });
}
