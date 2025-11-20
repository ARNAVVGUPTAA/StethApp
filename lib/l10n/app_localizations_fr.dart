// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'StethApp';

  @override
  String get login => 'Connexion';

  @override
  String get email => 'E-mail';

  @override
  String get password => 'Mot de passe';

  @override
  String get connectStethoscope => 'Connecter le Stéthoscope';

  @override
  String get startAIAnalysis => 'Démarrer l\'Analyse IA';

  @override
  String get connectionMethod => 'Méthode de Connexion';

  @override
  String get wifi => 'Wi-Fi';

  @override
  String get bluetooth => 'Bluetooth';

  @override
  String get cancel => 'Annuler';

  @override
  String get connectingViaWifi => 'Connexion via Wi-Fi...';

  @override
  String get connectedViaWifiSuccess => 'Connecté via Wi-Fi avec succès !';

  @override
  String get pairingViaBluetooth => 'Appariement via Bluetooth...';

  @override
  String get connectedViaBluetoothSuccess =>
      'Connecté via Bluetooth avec succès !';

  @override
  String get usingDummyDataset =>
      'Utilisation d\'un jeu de données fictif pour la démo';

  @override
  String get modelNotLoaded => 'Modèle pas encore chargé';

  @override
  String get modelLoadedSuccess => 'Modèle chargé avec succès';

  @override
  String get failedToLoadModel => 'Échec du chargement du modèle';

  @override
  String analysisFailed(String error) {
    return 'Échec de l\'analyse : $error';
  }

  @override
  String failedToLoadAudioFiles(String error) {
    return 'Échec du chargement des fichiers audio : $error';
  }

  @override
  String get loadingAudioFiles => 'Chargement des Fichiers Audio...';

  @override
  String get audioDatasetResults => 'Résultats du Jeu de Données Audio';

  @override
  String get stethoscopeDisconnected => 'Stéthoscope déconnecté';

  @override
  String get close => 'Fermer';

  @override
  String get language => 'Langue';

  @override
  String get settings => 'Paramètres';

  @override
  String get appSubtitle =>
      'Écoutez et analysez les sons cardiaques et pulmonaires avec l\'IA';

  @override
  String get welcomeBack => 'Bon retour !';

  @override
  String get signInToContinue => 'Connectez-vous pour continuer';

  @override
  String get enterEmail => 'Entrez votre e-mail';

  @override
  String get pleaseEnterEmail => 'Veuillez entrer votre e-mail';

  @override
  String get pleaseEnterValidEmail => 'Veuillez entrer un e-mail valide';

  @override
  String get enterPassword => 'Entrez votre mot de passe';

  @override
  String get pleaseEnterPassword => 'Veuillez entrer votre mot de passe';

  @override
  String get passwordMinLength =>
      'Le mot de passe doit comporter au moins 6 caractères';

  @override
  String get rememberMe => 'Se souvenir de moi';

  @override
  String get forgotPassword => 'Mot de passe oublié ?';

  @override
  String get forgotPasswordComingSoon =>
      'La fonctionnalité mot de passe oublié arrive bientôt';

  @override
  String get or => 'OU';

  @override
  String get continueAsGuest => 'Continuer en tant qu\'invité';

  @override
  String get dontHaveAccount => 'Vous n\'avez pas de compte ?';

  @override
  String get signUp => 'S\'inscrire';

  @override
  String get signUpComingSoon =>
      'La fonctionnalité d\'inscription arrive bientôt';

  @override
  String get connectViaWirelessNetwork => 'Connecter via le réseau sans fil';

  @override
  String get connectViaBluetoothPairing =>
      'Connecter via l\'appariement Bluetooth';

  @override
  String get ecgWaveform => 'Forme d\'onde ECG';

  @override
  String get live => 'EN DIRECT';

  @override
  String get stethoscopeConnected => 'Stéthoscope connecté';

  @override
  String get disconnect => 'Déconnecter';

  @override
  String get analyzing => 'Analyse en cours...';

  @override
  String get connectDigitalStethoscope => 'Connecter le Stéthoscope Numérique';

  @override
  String get chooseConnectionMethod => 'Choisissez la méthode de connexion :';

  @override
  String get selectDiseaseCategory => 'Sélectionner la Catégorie de Maladie';

  @override
  String get pneumoniaTB => 'Détection Pneumonie et TB';

  @override
  String get copdAsthma => 'Détection BPCO et Asthme';

  @override
  String get chooseAnalysisType =>
      'Choisissez le type d\'analyse que vous souhaitez effectuer :';
}
