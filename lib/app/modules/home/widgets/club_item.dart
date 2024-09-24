import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../app_module.dart';
import '../../../core/global/clubs_enum.dart';

class ClubItem extends StatelessWidget {
  final ClubsEnum club;

  const ClubItem({required this.club, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.grey[100],
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        leading: Image.asset(club.icon, width: 50, height: 50),
        title: Text(
          club.name,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        onTap: () => Modular.to.pushNamed(routeClub, arguments: club),
      ),
    );
  }
}
