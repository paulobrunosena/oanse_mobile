import 'package:flutter/material.dart';

import 'colors_app.dart';

class TextStyles {
  static TextStyles? _instance;
  // Avoid self isntance
  TextStyles._();
  static TextStyles get instance {
    _instance ??= TextStyles._();
    return _instance!;
  }

  TextStyle get textLight => const TextStyle(fontWeight: FontWeight.w300);

  TextStyle get textRegular => const TextStyle(fontWeight: FontWeight.normal);

  TextStyle get textMedium => const TextStyle(fontWeight: FontWeight.w500);

  TextStyle get textSemiBold => const TextStyle(fontWeight: FontWeight.w600);

  TextStyle get textBold => const TextStyle(fontWeight: FontWeight.bold);

  TextStyle get textExtraBold => const TextStyle(fontWeight: FontWeight.w800);

  TextStyle get textButtonLabel =>
      textMedium.copyWith(fontSize: 18, color: Colors.white);

  TextStyle get textPrimaryButtonLabel =>
      textMedium.copyWith(fontSize: 18, color: ColorsApp.instance.primary);

  TextStyle get textSecondaryButtonLabel =>
      textMedium.copyWith(fontSize: 18, color: ColorsApp.instance.secondary);

  TextStyle get textTitleItemList =>
      textMedium.copyWith(fontSize: 16, color: ColorsApp.instance.black);

  TextStyle get textSubTitleItemList =>
      textRegular.copyWith(fontSize: 14, color: Colors.black54);

  TextStyle get textTitle =>
      textBold.copyWith(fontSize: 28, color: ColorsApp.instance.black);
}

extension TextStylesExtension on BuildContext {
  TextStyles get textStyles => TextStyles.instance;
}
