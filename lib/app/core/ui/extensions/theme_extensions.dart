import 'package:flutter/material.dart';

extension ThemeExtensions on BuildContext {
  Color get primary => Theme.of(this).colorScheme.primary;
  Color get primaryColorDark => Theme.of(this).primaryColorDark;
  Color get primaryColorLight => Theme.of(this).primaryColorLight;

  TextTheme get textTheme => Theme.of(this).textTheme;
}
