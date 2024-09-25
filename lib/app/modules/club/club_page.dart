import 'package:flutter/material.dart';

import '../../core/extensions/size_extensions.dart';
import '../../core/global/clubs_enum.dart';
import 'widgets/club_option.dart';

class ClubPage extends StatefulWidget {
  final ClubsEnum club;
  const ClubPage(this.club, {super.key});

  @override
  State<ClubPage> createState() => _ClubPageState();
}

class _ClubPageState extends State<ClubPage> {
  ClubsEnum get club => widget.club;

  Color get colorAppBar {
    return (club == ClubsEnum.ursinhos ||
            club == ClubsEnum.flama ||
            club == ClubsEnum.tocha ||
            club == ClubsEnum.jv)
        ? Colors.white
        : Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            const ClubOption(text: 'Matriculados', icon: Icons.handshake),
            const ClubOption(text: 'Visitantes', icon: Icons.person_2),
            const ClubOption(text: 'Prêmios', icon: Icons.card_giftcard),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(
        club.name,
        style: TextStyle(color: colorAppBar),
      ),
      backgroundColor: club.color,
      iconTheme: IconThemeData(color: colorAppBar),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 150,
      width: context.screenWidth,
      color: club.color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            club.icon,
            width: 70,
            height: 70,
          ),
          Text(
            'Bem-vindo(a)',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w200,
              color: colorAppBar,
            ),
          ),
          Text(
            'Clube ${club.name}',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: colorAppBar,
            ),
          ),
        ],
      ),
    );
  }
}
