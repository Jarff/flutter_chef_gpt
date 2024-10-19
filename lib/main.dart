import 'package:chef_gpt/presentation/home.dart';
import 'package:chef_gpt/utils/AppLocalizations.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  await dotenv.load(); // Load environment variables
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chef AI',
      locale: const Locale('en'), // Default locale
      supportedLocales: const [
        Locale('en', ''), // English
        Locale('es', ''), // Spanish
        Locale('fr', ''), // French
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale?.languageCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: Colors.white,
        ),
        useMaterial3: true,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ), // Formerly headline1
          displayMedium: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ), // Formerly headline2
          displaySmall: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white), // Formerly headline3
          headlineLarge: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold), // Formerly headline4
          headlineMedium: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold), // Formerly headline5
          headlineSmall: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold), // Formerly headline6
          titleLarge: TextStyle(fontSize: 16.0), // Formerly subtitle1
          titleMedium: TextStyle(fontSize: 14.0), // Formerly subtitle2
          bodyLarge: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ), // Formerly bodyText1
          bodyMedium: TextStyle(
            fontSize: 14.0,
            color: Colors.white,
          ), // Formerly bodyText2
          labelLarge: TextStyle(fontSize: 14.0), // Formerly button
        ),
      ),
      home: const HomePage(),
    );
  }
}
