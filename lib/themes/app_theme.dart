import 'package:flutter/material.dart';
import 'package:rd_catalogo/themes/app_palette.dart';

import 'app_colors_extension.dart';
import 'app_text_theme_extension.dart';
import 'app_typography.dart';

export 'app_typography.dart';

class AppTheme with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  set themeMode(ThemeMode themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }

  static final light = ThemeData(
    colorScheme: ColorScheme.light(
      primary: _lightAppColors.primary,
      onPrimary: _lightAppColors.onPrimary,
      secondary: _lightAppColors.secondary,
      onSecondary: _lightAppColors.onSecondary,
      error: _lightAppColors.error,
      onError: _lightAppColors.onError,
      background: _lightAppColors.background,
      onBackground: _lightAppColors.onBackground,
      surface: _lightAppColors.surface,
      onSurface: _lightAppColors.onSurface,
      brightness: Brightness.light,
    ),
  );

  static final _lightAppColors = AppColorsExtension(
    primary: AppPalette.blue,
    onPrimary: AppPalette.seashell,
    secondary: const Color(0xff03dac6),
    onSecondary: Colors.black,
    error: const Color(0xffb00020),
    onError: Colors.white,
    background: AppPalette.pink,
    onBackground: AppPalette.plumPurple,
    surface: Colors.white,
    onSurface: Colors.black26,
  );

  static final _lightTextTheme = SimpleAppTextThemeExtension(
    body1: AppTypography.body1.copyWith(color: _lightAppColors.onBackground),
    h1: AppTypography.h1.copyWith(color: Colors.black),
  );

  // DARK MODE
  static final dark = () {
    final defaultTheme = ThemeData.dark();

    return defaultTheme.copyWith(
      textTheme: defaultTheme.textTheme.copyWith(
        // Default text style for Text widget.
        bodyMedium: AppTypography.body1.copyWith(color: Colors.white),
      ),
      extensions: [
        _darkAppColors,
        _darkTextTheme,
      ],
    );
  }();

  static final _darkAppColors = AppColorsExtension(
    primary: const Color(0xffbb86fc),
    onPrimary: Colors.black,
    secondary: const Color(0xff03dac6),
    onSecondary: Colors.black,
    error: const Color(0xffcf6679),
    onError: Colors.black,
    background: const Color(0xff121212),
    onBackground: Colors.white,
    surface: const Color(0xff121212),
    onSurface: Colors.white,
  );

  static final _darkTextTheme = SimpleAppTextThemeExtension(
    body1: AppTypography.body1.copyWith(color: _darkAppColors.onBackground),
    h1: AppTypography.h1.copyWith(color: Colors.white),
  );
}

extension AppThemeExtension on ThemeData {
  AppColorsExtension get appColors =>
      extension<AppColorsExtension>() ?? AppTheme._lightAppColors;

  SimpleAppTextThemeExtension get appTextTheme =>
      extension<SimpleAppTextThemeExtension>() ?? AppTheme._lightTextTheme;
}

extension ThemeGetter on BuildContext {
  ThemeData get theme => Theme.of(this);
}
