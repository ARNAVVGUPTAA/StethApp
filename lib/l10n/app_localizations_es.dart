// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'StethApp';

  @override
  String get login => 'Iniciar Sesión';

  @override
  String get email => 'Correo Electrónico';

  @override
  String get password => 'Contraseña';

  @override
  String get connectStethoscope => 'Conectar Estetoscopio';

  @override
  String get startAIAnalysis => 'Iniciar Análisis IA';

  @override
  String get connectionMethod => 'Método de Conexión';

  @override
  String get wifi => 'Wi-Fi';

  @override
  String get bluetooth => 'Bluetooth';

  @override
  String get cancel => 'Cancelar';

  @override
  String get connectingViaWifi => 'Conectando vía Wi-Fi...';

  @override
  String get connectedViaWifiSuccess => '¡Conectado vía Wi-Fi exitosamente!';

  @override
  String get pairingViaBluetooth => 'Emparejando vía Bluetooth...';

  @override
  String get connectedViaBluetoothSuccess =>
      '¡Conectado vía Bluetooth exitosamente!';

  @override
  String get usingDummyDataset => 'Usando conjunto de datos ficticio para demo';

  @override
  String get modelNotLoaded => 'Modelo aún no cargado';

  @override
  String get modelLoadedSuccess => 'Modelo cargado exitosamente';

  @override
  String get failedToLoadModel => 'Error al cargar el modelo';

  @override
  String analysisFailed(String error) {
    return 'Análisis falló: $error';
  }

  @override
  String failedToLoadAudioFiles(String error) {
    return 'Error al cargar archivos de audio: $error';
  }

  @override
  String get loadingAudioFiles => 'Cargando Archivos de Audio...';

  @override
  String get audioDatasetResults => 'Resultados del Conjunto de Datos de Audio';

  @override
  String get stethoscopeDisconnected => 'Estetoscopio desconectado';

  @override
  String get close => 'Cerrar';

  @override
  String get language => 'Idioma';

  @override
  String get settings => 'Configuración';

  @override
  String get appSubtitle =>
      'Escuchar y analizar sonidos cardíacos y pulmonares con IA';

  @override
  String get welcomeBack => '¡Bienvenido de vuelta!';

  @override
  String get signInToContinue => 'Inicia sesión para continuar';

  @override
  String get enterEmail => 'Ingresa tu correo electrónico';

  @override
  String get pleaseEnterEmail => 'Por favor ingresa tu correo electrónico';

  @override
  String get pleaseEnterValidEmail =>
      'Por favor ingresa un correo electrónico válido';

  @override
  String get enterPassword => 'Ingresa tu contraseña';

  @override
  String get pleaseEnterPassword => 'Por favor ingresa tu contraseña';

  @override
  String get passwordMinLength =>
      'La contraseña debe tener al menos 6 caracteres';

  @override
  String get rememberMe => 'Recordarme';

  @override
  String get forgotPassword => '¿Olvidaste tu contraseña?';

  @override
  String get forgotPasswordComingSoon =>
      'La función de contraseña olvidada estará disponible pronto';

  @override
  String get or => 'O';

  @override
  String get continueAsGuest => 'Continuar como invitado';

  @override
  String get dontHaveAccount => '¿No tienes una cuenta?';

  @override
  String get signUp => 'Registrarse';

  @override
  String get signUpComingSoon =>
      'La función de registro estará disponible pronto';

  @override
  String get connectViaWirelessNetwork => 'Conectar vía red inalámbrica';

  @override
  String get connectViaBluetoothPairing =>
      'Conectar vía emparejamiento Bluetooth';

  @override
  String get ecgWaveform => 'Forma de onda ECG';

  @override
  String get live => 'EN VIVO';

  @override
  String get stethoscopeConnected => 'Estetoscopio conectado';

  @override
  String get disconnect => 'Desconectar';

  @override
  String get analyzing => 'Analizando...';

  @override
  String get connectDigitalStethoscope => 'Conectar Estetoscopio Digital';

  @override
  String get chooseConnectionMethod => 'Elegir método de conexión:';

  @override
  String get selectDiseaseCategory => 'Seleccionar Categoría de Enfermedad';

  @override
  String get pneumoniaTB => 'Detección de Neumonía y TB';

  @override
  String get copdAsthma => 'Detección de EPOC y Asma';

  @override
  String get chooseAnalysisType =>
      'Elija el tipo de análisis que desea realizar:';
}
