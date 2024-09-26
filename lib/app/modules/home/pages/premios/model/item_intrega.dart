import '../enum/faixa.dart';

class ItemEntrega {
  final Faixa faixa;
  final String nome;
  final String responsavel;
  final List<Faixa> faixas;

  ItemEntrega({
    required this.faixa,
    required this.nome,
    required this.responsavel,
    required this.faixas,
  });
}
