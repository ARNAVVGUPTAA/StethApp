// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'स्टेथएप';

  @override
  String get login => 'लॉगिन';

  @override
  String get email => 'ईमेल';

  @override
  String get password => 'पासवर्ड';

  @override
  String get connectStethoscope => 'स्टेथोस्कोप कनेक्ट करें';

  @override
  String get startAIAnalysis => 'एआई विश्लेषण शुरू करें';

  @override
  String get connectionMethod => 'कनेक्शन विधि';

  @override
  String get wifi => 'वाई-फाई';

  @override
  String get bluetooth => 'ब्लूटूथ';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get connectingViaWifi => 'वाई-फाई के माध्यम से कनेक्ट हो रहे हैं...';

  @override
  String get connectedViaWifiSuccess =>
      'वाई-फाई के माध्यम से सफलतापूर्वक कनेक्ट हो गए!';

  @override
  String get pairingViaBluetooth =>
      'ब्लूटूथ के माध्यम से पेयरिंग हो रहे हैं...';

  @override
  String get connectedViaBluetoothSuccess =>
      'ब्लूटूथ के माध्यम से सफलतापूर्वक कनेक्ट हो गए!';

  @override
  String get usingDummyDataset => 'डेमो के लिए डमी डेटासेट का उपयोग कर रहे हैं';

  @override
  String get modelNotLoaded => 'मॉडल अभी तक लोड नहीं हुआ';

  @override
  String get modelLoadedSuccess => 'मॉडल सफलतापूर्वक लोड हुआ';

  @override
  String get failedToLoadModel => 'मॉडल लोड करने में विफल';

  @override
  String analysisFailed(String error) {
    return 'विश्लेषण विफल: $error';
  }

  @override
  String failedToLoadAudioFiles(String error) {
    return 'ऑडियो फाइलें लोड करने में विफल: $error';
  }

  @override
  String get loadingAudioFiles => 'ऑडियो फाइलें लोड हो रही हैं...';

  @override
  String get audioDatasetResults => 'ऑडियो डेटासेट परिणाम';

  @override
  String get stethoscopeDisconnected => 'स्टेथोस्कोप डिस्कनेक्ट हो गया';

  @override
  String get close => 'बंद करें';

  @override
  String get language => 'भाषा';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get appSubtitle =>
      'AI के साथ हृदय और फेफड़ों की आवाज़ें सुनें और उनका विश्लेषण करें';

  @override
  String get welcomeBack => 'वापस स्वागत है!';

  @override
  String get signInToContinue => 'जारी रखने के लिए साइन इन करें';

  @override
  String get enterEmail => 'अपना ईमेल दर्ज करें';

  @override
  String get pleaseEnterEmail => 'कृपया अपना ईमेल दर्ज करें';

  @override
  String get pleaseEnterValidEmail => 'कृपया एक वैध ईमेल दर्ज करें';

  @override
  String get enterPassword => 'अपना पासवर्ड दर्ज करें';

  @override
  String get pleaseEnterPassword => 'कृपया अपना पासवर्ड दर्ज करें';

  @override
  String get passwordMinLength => 'पासवर्ड कम से कम 6 अक्षर का होना चाहिए';

  @override
  String get rememberMe => 'मुझे याद रखें';

  @override
  String get forgotPassword => 'पासवर्ड भूल गए?';

  @override
  String get forgotPasswordComingSoon =>
      'पासवर्ड भूलने की सुविधा जल्द आ रही है';

  @override
  String get or => 'या';

  @override
  String get continueAsGuest => 'गेस्ट के रूप में जारी रखें';

  @override
  String get dontHaveAccount => 'कोई खाता नहीं है?';

  @override
  String get signUp => 'साइन अप करें';

  @override
  String get signUpComingSoon => 'साइन अप की सुविधा जल्द आ रही है';

  @override
  String get connectViaWirelessNetwork =>
      'वायरलेस नेटवर्क के माध्यम से कनेक्ट करें';

  @override
  String get connectViaBluetoothPairing =>
      'ब्लूटूथ पेयरिंग के माध्यम से कनेक्ट करें';

  @override
  String get ecgWaveform => 'ईसीजी तरंगरूप';

  @override
  String get live => 'लाइव';

  @override
  String get stethoscopeConnected => 'स्टेथोस्कोप कनेक्ट हो गया';

  @override
  String get disconnect => 'अलग करें';

  @override
  String get analyzing => 'विश्लेषण हो रहा है...';

  @override
  String get connectDigitalStethoscope => 'डिजिटल स्टेथोस्कोप कनेक्ट करें';

  @override
  String get chooseConnectionMethod => 'कनेक्शन विधि चुनें:';

  @override
  String get selectDiseaseCategory => 'रोग श्रेणी चुनें';

  @override
  String get pneumoniaTB => 'निमोनिया और TB का पता लगाना';

  @override
  String get copdAsthma => 'COPD और अस्थमा का पता लगाना';

  @override
  String get chooseAnalysisType =>
      'आप किस प्रकार का विश्लेषण करना चाहते हैं उसे चुनें:';
}
