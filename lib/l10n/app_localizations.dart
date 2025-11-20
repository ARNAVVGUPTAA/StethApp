import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
  ];

  /// The title of the application
  ///
  /// In en, this message translates to:
  /// **'StethApp'**
  String get appTitle;

  /// Login button text
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// Email field label
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// Password field label
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// Connect stethoscope button text
  ///
  /// In en, this message translates to:
  /// **'Connect Stethoscope'**
  String get connectStethoscope;

  /// Start AI analysis button text
  ///
  /// In en, this message translates to:
  /// **'Start AI Analysis'**
  String get startAIAnalysis;

  /// Connection method dialog title
  ///
  /// In en, this message translates to:
  /// **'Connection Method'**
  String get connectionMethod;

  /// Wi-Fi connection option
  ///
  /// In en, this message translates to:
  /// **'Wi-Fi'**
  String get wifi;

  /// Bluetooth connection option
  ///
  /// In en, this message translates to:
  /// **'Bluetooth'**
  String get bluetooth;

  /// Cancel button text
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Wi-Fi connection progress message
  ///
  /// In en, this message translates to:
  /// **'Connecting via Wi-Fi...'**
  String get connectingViaWifi;

  /// Wi-Fi connection success message
  ///
  /// In en, this message translates to:
  /// **'Connected via Wi-Fi successfully!'**
  String get connectedViaWifiSuccess;

  /// Bluetooth pairing progress message
  ///
  /// In en, this message translates to:
  /// **'Pairing via Bluetooth...'**
  String get pairingViaBluetooth;

  /// Bluetooth connection success message
  ///
  /// In en, this message translates to:
  /// **'Connected via Bluetooth successfully!'**
  String get connectedViaBluetoothSuccess;

  /// Demo dataset notification
  ///
  /// In en, this message translates to:
  /// **'Using dummy dataset for demo'**
  String get usingDummyDataset;

  /// Model not loaded warning
  ///
  /// In en, this message translates to:
  /// **'Model not loaded yet'**
  String get modelNotLoaded;

  /// Model loaded success message
  ///
  /// In en, this message translates to:
  /// **'Model loaded successfully'**
  String get modelLoadedSuccess;

  /// Model loading failure message
  ///
  /// In en, this message translates to:
  /// **'Failed to load model'**
  String get failedToLoadModel;

  /// Analysis failure message
  ///
  /// In en, this message translates to:
  /// **'Analysis failed: {error}'**
  String analysisFailed(String error);

  /// Audio files loading failure message
  ///
  /// In en, this message translates to:
  /// **'Failed to load audio files: {error}'**
  String failedToLoadAudioFiles(String error);

  /// Loading audio files dialog title
  ///
  /// In en, this message translates to:
  /// **'Loading Audio Files...'**
  String get loadingAudioFiles;

  /// Audio dataset results dialog title
  ///
  /// In en, this message translates to:
  /// **'Audio Dataset Results'**
  String get audioDatasetResults;

  /// Stethoscope disconnected message
  ///
  /// In en, this message translates to:
  /// **'Stethoscope disconnected'**
  String get stethoscopeDisconnected;

  /// Close button text
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// Language selection label
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// Settings menu item
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// Subtitle for the application
  ///
  /// In en, this message translates to:
  /// **'Listen and analyze heart & lung sounds with AI'**
  String get appSubtitle;

  /// Welcome back header
  ///
  /// In en, this message translates to:
  /// **'Welcome Back!'**
  String get welcomeBack;

  /// Prompt to sign in
  ///
  /// In en, this message translates to:
  /// **'Sign in to continue'**
  String get signInToContinue;

  /// Hint text for email field
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get enterEmail;

  /// Validation message for empty email
  ///
  /// In en, this message translates to:
  /// **'Please enter your email'**
  String get pleaseEnterEmail;

  /// Validation message for invalid email
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email'**
  String get pleaseEnterValidEmail;

  /// Hint text for password field
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get enterPassword;

  /// Validation message for empty password
  ///
  /// In en, this message translates to:
  /// **'Please enter your password'**
  String get pleaseEnterPassword;

  /// Validation message for short password
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get passwordMinLength;

  /// Remember me checkbox label
  ///
  /// In en, this message translates to:
  /// **'Remember Me'**
  String get rememberMe;

  /// Forgot password button text
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPassword;

  /// Snackbar text for forgot password feature
  ///
  /// In en, this message translates to:
  /// **'Forgot password feature coming soon'**
  String get forgotPasswordComingSoon;

  /// Divider text for alternative options
  ///
  /// In en, this message translates to:
  /// **'OR'**
  String get or;

  /// Button text to continue as guest
  ///
  /// In en, this message translates to:
  /// **'Continue as Guest'**
  String get continueAsGuest;

  /// Prompt for users without account
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dontHaveAccount;

  /// Sign up button text
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// Snackbar text for sign up feature
  ///
  /// In en, this message translates to:
  /// **'Sign up feature coming soon'**
  String get signUpComingSoon;

  /// Subtitle for Wi-Fi connection option
  ///
  /// In en, this message translates to:
  /// **'Connect via wireless network'**
  String get connectViaWirelessNetwork;

  /// Subtitle for Bluetooth connection option
  ///
  /// In en, this message translates to:
  /// **'Connect via Bluetooth pairing'**
  String get connectViaBluetoothPairing;

  /// ECG waveform section header
  ///
  /// In en, this message translates to:
  /// **'ECG Waveform'**
  String get ecgWaveform;

  /// Indicator for live ECG
  ///
  /// In en, this message translates to:
  /// **'LIVE'**
  String get live;

  /// Stethoscope connected status text
  ///
  /// In en, this message translates to:
  /// **'Stethoscope connected'**
  String get stethoscopeConnected;

  /// Disconnect button text
  ///
  /// In en, this message translates to:
  /// **'Disconnect'**
  String get disconnect;

  /// Text shown while analyzing audio
  ///
  /// In en, this message translates to:
  /// **'Analyzing...'**
  String get analyzing;

  /// Text shown when stethoscope is not connected
  ///
  /// In en, this message translates to:
  /// **'Connect Digital Stethoscope'**
  String get connectDigitalStethoscope;

  /// Text asking user to choose connection method
  ///
  /// In en, this message translates to:
  /// **'Choose connection method:'**
  String get chooseConnectionMethod;

  /// Dialog title for disease selection
  ///
  /// In en, this message translates to:
  /// **'Select Disease Category'**
  String get selectDiseaseCategory;

  /// Option for pneumonia and TB detection
  ///
  /// In en, this message translates to:
  /// **'Pneumonia & TB Detection'**
  String get pneumoniaTB;

  /// Option for COPD and asthma detection
  ///
  /// In en, this message translates to:
  /// **'COPD & Asthma Detection'**
  String get copdAsthma;

  /// Description text for disease selection
  ///
  /// In en, this message translates to:
  /// **'Choose the type of analysis you want to perform:'**
  String get chooseAnalysisType;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['de', 'en', 'es', 'fr', 'hi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
