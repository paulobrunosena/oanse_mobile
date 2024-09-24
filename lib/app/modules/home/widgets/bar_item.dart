import 'package:flutter/material.dart';

import '../../../core/ui/theme/style/colors_app.dart';
import '../home_store.dart';

class BarItem extends StatelessWidget {
  final IconData iconData;
  final String text;
  final int index;
  final HomeStore homeStore;
  const BarItem(
    this.iconData,
    this.text,
    this.index,
    this.homeStore, {
    super.key,
  });

  Color _getBgColor(int index) => homeStore.selectedIndex == index
      ? ColorsApp.instance.primary
      : Colors.transparent;
  Color _getItemColor(int index) =>
      homeStore.selectedIndex == index ? Colors.black : Colors.grey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: kBottomNavigationBarHeight,
      child: Material(
        color: _getBgColor(index),
        child: InkWell(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(iconData),
              Text(
                text,
                style: TextStyle(fontSize: 12, color: _getItemColor(index)),
              ),
            ],
          ),
          onTap: () => homeStore.setPage(index),
        ),
      ),
    );
  }
}
