import 'package:flutter/material.dart';

enum ClubsEnum {
  ursinhos(
    name: 'Ursinho',
    color: Colors.red,
    icon: 'assets/icon_clubs/ursinhos.png',
  ),
  faisca(
    name: 'Faísca',
    color: Colors.yellow,
    icon: 'assets/icon_clubs/faisca.png',
  ),
  flama(
    name: 'Flama',
    color: Colors.green,
    icon: 'assets/icon_clubs/flama.png',
  ),
  tocha(name: 'Tocha', color: Colors.blue, icon: 'assets/icon_clubs/tocha.png'),
  jv(
    name: 'Jovens Vencedores',
    color: Colors.black,
    icon: 'assets/icon_clubs/jovens_vencedores.png',
  ),
  vq7(
    name: 'VQ7',
    color: Colors.greenAccent,
    icon: 'assets/icon_clubs/vq7.png',
  );

  const ClubsEnum({
    required this.name,
    required this.color,
    required this.icon,
  });

  final String name;
  final Color color;
  final String icon;
}
