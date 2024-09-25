import 'package:flutter/material.dart';

class ClubOption extends StatelessWidget {
  final String text;
  final IconData icon;

  const ClubOption({required this.text, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, left: 15),
      child: Card(
        elevation: 0,
        color: Colors.grey[100],
        child: ListTile(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          leading: Icon(icon),
          title: Text(
            text,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
