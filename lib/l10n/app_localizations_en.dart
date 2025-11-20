// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'StethApp';

  @override
  String get login => 'Login';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get connectStethoscope => 'Connect Stethoscope';

  @override
  String get startAIAnalysis => 'Start AI Analysis';

  @override
  String get connectionMethod => 'Connection Method';

  @override
  String get wifi => 'Wi-Fi';

  @override
  String get bluetooth => 'Bluetooth';

  @override
  String get cancel => 'Cancel';

  @override
  String get connectingViaWifi => 'Connecting via Wi-Fi...';

  @override
  String get connectedViaWifiSuccess => 'Connected via Wi-Fi successfully!';

  @override
  String get pairingViaBluetooth => 'Pairing via Bluetooth...';

  @override
  String get connectedViaBluetoothSuccess =>
      'Connected via Bluetooth successfully!';

  @override
  String get usingDummyDataset => 'Using dummy dataset for demo';

  @override
  String get modelNotLoaded => 'Model not loaded yet';

  @override
  String get modelLoadedSuccess => 'Model loaded successfully';

  @override
  String get failedToLoadModel => 'Failed to load model';

  @override
  String analysisFailed(String error) {
    return 'Analysis failed: $error';
  }

  @override
  String failedToLoadAudioFiles(String error) {
    return 'Failed to load audio files: $error';
  }

  @override
  String get loadingAudioFiles => 'Loading Audio Files...';

  @override
  String get audioDatasetResults => 'Audio Dataset Results';

  @override
  String get stethoscopeDisconnected => 'Stethoscope disconnected';

  @override
  String get close => 'Close';

  @override
  String get language => 'Language';

  @override
  String get settings => 'Settings';

  @override
  String get appSubtitle => 'Listen and analyze heart & lung sounds with AI';

  @override
  String get welcomeBack => 'Welcome Back!';

  @override
  String get signInToContinue => 'Sign in to continue';

  @override
  String get enterEmail => 'Enter your email';

  @override
  String get pleaseEnterEmail => 'Please enter your email';

  @override
  String get pleaseEnterValidEmail => 'Please enter a valid email';

  @override
  String get enterPassword => 'Enter your password';

  @override
  String get pleaseEnterPassword => 'Please enter your password';

  @override
  String get passwordMinLength => 'Password must be at least 6 characters';

  @override
  String get rememberMe => 'Remember Me';

  @override
  String get forgotPassword => 'Forgot Password?';

  @override
  String get forgotPasswordComingSoon => 'Forgot password feature coming soon';

  @override
  String get or => 'OR';

  @override
  String get continueAsGuest => 'Continue as Guest';

  @override
  String get dontHaveAccount => 'Don\'t have an account?';

  @override
  String get signUp => 'Sign Up';

  @override
  String get signUpComingSoon => 'Sign up feature coming soon';

  @override
  String get connectViaWirelessNetwork => 'Connect via wireless network';

  @override
  String get connectViaBluetoothPairing => 'Connect via Bluetooth pairing';

  @override
  String get ecgWaveform => 'ECG Waveform';

  @override
  String get live => 'LIVE';

  @override
  String get stethoscopeConnected => 'Stethoscope connected';

  @override
  String get disconnect => 'Disconnect';

  @override
  String get analyzing => 'Analyzing...';

  @override
  String get connectDigitalStethoscope => 'Connect Digital Stethoscope';

  @override
  String get chooseConnectionMethod => 'Choose connection method:';

  @override
  String get selectDiseaseCategory => 'Select Disease Category';

  @override
  String get pneumoniaTB => 'Pneumonia & TB Detection';

  @override
  String get copdAsthma => 'COPD & Asthma Detection';

  @override
  String get chooseAnalysisType =>
      'Choose the type of analysis you want to perform:';
}
