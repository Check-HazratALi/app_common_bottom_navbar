import 'package:app_common_bottom_navbar/animated_navbar/blurred_bottom_navigation/blurred_bottom_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home:  FinalView(),
    );
  }
}

class AppTheme {
  AppTheme._();

  /// Light Theme
  static ThemeData lightTheme = FlexThemeData.light(
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    swapLegacyOnMaterial3: true,
    useMaterial3: true,
    scheme: FlexScheme.deepBlue,
    fontFamily: GoogleFonts.ubuntu().fontFamily,
  );

  /// Dark Theme
  static ThemeData darkTheme = FlexThemeData.dark(
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    swapLegacyOnMaterial3: true,
    useMaterial3: true,
    dialogBackground: Colors.grey.shade900,
    scheme: FlexScheme.indigo,
    tabBarStyle: FlexTabBarStyle.forBackground,
    fontFamily: GoogleFonts.ubuntu().fontFamily,
  );
}
