import 'package:flutter/material.dart';

import '../../core/extensions/size_extensions.dart';
import '../../core/global/clubs_enum.dart';

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
      appBar: AppBar(
        title: Text(
          club.name,
          style: TextStyle(color: colorAppBar),
        ),
        backgroundColor: club.color,
        iconTheme: IconThemeData(color: colorAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: context.screenWidth,
              color: club.color,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70,
                    child: Image.asset(
                      club.icon,
                      width: 70,
                    ),
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
            ),
          ],
        ),
      ),
    );
  }
}
