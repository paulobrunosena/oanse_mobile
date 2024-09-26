import 'package:flutter/material.dart';

import '../../modules/home/pages/premios/enum/faixa.dart';

extension FaixaExtension on Faixa {
  String get nome {
    switch (this) {
      case Faixa.corVerde:
        return 'Faixa Verde';
      case Faixa.corAzul:
        return 'Faixa Azul';
      case Faixa.corAmarela:
        return 'Faixa Amarela';
      case Faixa.corVermelha:
        return 'Faixa Vermelha';
      default:
        return '';
    }
  }

  Color get cor {
    switch (this) {
      case Faixa.corVerde:
        return Colors.green;
      case Faixa.corAzul:
        return Colors.blue;
      case Faixa.corAmarela:
        return Colors.yellow;
      case Faixa.corVermelha:
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}
