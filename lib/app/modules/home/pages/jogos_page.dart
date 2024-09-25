import 'package:flutter/material.dart';

import '../../../core/global/clubs_enum.dart';
import '../widgets/club_item.dart';

class JogosPage extends StatelessWidget {
  const JogosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            ClubItem(club: ClubsEnum.ursinhos),
            ClubItem(club: ClubsEnum.faisca),
            ClubItem(club: ClubsEnum.flama),
            ClubItem(club: ClubsEnum.tocha),
            ClubItem(club: ClubsEnum.jv),
            ClubItem(club: ClubsEnum.vq7),
          ],
        ),
      ),
    );
  }
}
