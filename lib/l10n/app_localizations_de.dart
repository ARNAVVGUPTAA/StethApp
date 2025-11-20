// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'StethApp';

  @override
  String get login => 'Anmelden';

  @override
  String get email => 'E-Mail';

  @override
  String get password => 'Passwort';

  @override
  String get connectStethoscope => 'Stethoskop Verbinden';

  @override
  String get startAIAnalysis => 'KI-Analyse Starten';

  @override
  String get connectionMethod => 'Verbindungsmethode';

  @override
  String get wifi => 'WLAN';

  @override
  String get bluetooth => 'Bluetooth';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get connectingViaWifi => 'Verbindung über WLAN...';

  @override
  String get connectedViaWifiSuccess => 'Erfolgreich über WLAN verbunden!';

  @override
  String get pairingViaBluetooth => 'Kopplung über Bluetooth...';

  @override
  String get connectedViaBluetoothSuccess =>
      'Erfolgreich über Bluetooth verbunden!';

  @override
  String get usingDummyDataset => 'Verwende Dummy-Datensatz für Demo';

  @override
  String get modelNotLoaded => 'Modell noch nicht geladen';

  @override
  String get modelLoadedSuccess => 'Modell erfolgreich geladen';

  @override
  String get failedToLoadModel => 'Fehler beim Laden des Modells';

  @override
  String analysisFailed(String error) {
    return 'Analyse fehlgeschlagen: $error';
  }

  @override
  String failedToLoadAudioFiles(String error) {
    return 'Fehler beim Laden der Audio-Dateien: $error';
  }

  @override
  String get loadingAudioFiles => 'Lade Audio-Dateien...';

  @override
  String get audioDatasetResults => 'Audio-Datensatz Ergebnisse';

  @override
  String get stethoscopeDisconnected => 'Stethoskop getrennt';

  @override
  String get close => 'Schließen';

  @override
  String get language => 'Sprache';

  @override
  String get settings => 'Einstellungen';

  @override
  String get appSubtitle =>
      'Hör- und Lungengeräusche mit KI anhören und analysieren';

  @override
  String get welcomeBack => 'Willkommen zurück!';

  @override
  String get signInToContinue => 'Anmelden, um fortzufahren';

  @override
  String get enterEmail => 'E-Mail eingeben';

  @override
  String get pleaseEnterEmail => 'Bitte geben Sie Ihre E-Mail ein';

  @override
  String get pleaseEnterValidEmail => 'Bitte geben Sie eine gültige E-Mail ein';

  @override
  String get enterPassword => 'Passwort eingeben';

  @override
  String get pleaseEnterPassword => 'Bitte geben Sie Ihr Passwort ein';

  @override
  String get passwordMinLength =>
      'Das Passwort muss mindestens 6 Zeichen lang sein';

  @override
  String get rememberMe => 'Angemeldet bleiben';

  @override
  String get forgotPassword => 'Passwort vergessen?';

  @override
  String get forgotPasswordComingSoon =>
      'Passwort vergessen Funktion kommt bald';

  @override
  String get or => 'ODER';

  @override
  String get continueAsGuest => 'Als Gast fortfahren';

  @override
  String get dontHaveAccount => 'Sie haben noch kein Konto?';

  @override
  String get signUp => 'Registrieren';

  @override
  String get signUpComingSoon => 'Registrierungsfunktion kommt bald';

  @override
  String get connectViaWirelessNetwork => 'Über drahtloses Netzwerk verbinden';

  @override
  String get connectViaBluetoothPairing => 'Über Bluetooth-Kopplung verbinden';

  @override
  String get ecgWaveform => 'EKG-Wellenform';

  @override
  String get live => 'Echtzeit';

  @override
  String get stethoscopeConnected => 'Stethoskop verbunden';

  @override
  String get disconnect => 'Trennen';

  @override
  String get analyzing => 'Wird analysiert...';

  @override
  String get connectDigitalStethoscope => 'Digitales Stethoskop verbinden';

  @override
  String get chooseConnectionMethod => 'Verbindungsmethode wählen:';

  @override
  String get selectDiseaseCategory => 'Krankheitskategorie Auswählen';

  @override
  String get pneumoniaTB => 'Pneumonie & TB Erkennung';

  @override
  String get copdAsthma => 'COPD & Asthma Erkennung';

  @override
  String get chooseAnalysisType =>
      'Wählen Sie die Art der Analyse, die Sie durchführen möchten:';
}
