import 'package:flutter/material.dart';

import 'colors_app.dart';
import 'text_styles.dart';

class AppStyles {
  static AppStyles? _instance;
  // Avoid self isntance
  AppStyles._();
  static AppStyles get instance {
    _instance ??= AppStyles._();
    return _instance!;
  }

  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
        backgroundColor: ColorsApp.instance.primary,
        textStyle: TextStyles.instance.textButtonLabel,
        foregroundColor: Colors.white,
      );

  ButtonStyle get secondaryButton => primaryButton.copyWith(
        backgroundColor:
            WidgetStateProperty.all<Color>(ColorsApp.instance.secondary),
      );

  ButtonStyle get textButton => TextButton.styleFrom(
        textStyle: TextStyles.instance.textSecondaryButtonLabel,
        foregroundColor: ColorsApp.instance.black,
      );
}

extension AppStylesExtension on BuildContext {
  AppStyles get appStyles => AppStyles.instance;
}
