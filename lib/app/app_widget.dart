import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/ui/theme/theme_config.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Oanse Mobile',
      theme: ThemeConfig.theme,
      routerConfig: Modular.routerConfig,
    );
  }
}
