import 'package:flutter/material.dart';

import '../../../../../core/extensions/faixa_extension.dart';
import '../enum/faixa.dart';
import '../model/item_intrega.dart';

class EntregaItemWidget extends StatefulWidget {
  final ItemEntrega entrega;

  const EntregaItemWidget({super.key, required this.entrega});

  @override
  EntregaItemWidgetState createState() => EntregaItemWidgetState();
}

class EntregaItemWidgetState extends State<EntregaItemWidget> {
  final Map<Faixa, bool> _checkedFaixas = {};

  @override
  void initState() {
    super.initState();
    for (var faixa in widget.entrega.faixas) {
      _checkedFaixas[faixa] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Icon(
              widget.entrega.imageProfile,
              color: Colors.white,
            ),
          ),
          title: Text(
            widget.entrega.nome,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('Resp: ${widget.entrega.responsavel}'),
        ),
        Column(
          children: widget.entrega.faixas.map((faixa) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _checkedFaixas[faixa] = !_checkedFaixas[faixa]!;
                  });
                },
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: faixa.cor,
                      child: const Icon(
                        Icons.workspace_premium,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Text(faixa.nome),
                    const Spacer(),
                    const Text('Entregue hoje:'),
                    Checkbox(
                      value: _checkedFaixas[faixa],
                      onChanged: (bool? value) {
                        setState(() {
                          _checkedFaixas[faixa] = value ?? false;
                        });
                      },
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
