import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:stethapp/login_page.dart';
import 'package:stethapp/language_provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'l10n/app_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://ajfduzdtimtlergtkfry.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFqZmR1emR0aW10bGVyZ3RrZnJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjE2MzM4MDEsImV4cCI6MjA3NzIwOTgwMX0.vnEIzFtDnCbTOvPlwdCz9ebo6Plw2TCG45XMHi_tVdo',
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final LanguageProvider _languageProvider = LanguageProvider();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Locale>(
      valueListenable: _languageProvider.currentLocale,
      builder: (context, locale, child) {
        return MaterialApp(
          title: 'StethApp',
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: const Color(0xFF121212),
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blue,
              brightness: Brightness.dark,
            ),
          ),
          locale: locale,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''), // English
            Locale('fr', ''), // French
            Locale('de', ''), // German
            Locale('es', ''), // Spanish
            Locale('hi', ''), // Hindi
          ],
          home: LoginPage(languageProvider: _languageProvider),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
