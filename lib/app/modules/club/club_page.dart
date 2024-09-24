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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(club.name),
        backgroundColor: club.color,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              child: Image.asset(
                club.icon,
                width: 50,
              ),
            ),
            Container(
              height: 200,
              width: context.screenWidth,
              color: club.color,
              child: Stack(
                children: [
                  SizedBox(
                    height: 50,
                    child: Image.asset(
                      club.icon,
                      width: 50,
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
