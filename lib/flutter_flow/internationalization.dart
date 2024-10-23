import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
  }) =>
      [esText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Home
  {
    'ay8wdlx9': {
      'es': '¿Cómo te encuentras hoy?',
      'en': 'How are you feeling today?',
    },
    'b3dcw7yz': {
      'es': 'Diario de Síntomas',
      'en': 'Symptom Diary',
    },
    '0mtreec3': {
      'es': 'Diario de \nintolerancias',
      'en': 'Diary of \nintolerances',
    },
    'qfhcs0zs': {
      'es': 'Diario de Sueño',
      'en': 'Sleep Diary',
    },
    '04siahpf': {
      'es': 'Resumen de \nDiarios',
      'en': 'Summary of \nDiaries',
    },
    'u5dnxul1': {
      'es': 'Carpeta de \nSalud',
      'en': 'Health Folder',
    },
    'p4jea8a4': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // signup
  {
    '12t3jyza': {
      'es': 'Bienvenid@!',
      'en': 'Welcome!',
    },
    'ikdt1sf0': {
      'es': 'Rellena los siguientes datos para crear tu cuenta.',
      'en': 'Fill in the following information to create your account.',
    },
    'v4euq4c9': {
      'es': 'Email',
      'en': 'E-mail',
    },
    'uo87i5tq': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    'xev3nb34': {
      'es': 'La contraseña debe tener al menos 6 caractéres',
      'en': 'Password must be at least 6 characters long',
    },
    'o1itvswd': {
      'es': 'Nombre',
      'en': 'Name',
    },
    'a59cop5k': {
      'es': 'Apellidos',
      'en': 'Surnames',
    },
    'co2bn1zi': {
      'es': 'Fecha de Nacimiento',
      'en': 'Birthdate',
    },
    'sr5jpnd7': {
      'es': 'Paciente',
      'en': 'Patient',
    },
    'j4asy9q9': {
      'es': 'Profesional Sanitario',
      'en': 'Health Professional',
    },
    'ibl0ddnw': {
      'es': 'Empresa',
      'en': 'Company',
    },
    'crvb2rt1': {
      'es': 'Asociación',
      'en': 'Association',
    },
    'naae906h': {
      'es': '¿Qué tipo de usuario eres?',
      'en': 'What kind of user are you?',
    },
    'nmo79shg': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'y5ks55zr': {
      'es': 'Continuar',
      'en': 'Continue',
    },
    'zlclhibd': {
      'es': '¿Ya tienes una cuenta?  ',
      'en': 'Already have an account?',
    },
    'vqgreqfj': {
      'es': 'Entra aquí',
      'en': 'Enter here',
    },
    'v4wlbgsg': {
      'es': '¿Ya tienes una cuenta?  ',
      'en': 'Already have an account?',
    },
    'apt86m0w': {
      'es': 'Entra aquí',
      'en': 'Enter here',
    },
    'd0pezn4q': {
      'es': 'Defenergy - 2024 Todos los derechos reservados',
      'en': 'Defenergy - 2024 All rights reserved',
    },
    'tuuxb4i3': {
      'es':
          'Ploints Loyalty Solutions S.L. - 2024 Todos los derechos reservados',
      'en': 'Ploints Loyalty Solutions S.L. - 2024 All rights reserved',
    },
    '4278y08r': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // valida_email
  {
    'b4k8427g': {
      'es': 'Validación de email',
      'en': 'Email validation',
    },
    '8tcc1q1l': {
      'es': 'Por favor introduce el código que hemos enviado a tu email',
      'en': 'Please enter the code that we have sent to your email',
    },
    's8mbcjdc': {
      'es': '¿No has recibido el código?   ',
      'en': 'Have not you received the code?',
    },
    '8b2tobu9': {
      'es': 'Reenviar',
      'en': 'Resend',
    },
    'sw6d1a35': {
      'es': 'Acepto los ',
      'en': 'I accept the',
    },
    'pc4tv1sc': {
      'es': 'Términos y Condiciones de Uso ',
      'en': 'Terms and conditions of use',
    },
    'zzophick': {
      'es': 'y la ',
      'en': 'and the',
    },
    'umbqylyz': {
      'es': 'Política de Privacidad',
      'en': 'Privacy Policy',
    },
    '1c4opab8': {
      'es': 'Acepto los ',
      'en': 'I accept the',
    },
    'fq456wte': {
      'es': 'Política de Investigación',
      'en': 'Research Policy',
    },
    '9ia5csae': {
      'es': 'Continuar',
      'en': 'Continue',
    },
    'yapjblqf': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    'a7k08j1a': {
      'es': 'Defenergy - 2024 Todos los derechos reservados',
      'en': 'Defenergy - 2024 All rights reserved',
    },
    '6rv05z2i': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // legal_uso
  {
    '825ohqvt': {
      'es': 'Condiciones de Uso',
      'en': 'Terms of use',
    },
    'lk6pgt52': {
      'es': 'Política de Privacidad',
      'en': 'Privacy Policy',
    },
    'gfbxt9g8': {
      'es': 'Condiciones de Uso',
      'en': 'Terms of use',
    },
    'vqhgb597': {
      'es': 'Política de Privacidad',
      'en': 'Privacy Policy',
    },
    'y6gg8eze': {
      'es': 'Volver',
      'en': 'Return',
    },
    'jdngdg9p': {
      'es': 'Términos legales',
      'en': 'Legal terms',
    },
    'nqmfxcq5': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // legal_investigacion
  {
    'uapxggvs': {
      'es': 'Política de Investigación',
      'en': 'Research Policy',
    },
    '9b23ghqj': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // signUpEnfermedad
  {
    'xc1byqy9': {
      'es': '50%',
      'en': '75%',
    },
    'cl4mxfnc': {
      'es': 'Por favor selecciona tus enfermedades:',
      'en': 'Please select your diseases:',
    },
    'veot76fd': {
      'es': 'COVID Persistente',
      'en': 'Persistent Covid',
    },
    'hqzj5pd1': {
      'es': 'Encefalomielitis Miálgica',
      'en': 'Myalgic Encephalomyelitis',
    },
    'w6jt7yrt': {
      'es': 'Fibromialgia',
      'en': 'Fibromyalgia',
    },
    'vvhdyg30': {
      'es': 'Enfermedad Autoinmune',
      'en': 'Other Autoimmune Diseases',
    },
    'ix9jgks1': {
      'es': 'Intolerancias alimentarias',
      'en': 'Only food intolerances',
    },
    '5568d4fv': {
      'es': 'Continuar',
      'en': 'Continue',
    },
    'ys9z67km': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    '1oot70md': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // signUpEmpresa
  {
    'zyyumz1q': {
      'es': 'Más información',
      'en': 'More information',
    },
    'n0kf5dy8': {
      'es':
          'Ahora necesitamos conocer algo más de ti, por favor responde a las siguientes cuestiones:',
      'en':
          'Now we need to know something more about you, please answer the following questions:',
    },
    'py1ylosf': {
      'es': '75%',
      'en': '75%',
    },
    'vsvfxbye': {
      'es': 'Selecciona tu profesión',
      'en': 'Select your profession',
    },
    'ofw7onmr': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'zmoh143j': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'vbqsb0az': {
      'es': 'Número de Colegiado (Opcional)',
      'en': 'Member Number',
    },
    '4oueqruf': {
      'es': 'NIF',
      'en': 'NIF',
    },
    'hdb89frz': {
      'es': 'Dirección',
      'en': 'Address',
    },
    '1crgx4li': {
      'es': 'Ciudad',
      'en': 'City',
    },
    'rc4lvbox': {
      'es': 'Código Postal',
      'en': 'Postal Code',
    },
    '82nz16kr': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    '9inoxad0': {
      'es': 'CIF',
      'en': 'CIF',
    },
    'ky20227h': {
      'es': 'Dirección',
      'en': 'Address',
    },
    'y3r13q2r': {
      'es': 'Ciudad',
      'en': 'City',
    },
    's0vw5x2b': {
      'es': 'Código Postal',
      'en': 'Postal Code',
    },
    '80qqwan4': {
      'es': 'Email corporativo',
      'en': 'Corporate email',
    },
    'fpwhfqpx': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    'is3mo1ni': {
      'es': 'Me he equivocado de tipo de usuario',
      'en': 'I have entered the wrong user type',
    },
    'mm5hocy8': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    '8ko51yzl': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // signUp_detalle_enfermedad
  {
    'v0bfny9h': {
      'es': 'Más información',
      'en': 'More information',
    },
    'ftxcjcvr': {
      'es':
          'Ahora necesitamos conocer algo más de ti, por favor responde a las siguientes cuestiones:',
      'en':
          'Now we need to know a little more about you, please answer the following questions:',
    },
    'miqs793k': {
      'es': '75%',
      'en': '75%',
    },
    'ek3xlwpc': {
      'es': 'Femenino',
      'en': 'Female',
    },
    'ofi0b6nt': {
      'es': 'Masculino',
      'en': 'Male',
    },
    'aetdrzy5': {
      'es': '¿Cuál es tu género?',
      'en': 'What is your gender?',
    },
    '85q2q5a3': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'zrj6y4nk': {
      'es': 'No',
      'en': 'No',
    },
    'qz75u12o': {
      'es': 'Si',
      'en': 'Yeah',
    },
    'uam2dz4k': {
      'es': '¿Eres fumador/a?',
      'en': 'Are you a smoker?',
    },
    'cwh3joix': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'ndor5m17': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    '3bv5uxai': {
      'es': 'Social',
      'en': 'Social',
    },
    'y8znx99t': {
      'es': 'Diario',
      'en': 'Diary',
    },
    '02tno779': {
      'es': '¿Consumes Alcohol?',
      'en': 'Do you consume alcohol?',
    },
    'nk625kim': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'tsiybb7q': {
      'es': 'Selecciona tu peso',
      'en': 'Select your weight',
    },
    '7yoteb6w': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'ml1c99ac': {
      'es': 'Selecciona tu altura',
      'en': 'Select your height',
    },
    'v8omixs2': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '501vjygi': {
      'es': '¿En qué año te infectaste con el SARS-CoV-2?',
      'en': 'What year did you get infected with SARS-CoV-2?',
    },
    '846kfcjg': {
      'es': '2020',
      'en': '2020',
    },
    '9az8ul7h': {
      'es': '2021',
      'en': '2021',
    },
    'qlzntzsi': {
      'es': '2022',
      'en': '2022',
    },
    'n1wkn8iz': {
      'es': '2023',
      'en': '2023',
    },
    'pqt1zwh6': {
      'es': '2024',
      'en': '2024',
    },
    'xtc2t16b': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '1zuwyrwo': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '0et0o6am': {
      'es': '¿Cuántas veces te has contagiado COVID? ',
      'en': 'How many times have you had COVID?',
    },
    'vj6k7if2': {
      'es': '1',
      'en': '1',
    },
    '55t0plmu': {
      'es': '2',
      'en': '2',
    },
    'b1ovgiy7': {
      'es': '3',
      'en': '3',
    },
    '0t0jiwvf': {
      'es': '4',
      'en': '4',
    },
    '584keajy': {
      'es': '5',
      'en': '5',
    },
    'qawi6fqo': {
      'es': '6',
      'en': '6',
    },
    '6fbftetz': {
      'es': '7',
      'en': '7',
    },
    'mvkxqsc9': {
      'es': '8',
      'en': '8',
    },
    'busj8dhm': {
      'es': '9',
      'en': '9',
    },
    'hwruok4h': {
      'es': '10',
      'en': '10',
    },
    '6xptshyv': {
      'es': 'Más de una vez',
      'en': 'More than once',
    },
    'vemo42xm': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '5i8n8jm4': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'axfrptsc': {
      'es': '¿Tienes algún familiar directo que tenga COVID persistente?',
      'en':
          'Do you have any immediate family members who have long-term COVID?',
    },
    '65vs9c8a': {
      'es': 'Si',
      'en': 'Yeah',
    },
    '31e4wzeg': {
      'es': 'No',
      'en': 'No',
    },
    '2wxnmqig': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'e5qpd4r7': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'k199rfjc': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'enseo557': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    '3v7ssf6l': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'pvq4v9ij': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'ms85xsz0': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '3d9x3diu': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'bw9zvjud': {
      'es': 'Escribe aquí tus otras enfermedades',
      'en': 'Write your other illnesses here',
    },
    'iw3uwihs': {
      'es': '',
      'en': '',
    },
    'h937d3bn': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    'g4zat2m1': {
      'es': '¿Tras qué evento desarrollaste Fibromialgia?',
      'en': 'After what event did you develop Fibromyalgia?',
    },
    'qcj6fq48': {
      'es': 'No lo sé',
      'en': 'Viral infection or cold',
    },
    'hzc5tek3': {
      'es': 'Infección viral o resfriado',
      'en': 'After surgery',
    },
    'p4tvp36u': {
      'es': 'Tras una cirugía',
      'en': 'After an accident',
    },
    '9blpvq3g': {
      'es': 'Tras un accidente',
      'en': 'After hospital stay',
    },
    '0m4prlij': {
      'es': 'Tras estancia hospitalaria',
      'en': 'Stress',
    },
    'mim6wql1': {
      'es': 'Estrés',
      'en': 'Postpartum',
    },
    'v8eqnhmq': {
      'es': 'Postparto',
      'en': 'Don\'t know',
    },
    'xdcusyx6': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'u45tx5qq': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'znxz8l41': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'tx9i4ghr': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'nsry0vbz': {
      'es': 'de 1 a 3 años',
      'en': 'from 1 to 3 years',
    },
    '05t9o80i': {
      'es': 'de 3 a 5 años',
      'en': '3 to 5 years',
    },
    'phh9pkq1': {
      'es': 'más de 5 años',
      'en': 'more than 5 years',
    },
    '5wz9s42j': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ov6t7tyg': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'chawyo52': {
      'es': '¿Empeoran tus síntomas tras un leve esfuerzo físico o mental?',
      'en': 'Do your symptoms worsen after mild physical or mental exertion?',
    },
    'y6t8v16g': {
      'es': 'Si',
      'en': 'Yes',
    },
    'denaqaju': {
      'es': 'No',
      'en': 'No',
    },
    '2v4lrvx9': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '9op6tcgy': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'iqqpdxgl': {
      'es': '¿Tienes algún familiar directo que tenga Fibromialgia?',
      'en': 'Do you have any immediate family members who have Fibromyalgia?',
    },
    'w19ce6zz': {
      'es': 'Si',
      'en': 'Yes',
    },
    'rz2t6hum': {
      'es': 'No',
      'en': 'No',
    },
    'g0zddtk0': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'yj9snk8i': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'pvnmnmdz': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'anywgijx': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'c8i1ckdk': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    '1pwfc0qu': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'qfk8i4lp': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'yjler4kq': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'drnh1i0t': {
      'es': 'Escribe aquí tus otras enfermedades',
      'en': 'Write your other illnesses here',
    },
    'lu0kep6t': {
      'es': '',
      'en': '',
    },
    '9ii1g4de': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    '8wv48f1o': {
      'es': '¿Con qué criterios te han diagnosticado?',
      'en': 'What criteria have you been diagnosed with?',
    },
    'ua4s77wz': {
      'es': 'No lo sé pero tengo el diagnóstico',
      'en': 'Canadian Consensus Criteria (CCC)',
    },
    '9iyaoxmk': {
      'es': 'Criterios de consenso canadienses (CCC)',
      'en': 'Fukuda criteria',
    },
    'c0c4tvt4': {
      'es': 'Criterios de Fukuda',
      'en': 'International Consensus Criteria (ICC)',
    },
    'ucqhmyid': {
      'es': 'Criterios de consenso internacional (ICC)',
      'en': 'Systemic exertion intolerance disease (SEID) criteria',
    },
    '7nn08l34': {
      'es':
          'Criterios de enfermedad de intolerancia al esfuerzo sistémico (SEID)',
      'en': 'I don\'t know but I have the diagnosis',
    },
    'e3cpz5qm': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '9ops1pcc': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'ycxof0ja': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'rb9seb5w': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'hviwxngk': {
      'es': 'de 1 a 3 años',
      'en': 'from 1 to 3 years',
    },
    'xxm5lys4': {
      'es': 'de 3 a 5 años',
      'en': '3 to 5 years',
    },
    'tecsc3c7': {
      'es': 'más de 5 años',
      'en': 'more than 5 years',
    },
    'ikmr0xro': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'eaq5jrwn': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'c6b749l8': {
      'es': '¿Tras qué evento desarrollaste EM/SFC?',
      'en': 'After what event did you develop ME/CFS?',
    },
    'xlk7b90w': {
      'es': 'No lo sé',
      'en': 'Viral infection or cold',
    },
    'f3eto34s': {
      'es': 'Infección viral o resfriado',
      'en': 'After surgery',
    },
    'h0z8d506': {
      'es': 'Tras una cirugía',
      'en': 'After an accident',
    },
    'f2beegn3': {
      'es': 'Tras un accidente',
      'en': 'Stress',
    },
    '6is0gunb': {
      'es': 'Estrés',
      'en': 'Postpartum',
    },
    'v3n3hqj8': {
      'es': 'Postparto',
      'en': 'Medication',
    },
    'r5zo7i8o': {
      'es': 'Medicación',
      'en': 'Don\'t know',
    },
    'ux7ssy8m': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '1sf7xpw4': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'zex53crn': {
      'es': '¿Tienes algún familiar directo que tenga EM/SFC?',
      'en': 'Do you have any immediate family members who have ME/CFS?',
    },
    '3q38fn4t': {
      'es': 'Si',
      'en': 'Yes',
    },
    'zqhhlyus': {
      'es': 'No',
      'en': 'No',
    },
    'lptfc47v': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'dl5mjv4s': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'r8ai1vfn': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'ay7hnasv': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'vfbnkxm9': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'pelvqqpi': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    '46orqyku': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '6acvfkec': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '6jp4j1c0': {
      'es': 'Escribe aquí tus otras enfermedades',
      'en': 'Write your other illnesses here',
    },
    'r0iy9vjg': {
      'es': '',
      'en': '',
    },
    '6kx0fz68': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    'n3ycbbb9': {
      'es': '¿Qué enfermedad tienes diagnosticada?',
      'en': 'What disease have you been diagnosed with?',
    },
    'vbvk2t6w': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'f4fvjb2j': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'ume29hw3': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'dv7i5z7e': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'u3hbjmog': {
      'es': 'de 1 a 3 años',
      'en': 'from 1 to 3 years',
    },
    '6gsbji7a': {
      'es': 'de 3 a 5 años',
      'en': '3 to 5 years',
    },
    'chy6std3': {
      'es': 'más de 5 años',
      'en': 'more than 5 years',
    },
    'r8w91ivm': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'jgmwbew2': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '1clmpagw': {
      'es': '¿Tienes algún familiar directo que tenga la misma enfermedad?',
      'en':
          'Do you have any immediate family members who have the same disease?',
    },
    '8dh15ee4': {
      'es': 'Si',
      'en': 'Yes',
    },
    '4xrqsvkn': {
      'es': 'No',
      'en': 'No',
    },
    '0dka0wgi': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'j21mzj45': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'oefois7m': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'hyrsxg7i': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'kf4dwhc4': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'eg597q4p': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'ot49523d': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'y47pb4vs': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'awdei4g6': {
      'es': 'Escribe aquí tus otras enfermedades',
      'en': 'Write your other illnesses here',
    },
    'fd1e43ll': {
      'es': '',
      'en': '',
    },
    'gig2hxkz': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    '16dii3ny': {
      'es': 'Escribe aquí tus otras enfermedades',
      'en': 'Write your other illnesses here',
    },
    'deosvudv': {
      'es': '',
      'en': '',
    },
    'rp0ekvhi': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    'fk707no3': {
      'es': '¿En qué año te infectaste con el SARS-CoV-2?',
      'en': 'What year did you get infected with SARS-CoV-2?',
    },
    'kf6zmpit': {
      'es': '2020',
      'en': '2020',
    },
    'ardt0bvd': {
      'es': '2021',
      'en': '2021',
    },
    'tyazttsk': {
      'es': '2022',
      'en': '2022',
    },
    'wg64hyeq': {
      'es': '2023',
      'en': '2023',
    },
    'j41ijokt': {
      'es': '2024',
      'en': '2024',
    },
    '242j530a': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'eqxank3h': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'vgity7l7': {
      'es': '¿Cuántas veces te has contagiado con el SARS-CoV-2?',
      'en': 'How many times have you been infected with SARS-CoV-2?',
    },
    '7ruuuj2i': {
      'es': '1',
      'en': '1',
    },
    '58q9gt7q': {
      'es': '2',
      'en': '2',
    },
    '14nik4up': {
      'es': '3',
      'en': '3',
    },
    'sxi9n6id': {
      'es': '4',
      'en': '4',
    },
    'gvh28h9m': {
      'es': '5',
      'en': '5',
    },
    'jply2wii': {
      'es': '6',
      'en': '6',
    },
    '9zbriw37': {
      'es': '7',
      'en': '7',
    },
    'ooyx6s2q': {
      'es': '8',
      'en': '8',
    },
    'dy4uf99u': {
      'es': '9',
      'en': '9',
    },
    'oo4dep8k': {
      'es': '10',
      'en': '10',
    },
    'j48dkrjd': {
      'es': 'Más de una vez',
      'en': 'More than once',
    },
    'evfpjrcc': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'uco232hw': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'o670j55h': {
      'es': '¿Tienes algún familiar directo que tenga COVID persistente?',
      'en':
          'Do you have any immediate family members who have long-term COVID?',
    },
    'v37rm1hx': {
      'es': 'Si',
      'en': 'Yes',
    },
    'zdvn7txm': {
      'es': 'No',
      'en': 'No',
    },
    'yvdrjlkd': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '3e46y0zc': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '7cq5c0x7': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'v1ymsk20': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'vep6ixzk': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'x3f7vvgh': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'qhr87loa': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'bxsf5r7v': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '58d0ty5d': {
      'es': '¿Con qué criterios te han diagnosticado EM/SFC?',
      'en': 'What criteria have you been diagnosed with ME/CFS?',
    },
    'd7bf7at1': {
      'es': 'No lo sé pero tengo el diagnóstico',
      'en': 'Canadian Consensus Criteria (CCC)',
    },
    'kkhmhprz': {
      'es': 'Criterios de consenso canadienses (CCC)',
      'en': 'Fukuda criteria',
    },
    'n37i0cof': {
      'es': 'Criterios de Fukuda',
      'en': 'International Consensus Criteria (ICC)',
    },
    '5yt3odal': {
      'es': 'Criterios de consenso internacional (ICC)',
      'en': 'Systemic exertion intolerance disease (SEID) criteria',
    },
    '3x9570nt': {
      'es':
          'Criterios de enfermedad de intolerancia al esfuerzo sistémico (SEID)',
      'en': 'I don\'t know but I have the diagnosis',
    },
    'wu6hpq88': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'mg3ss6j1': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'ysl23onx': {
      'es': '¿Cuánto tiempo llevas diagnosticado EM/SFC?',
      'en': 'How long have you been diagnosed with ME/CFS?',
    },
    '8us3ed50': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'jtnp76ek': {
      'es': 'de 1 a 3 años',
      'en': 'from 1 to 3 years',
    },
    'zk8m5ogo': {
      'es': 'de 3 a 5 años',
      'en': '3 to 5 years',
    },
    '8boondpp': {
      'es': 'más de 5 años',
      'en': 'more than 5 years',
    },
    'k3do9eas': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ioqfsgqs': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '3fnvud3s': {
      'es': '¿Tras qué evento desarrollaste EM/SFC?',
      'en': 'After what event did you develop ME/CFS?',
    },
    'tk7zqabw': {
      'es': 'No lo sé',
      'en': 'Viral infection or cold',
    },
    'lmuwe416': {
      'es': 'Infección viral o resfriado',
      'en': 'After surgery',
    },
    '6n0t89gl': {
      'es': 'Tras una cirugía',
      'en': 'After an accident',
    },
    'shx013aa': {
      'es': 'Tras un accidente',
      'en': 'Stress',
    },
    'do12xr05': {
      'es': 'Estrés',
      'en': 'Postpartum',
    },
    'tw7124ry': {
      'es': 'Postparto',
      'en': 'Medication',
    },
    '2ibyhi23': {
      'es': 'Medicación',
      'en': 'Don\'t know',
    },
    'd6iqbat9': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    's00hyxeb': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '7c60glzf': {
      'es': '¿Tienes algún familiar directo que tenga EM/SFC?',
      'en': 'Do you have any immediate family members who have ME/CFS?',
    },
    'cdj1gjoo': {
      'es': 'Si',
      'en': 'Yes',
    },
    '1a0sbr89': {
      'es': 'No',
      'en': 'No',
    },
    '5ucg3i3g': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'pgqns6r3': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'dx8fdr67': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'dwivpz3i': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'pheiinzt': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    '5sqh8qf9': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    '2i7n2pw9': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'tprnd2tg': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'jd0z2daj': {
      'es': 'Escribe aquí tus otras enfermedades',
      'en': 'Write your other illnesses here',
    },
    '182rq2yt': {
      'es': '',
      'en': '',
    },
    '9azongu8': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    'haz3cs2x': {
      'es': '¿Tras qué evento desarrollaste Fibromialgia?',
      'en': 'After what event did you develop Fibromyalgia?',
    },
    '0ho2hjhk': {
      'es': 'No lo sé',
      'en': 'Viral infection or cold',
    },
    'ahvxzgjr': {
      'es': 'Infección viral o resfriado',
      'en': 'After surgery',
    },
    '4gzgi2v1': {
      'es': 'Tras una cirugía',
      'en': 'After an accident',
    },
    'zti9u3us': {
      'es': 'Tras un accidente',
      'en': 'After hospital stay',
    },
    '3gr5cxgb': {
      'es': 'Tras estancia hospitalaria',
      'en': 'Stress',
    },
    'jxwsclru': {
      'es': 'Estrés',
      'en': 'Postpartum',
    },
    'm9bij2ti': {
      'es': 'Postparto',
      'en': 'Don\'t know',
    },
    'tbbwa317': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '3nifj4md': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'glz59dry': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'd8zm4p7n': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '9mcm13oa': {
      'es': 'de 1 a 3 años',
      'en': 'from 1 to 3 years',
    },
    't80k69dh': {
      'es': 'de 3 a 5 años',
      'en': '3 to 5 years',
    },
    'z3tkgy7l': {
      'es': 'más de 5 años',
      'en': 'more than 5 years',
    },
    'ux3m9pbj': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '4e8wkc6m': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'h0m069y8': {
      'es': '¿Empeoran tus síntomas tras un leve esfuerzo físico o mental?',
      'en': 'Do your symptoms worsen after mild physical or mental exertion?',
    },
    '4pvgn93t': {
      'es': 'Si',
      'en': 'Yes',
    },
    'ko2k45if': {
      'es': 'No',
      'en': 'No',
    },
    'arpgq7xz': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'gg2zbqid': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'e40t35j2': {
      'es': '¿Tienes algún familiar directo que tenga Fibromialgia?',
      'en': 'Do you have any immediate family members who have Fibromyalgia?',
    },
    'va3simti': {
      'es': 'Si',
      'en': 'Yes',
    },
    'grm67jnq': {
      'es': 'No',
      'en': 'No',
    },
    '29dd61ot': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'zus360d9': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'hiz1gsjy': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'nu76fw0r': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    '8akuuoqg': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    '3j6yhocz': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'fy9e8w3e': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'nzm52x7f': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'mqdeqi0d': {
      'es': '¿Con qué criterios te han diagnosticado?',
      'en': 'What criteria have you been diagnosed with?',
    },
    '9wdbuop0': {
      'es': 'No lo sé pero tengo el diagnóstico',
      'en': 'Canadian Consensus Criteria (CCC)',
    },
    '3iule0of': {
      'es': 'Criterios de consenso canadienses (CCC)',
      'en': 'Fukuda criteria',
    },
    '0fer5l4z': {
      'es': 'Criterios de Fukuda',
      'en': 'International Consensus Criteria (ICC)',
    },
    'lch643vz': {
      'es': 'Criterios de consenso internacional (ICC)',
      'en': 'Systemic exertion intolerance disease (SEID) criteria',
    },
    'bty4brnk': {
      'es':
          'Criterios de enfermedad de intolerancia al esfuerzo sistémico (SEID)',
      'en': 'I don\'t know but I have the diagnosis',
    },
    'vrtfvf97': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'jq57bzm8': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'w532t9xh': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'j5u7yhsr': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'hv1rixq9': {
      'es': 'de 1 a 3 años',
      'en': 'from 1 to 3 years',
    },
    'g7lxte7c': {
      'es': 'de 3 a 5 años',
      'en': '3 to 5 years',
    },
    'qva6ips8': {
      'es': 'más de 5 años',
      'en': 'more than 5 years',
    },
    'jgqzhiw5': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'xngs53fg': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'qoqm8f7r': {
      'es': '¿Tras qué evento desarrollaste EM/SFC?',
      'en': 'After what event did you develop ME/CFS?',
    },
    '03wzlmhj': {
      'es': 'No lo sé',
      'en': 'Viral infection or cold',
    },
    'mzq8e3of': {
      'es': 'Infección viral o resfriado',
      'en': 'After surgery',
    },
    '8s8yi90m': {
      'es': 'Tras una cirugía',
      'en': 'After an accident',
    },
    'duqoy5m4': {
      'es': 'Tras un accidente',
      'en': 'Stress',
    },
    'o49sypfc': {
      'es': 'Estrés',
      'en': 'Postpartum',
    },
    'wk1fnq7e': {
      'es': 'Postparto',
      'en': 'Medication',
    },
    'l0kswy9e': {
      'es': 'Medicación',
      'en': 'Don\'t know',
    },
    't3irg48x': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'nmbbr1bz': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'jctr0ilq': {
      'es': '¿Tienes algún familiar directo que tenga EM/SFC?',
      'en': 'Do you have any immediate family members who have ME/CFS?',
    },
    'q66yp0rz': {
      'es': 'Si',
      'en': 'Yes',
    },
    'gv9ayit9': {
      'es': 'No',
      'en': 'No',
    },
    'uj1p0fha': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ua8h4wtf': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '4hk5m9yl': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'cd23uhs5': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'velakxys': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'n7dqsmdq': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'yq2nfz7v': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ntalws28': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '5mls7ju7': {
      'es': 'Escribe aquí tus otras enfermedades',
      'en': 'Write your other illnesses here',
    },
    'nlmnt7n6': {
      'es': '',
      'en': '',
    },
    'v4z4o8b8': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    '9reppoj3': {
      'es': '¿En qué año te infectaste con el SARS-CoV-2?',
      'en': 'What year did you get infected with SARS-CoV-2?',
    },
    'lhxweo8i': {
      'es': '2020',
      'en': '2020',
    },
    'sn47vlgd': {
      'es': '2021',
      'en': '2021',
    },
    'rjsc6lpl': {
      'es': '2022',
      'en': '2022',
    },
    'x5s2wv10': {
      'es': '2023',
      'en': '2023',
    },
    'c1ycy00w': {
      'es': '2024',
      'en': '2024',
    },
    'cb53z8xa': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'o6likmzd': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'yng0kkls': {
      'es': '¿Cuántas veces te has contagiado con el SARS-CoV-2?',
      'en': 'How many times have you been infected with SARS-CoV-2?',
    },
    '2vxz0fiw': {
      'es': '1',
      'en': '1',
    },
    '79p4i0ny': {
      'es': '2',
      'en': '2',
    },
    '7hg2s7d8': {
      'es': '3',
      'en': '3',
    },
    'bqpq2zho': {
      'es': '4',
      'en': '4',
    },
    'vamc72em': {
      'es': '5',
      'en': '5',
    },
    'n5k76xqm': {
      'es': '6',
      'en': '6',
    },
    'kf6wm1jg': {
      'es': '7',
      'en': '7',
    },
    'kx0ad6gs': {
      'es': '8',
      'en': '8',
    },
    'f2uigdww': {
      'es': '9',
      'en': '9',
    },
    'k5ifflsv': {
      'es': '10',
      'en': '10',
    },
    '4jcamgxn': {
      'es': 'Más de una vez',
      'en': 'More than once',
    },
    'r5ga2jd1': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'mmpv3qwh': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'n9sx2ecr': {
      'es': '¿Tienes algún familiar directo que tenga COVID persistente?',
      'en':
          'Do you have any immediate family members who have long-term COVID?',
    },
    '3pyk3tbf': {
      'es': 'Si',
      'en': 'Yes',
    },
    't2gjnb93': {
      'es': 'No',
      'en': 'No',
    },
    'odk2jivy': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '9yxq4kpa': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'mbkvrih5': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'rs6shgy5': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'x6awq1td': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    '0k209paz': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    '3yvgrvp0': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'cm22hom2': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'qjer1ysa': {
      'es': '¿Tras qué evento desarrollaste Fibromialgia?',
      'en': 'After what event did you develop Fibromyalgia?',
    },
    '0tswkrxa': {
      'es': 'No lo sé',
      'en': 'Viral infection or cold',
    },
    'e0pwbwpx': {
      'es': 'Infección viral o resfriado',
      'en': 'After surgery',
    },
    '4gh8yxo5': {
      'es': 'Tras una cirugía',
      'en': 'After an accident',
    },
    'cyrnz9hh': {
      'es': 'Tras un accidente',
      'en': 'After hospital stay',
    },
    'bodhxlvj': {
      'es': 'Tras estancia hospitalaria',
      'en': 'Stress',
    },
    '6kp5l6lb': {
      'es': 'Estrés',
      'en': 'Postpartum',
    },
    '4wkynwt1': {
      'es': 'Postparto',
      'en': 'Don\'t know',
    },
    'xjmcgun6': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'sgybupj5': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'o8q7jneb': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'hh4bduvv': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '6p6xahwl': {
      'es': 'de 1 a 3 años',
      'en': 'from 1 to 3 years',
    },
    'pjewwr3i': {
      'es': 'de 3 a 5 años',
      'en': '3 to 5 years',
    },
    '7fd4w87h': {
      'es': 'más de 5 años',
      'en': 'more than 5 years',
    },
    'tq1fhg0x': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'te3cdai4': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'w3jcp13j': {
      'es': '¿Empeoran tus síntomas tras un leve esfuerzo físico o mental?',
      'en': 'Do your symptoms worsen after mild physical or mental exertion?',
    },
    'py0c03eu': {
      'es': 'Si',
      'en': 'Yes',
    },
    'ooc3j0ak': {
      'es': 'No',
      'en': 'No',
    },
    'eo3hl3r7': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'rx8jux69': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'ui751wv0': {
      'es': '¿Tienes algún familiar directo que tenga Fibromialgia?',
      'en': 'Do you have any immediate family members who have Fibromyalgia?',
    },
    '80vwmqeu': {
      'es': 'Si',
      'en': 'Yes',
    },
    'hnd2j57b': {
      'es': 'No',
      'en': 'No',
    },
    'mf4ly8tl': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '02pksu0g': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '4xn1a8gc': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    '9kacsnu2': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'p8gx0lk7': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    '7uctysdv': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'xw129lgm': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '7s1rj1q5': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'hcj0ve91': {
      'es': 'Escribe aquí tus otras enfermedades',
      'en': 'Write your other illnesses here',
    },
    'gj8rytxf': {
      'es': '',
      'en': '',
    },
    '9y35umyj': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    'cmmrbjz6': {
      'es': '¿En qué año te infectaste con el SARS-CoV-2?',
      'en': 'What year did you get infected with SARS-CoV-2?',
    },
    '3o9pi4wc': {
      'es': '2020',
      'en': '2020',
    },
    '193d1l7e': {
      'es': '2021',
      'en': '2021',
    },
    'kq4upjki': {
      'es': '2022',
      'en': '2022',
    },
    '39bm2ib0': {
      'es': '2023',
      'en': '2023',
    },
    'ww84b81r': {
      'es': '2024',
      'en': '2024',
    },
    'fdi7ifiq': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'pdrupx2w': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'xowbxgy9': {
      'es': '¿Cuántas veces te has contagiado con el SARS-CoV-2?',
      'en': 'How many times have you been infected with SARS-CoV-2?',
    },
    'lul5v863': {
      'es': '1',
      'en': '1',
    },
    'ej9piqcr': {
      'es': '2',
      'en': '2',
    },
    'dpai4u5r': {
      'es': '3',
      'en': '3',
    },
    '2kuljw2h': {
      'es': '4',
      'en': '4',
    },
    'z48hw6rk': {
      'es': '5',
      'en': '5',
    },
    '6u716abt': {
      'es': '6',
      'en': '6',
    },
    '3m7su06v': {
      'es': '7',
      'en': '7',
    },
    '93z4neop': {
      'es': '8',
      'en': '8',
    },
    'cgnslapr': {
      'es': '9',
      'en': '9',
    },
    't71y1no9': {
      'es': '10',
      'en': '10',
    },
    'p7vuq2t2': {
      'es': 'Más de una vez',
      'en': 'More than once',
    },
    'fxyb8879': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'wlhk2n3y': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'ifvs9y0f': {
      'es': '¿Tienes algún familiar directo que tenga COVID persistente?',
      'en':
          'Do you have any immediate family members who have long-term COVID?',
    },
    'm0fw9ejy': {
      'es': 'Si',
      'en': 'Yes',
    },
    '55h5sv7r': {
      'es': 'No',
      'en': 'No',
    },
    '582vgqt3': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'hw90fv6w': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'r8m65of8': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'omdj9q50': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    '6f17au3u': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'u0mdqnpm': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'b2k8b9td': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'rjwhvoyv': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '17mnb83g': {
      'es': '¿Tras qué evento desarrollaste Fibromialgia?',
      'en': 'After what event did you develop Fibromyalgia?',
    },
    '5l7u0yn5': {
      'es': 'No lo sé',
      'en': 'Viral infection or cold',
    },
    'p8v6de7o': {
      'es': 'Infección viral o resfriado',
      'en': 'After surgery',
    },
    'qp7xm509': {
      'es': 'Tras una cirugía',
      'en': 'After an accident',
    },
    'acykk0hd': {
      'es': 'Tras un accidente',
      'en': 'After hospital stay',
    },
    'ams05mtu': {
      'es': 'Tras estancia hospitalaria',
      'en': 'Stress',
    },
    'ci8rjvfh': {
      'es': 'Estrés',
      'en': 'Postpartum',
    },
    'qvlwyjyz': {
      'es': 'Postparto',
      'en': 'Don\'t know',
    },
    'o71w9hhf': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ina9cq7l': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'z2rug5q5': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'xferqqem': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '2u9w8kbp': {
      'es': 'de 1 a 3 años',
      'en': 'from 1 to 3 years',
    },
    'n171jfee': {
      'es': 'de 3 a 5 años',
      'en': '3 to 5 years',
    },
    'fj591oye': {
      'es': 'más de 5 años',
      'en': 'more than 5 years',
    },
    '45cuicge': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'mhmi4ocu': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '1lho47m8': {
      'es': '¿Empeoran tus síntomas tras un leve esfuerzo físico o mental?',
      'en': 'Do your symptoms worsen after mild physical or mental exertion?',
    },
    'xwdyi2ac': {
      'es': 'Si',
      'en': 'Yes',
    },
    'x2ubaad6': {
      'es': 'No',
      'en': 'No',
    },
    'xhot6gsq': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'r176ztcu': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '0kfwfk39': {
      'es': '¿Tienes algún familiar directo que tenga Fibromialgia?',
      'en': 'Do you have any immediate family members who have Fibromyalgia?',
    },
    'j6kha0n2': {
      'es': 'Si',
      'en': 'Yes',
    },
    '8m8ooh4y': {
      'es': 'No',
      'en': 'No',
    },
    '5hzr0d85': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '016abj4d': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'r03ltf9o': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'oktxbq3n': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'd3ax9cdl': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'gd1fyyaz': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'f16ylfom': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ik3ck37k': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'mnzc3k5z': {
      'es': '¿Con qué criterios te han diagnosticado?',
      'en': 'What criteria have you been diagnosed with?',
    },
    '0ibbihrt': {
      'es': 'No lo sé pero tengo el diagnóstico',
      'en': 'Canadian Consensus Criteria (CCC)',
    },
    'sjuw958c': {
      'es': 'Criterios de consenso canadienses (CCC)',
      'en': 'Fukuda criteria',
    },
    '5gzigcie': {
      'es': 'Criterios de Fukuda',
      'en': 'International Consensus Criteria (ICC)',
    },
    'ayjd65lb': {
      'es': 'Criterios de consenso internacional (ICC)',
      'en': 'Systemic exertion intolerance disease (SEID) criteria',
    },
    'hvsj6k76': {
      'es':
          'Criterios de enfermedad de intolerancia al esfuerzo sistémico (SEID)',
      'en': 'I don\'t know but I have the diagnosis',
    },
    '8zhc9fzy': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '8w0osg50': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'dqqj6l3c': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '4ful2zb5': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'wel9ogyg': {
      'es': 'de 1 a 3 años',
      'en': 'from 1 to 3 years',
    },
    'nfcpd6le': {
      'es': 'de 3 a 5 años',
      'en': '3 to 5 years',
    },
    '007r2vkk': {
      'es': 'más de 5 años',
      'en': 'more than 5 years',
    },
    'be8xw81u': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'xa2b66bt': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '7xee8y3i': {
      'es': '¿Tras qué evento desarrollaste EM/SFC?',
      'en': 'After what event did you develop ME/CFS?',
    },
    'tjfxqkmq': {
      'es': 'No lo sé',
      'en': 'Viral infection or cold',
    },
    'vx85vvbv': {
      'es': 'Infección viral o resfriado',
      'en': 'After surgery',
    },
    'm71gn9y2': {
      'es': 'Tras una cirugía',
      'en': 'After an accident',
    },
    '0pxt7wrx': {
      'es': 'Tras un accidente',
      'en': 'Stress',
    },
    '2scd5trt': {
      'es': 'Estrés',
      'en': 'Postpartum',
    },
    '6qf7iz66': {
      'es': 'Postparto',
      'en': 'Medication',
    },
    'yn2me8vk': {
      'es': 'Medicación',
      'en': 'Don\'t know',
    },
    'o08e0a91': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '1ldycwwt': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '0u5wrpt2': {
      'es': '¿Tienes algún familiar directo que tenga EM/SFC?',
      'en': 'Do you have any immediate family members who have ME/CFS?',
    },
    'st8pmkcc': {
      'es': 'Si',
      'en': 'Yes',
    },
    'ark3gzi4': {
      'es': 'No',
      'en': 'No',
    },
    '9esrkqn1': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'vz5q3i3l': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'sdgthtog': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'bum7tgc2': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'zjz8pttj': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    '9i0f3dtx': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    '8d4nbfc7': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '5de1znrf': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'rlnpxn25': {
      'es': 'Escribe aquí tus otras enfermedades',
      'en': 'Write your other illnesses here',
    },
    '878rmgqg': {
      'es': '',
      'en': '',
    },
    '3ga0q5gp': {
      'es': 'Continuar',
      'en': 'Continue',
    },
    'byr8d2tq': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    '2scytok9': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // Home_empresa
  {
    'bj709olx': {
      'es': '¿Cómo te encuentras hoy?',
      'en': 'How are you feeling today?',
    },
    '0dyqwa8p': {
      'es': 'Encuestas',
      'en': 'Surveys',
    },
    'y16nx01w': {
      'es': 'Revisa y crea tus encuestas',
      'en': 'Review and create your surveys',
    },
    'nrbhee4s': {
      'es': 'Comunidad',
      'en': 'Community',
    },
    'gj02g8y9': {
      'es': 'Comparte contenido con los usuarios',
      'en': 'Share content with users',
    },
    'dnxcnl1i': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // empresa_pdte_validacion
  {
    'yzulmned': {
      'es': '50%',
      'en': '50%',
    },
    'db58padd': {
      'es':
          'Tu cuenta se ha creado correctamente, una vez Defenergy valide tu registro podrás acceder a la aplicación.',
      'en':
          'Your account has been created successfully, once Defenergy validates your registration you will be able to access the application.',
    },
    'krmx2alh': {
      'es': 'Te avisaremos por email en cuanto esté todo listo. ',
      'en': 'We will notify you by email as soon as everything is ready.',
    },
    '6iktiq6o': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    'h0tsoqu7': {
      'es': 'Me he equivocado de tipo de usuario',
      'en': 'I have chosen the wrong user type',
    },
    'nyhtu610': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // welcome
  {
    'dko31scq': {
      'es': '¡Bienvenid@ a Defenergy!',
      'en': 'Welcome to Defenergy!',
    },
    'w5svigaq': {
      'es':
          'Únete a nuestra comunidad y mejora tu bienestar con nuestras innovadoras herramientas.',
      'en':
          'Join our community and improve your wellbeing with our innovative tools.',
    },
    'zgocsc1g': {
      'es': 'Saltar introducción',
      'en': 'Skip intro',
    },
    'c7etwtyb': {
      'es': 'Algunas de nuestras funcionalidades:',
      'en': 'Some of our features:',
    },
    'ozmycynd': {
      'es': 'Diario Digital de Síntomas, de Intolerancias y de Sueño',
      'en': 'Digital Journal of Symptoms, Intolerances and Sleep',
    },
    'dj6jwe5l': {
      'es': 'Registra y monitorea tu salud diaria para un seguimiento preciso.',
      'en': 'Record and monitor your daily health for accurate tracking.',
    },
    '7kkvmvzu': {
      'es': ' Análisis de Datos con Inteliencia Artificial',
      'en': 'Data Analysis with Artificial Intelligence',
    },
    '2tan5m1e': {
      'es':
          'Obtén recomendaciones personalizadas y predicciones sobre tu evolución.',
      'en':
          'Get personalized recommendations and predictions about your progress.',
    },
    'zr1vx2wk': {
      'es': 'Apoyo a las Enfermedades Crónicas',
      'en': 'Support for Chronic Diseases',
    },
    'm48wfmii': {
      'es': 'Encuentra información y recursos específicos para tu enfermedad.',
      'en': 'Find information and resources specific to your condition.',
    },
    'qnmi6r8v': {
      'es': 'Saltar introducción',
      'en': 'Skip intro',
    },
    '8qebk455': {
      'es': 'Algunas de nuestras funcionalidades:',
      'en': 'Some of our features:',
    },
    'pbbjt0cu': {
      'es': 'Accede a las últimas Noticias sobre tu enfermedad',
      'en': 'Get the latest news about your disease',
    },
    '3i69nccy': {
      'es': 'Mantente informado con las últimas novedades sobre tu enfermedad',
      'en': 'Stay informed with the latest news about your disease',
    },
    'g4pogr5c': {
      'es': 'Acceso a la mejor oferta de Suplementos Específicos',
      'en': 'Access to the best offer of Specific Supplements',
    },
    'k5ok27xf': {
      'es':
          'Recomendados por otros pacientes y profesionales sanitarios para tu enfermedad.',
      'en':
          'Recommended by other patients and healthcare professionals for your condition.',
    },
    'hayiedex': {
      'es': 'Acceso 100% Gratuito y para siempre',
      'en': '100% Free Access and Forever',
    },
    'jc8fvap7': {
      'es': 'Disfruta de todos nuestros servicios sin costo.',
      'en': 'Enjoy all our services free of charge.',
    },
    '2epqdwxs': {
      'es': 'Saltar introducción',
      'en': 'Skip intro',
    },
    'sd9vkrbn': {
      'es':
          'Cada vez que usas la app, ayudas a avanzar continuamente en la investigación de tu enfermedad.',
      'en':
          'Every time you use the app, you help to continually advance research into your disease.',
    },
    'rc1wsm1b': {
      'es': 'Empecemos!',
      'en': 'Let\'s get started!',
    },
    '8vxjcuy1': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // login
  {
    'u4e2wups': {
      'es': 'Bienvenid@!',
      'en': 'Welcome!',
    },
    'v3ft7hi6': {
      'es': 'Introduce tus credenciales para acceder a tu cuenta',
      'en': 'Enter your credentials to access your account',
    },
    'qhmen7xl': {
      'es': 'Email',
      'en': 'E-mail',
    },
    'emzpcxup': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    'syx5rcwt': {
      'es': 'Entrar',
      'en': 'Enter',
    },
    'su470gta': {
      'es': 'He olvidado mi contraseña',
      'en': 'I forgot my password',
    },
    '8dd3rmos': {
      'es': '¿Aún no tienes cuenta?  ',
      'en': 'Don\'t have an account yet?',
    },
    'hlqv1kan': {
      'es': 'Entra aquí',
      'en': 'Enter here',
    },
    'wcvz2adp': {
      'es': '¿Aún no tienes cuenta?  ',
      'en': 'Don\'t have an account yet?',
    },
    'oz0nmk2s': {
      'es': 'Entra aquí',
      'en': 'Enter here',
    },
    'cedogmri': {
      'es': 'Defenergy - 2024 Todos los derechos reservados',
      'en': 'Defenergy - 2024 All rights reserved',
    },
    'xuolye9w': {
      'es':
          'Ploints Loyalty Solutions S.L. - 2024 Todos los derechos reservados',
      'en': 'Ploints Loyalty Solutions S.L. - 2024 All rights reserved',
    },
    '6ppuhvd2': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // recordar_pass
  {
    'qyoi6i1n': {
      'es': 'Recuperar Contraseña',
      'en': 'Recover password',
    },
    'mtvr1eio': {
      'es':
          'No te preocupes, introduce tu email y te enviaremos un correo electrónico con las instrucciones para generar una nueva.',
      'en':
          'Don\'t worry, enter your email and we will send you an email with instructions on how to generate a new one.',
    },
    'i06o6904': {
      'es': 'Email',
      'en': 'E-mail',
    },
    'h819tn62': {
      'es': 'Solicitar',
      'en': 'Request',
    },
    'oodm3ji2': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    'chkdqdmq': {
      'es': 'Defenergy - 2024 Todos los derechos reservados',
      'en': 'Defenergy - 2024 All rights reserved',
    },
    '0cht1yxd': {
      'es':
          'Ploints Loyalty Solutions S.L. - 2024 Todos los derechos reservados',
      'en': 'Ploints Loyalty Solutions S.L. - 2024 All rights reserved',
    },
    'jqu3ivsu': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // diario1
  {
    'y3fcv165': {
      'es': 'Diario de Síntomas',
      'en': 'Symptom Diary',
    },
    '1mqozxa7': {
      'es': '15%',
      'en': '15%',
    },
    'no8oilvp': {
      'es': '¿Cuál ha sido tu nivel de enería hoy?',
      'en': 'What has been your energy level today?',
    },
    's58sz8kd': {
      'es': '¿En que momento del día tuviste ',
      'en': 'At what time of day did you have',
    },
    '5v2tctar': {
      'es': ' menos energía?',
      'en': ' less energy?',
    },
    'm181k934': {
      'es': 'Mañana',
      'en': 'Tomorrow',
    },
    '84tx7wzn': {
      'es': 'Tarde',
      'en': 'Late',
    },
    '1zyyle56': {
      'es': 'Noche',
      'en': 'Evening',
    },
    '1y87wpcj': {
      'es': '¿En qué medida ha afectado la fatiga a tus tareas diarias? ',
      'en': 'To what extent has fatigue affected your daily tasks?',
    },
    'gqkyaps6': {
      'es': '0',
      'en': '0',
    },
    'gfps1bfz': {
      'es': '1',
      'en': '1',
    },
    'k4dlu8hy': {
      'es': '2',
      'en': '2',
    },
    '3q7m4zqg': {
      'es': '3',
      'en': '3',
    },
    'rilg5dgy': {
      'es': '4',
      'en': '4',
    },
    '8mmn5xij': {
      'es': '5',
      'en': '5',
    },
    'dxoortju': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'lc44veic': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'siv7emoz': {
      'es': 'Continuar',
      'en': 'Continue',
    },
    'j6r433rv': {
      'es': 'Finalizar más tarde',
      'en': 'End later',
    },
    'h9nglgw2': {
      'es': 'Guardar',
      'en': 'Save',
    },
    'xnpzm3s9': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // menu_diario
  {
    '3i4i9mgm': {
      'es': 'Selecciona una opción',
      'en': 'Select an option',
    },
    'o6x1qx7s': {
      'es':
          'Las opciones solo estarán disponibles si puedes hacer uso de ellas.',
      'en': 'Options will only be available if you can use them.',
    },
    'mm2i90zh': {
      'es': 'Crear el diario de hoy',
      'en': 'Create today\'s diary',
    },
    '0m10o1re': {
      'es': 'Replicar el último diario',
      'en': 'Replicate the latest diary',
    },
    'fy8r68df': {
      'es': 'Editar el último diario',
      'en': 'Edit the last diary',
    },
    'qq5aoojz': {
      'es': 'Finalizar el último diario',
      'en': 'Finish the last diary',
    },
    'gjihg8om': {
      'es': 'Diario de Síntomas',
      'en': 'Symptom Diary',
    },
    'q0i6gffx': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // diario2
  {
    'eye7oetk': {
      'es': 'Diario de Síntomas',
      'en': 'Symptom Diary',
    },
    '19zi7tmw': {
      'es': '30%',
      'en': '30%',
    },
    'yh4dipol': {
      'es': 'Indica si hoy has tenido ',
      'en': 'Indicate if you have had today',
    },
    't0jekzrv': {
      'es': 'Dolores',
      'en': 'Pain',
    },
    'gje8gbhb': {
      'es': 'Migraña',
      'en': 'Migraine',
    },
    '1yxr7lh4': {
      'es': 'Sin \ndolor',
      'en': 'Without pain',
    },
    'h0rt2kqt': {
      'es': 'Mucho \ndolor',
      'en': 'Much pain',
    },
    'utbe6lbw': {
      'es': 'Sin \ndolor',
      'en': 'Without pain',
    },
    'ydjwacuf': {
      'es': 'Mucho \ndolor',
      'en': 'Much pain',
    },
    'm7efkj2d': {
      'es': '¿En qué medida ha afectado el dolor en tus tareas diarias? ',
      'en': 'To what extent has pain affected your daily tasks?',
    },
    'ct69h74l': {
      'es': '0',
      'en': '0',
    },
    '6u5zom9b': {
      'es': '1',
      'en': '1',
    },
    '0sgeeaoa': {
      'es': '2',
      'en': '2',
    },
    'ekys6gtb': {
      'es': '3',
      'en': '3',
    },
    'sijwpmce': {
      'es': '4',
      'en': '4',
    },
    '2xv5chsu': {
      'es': '5',
      'en': '5',
    },
    '9lsjiich': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'pa30dpv9': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'p52zo4di': {
      'es': 'Continuar',
      'en': 'Continue',
    },
    '6spkofpt': {
      'es': 'Finalizar más tarde',
      'en': 'End later',
    },
    'wdsetc19': {
      'es': 'Guardar',
      'en': 'Save',
    },
    'xde45m39': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // diario4
  {
    'zkqsl9j5': {
      'es': 'Diario de Síntomas',
      'en': 'Symptom Diary',
    },
    '2bxylyci': {
      'es': '60%',
      'en': '60%',
    },
    '79sljha7': {
      'es': '¿Qué actividades has podido hacer hoy?',
      'en': 'What activities have you been able to do today?',
    },
    '5ovf98ks': {
      'es': 'Trabajo',
      'en': 'Job',
    },
    'l9tz7clv': {
      'es': 'Estudios',
      'en': 'Studies',
    },
    'ak1y2xw1': {
      'es': 'Tiempo en\nfamilia',
      'en': 'Family time',
    },
    '12gvsql7': {
      'es': 'Tareas del\nHogar',
      'en': 'Household\nTasks',
    },
    '2c0jkwki': {
      'es': 'Socializar',
      'en': 'Socialize',
    },
    'seckctd0': {
      'es': 'Ejercicio\nFísico',
      'en': 'Physical exercise',
    },
    'mpinzuo8': {
      'es': 'Caminar',
      'en': 'Walk',
    },
    'wrwrfz1n': {
      'es': 'Leer',
      'en': 'Read',
    },
    'wm2s0kc4': {
      'es': 'Hábitos de \nHigiene Pers.',
      'en': 'Personal Hygiene Habits',
    },
    'szikwiu8': {
      'es': 'Otros',
      'en': 'Others',
    },
    'cubr0ze1': {
      'es': 'Ninguna',
      'en': 'None',
    },
    '3p65jwe9': {
      'es': 'Continuar',
      'en': 'Continue',
    },
    'fraphe6a': {
      'es': 'Finalizar más tarde',
      'en': 'End later',
    },
    'jtp7lqny': {
      'es': 'Guardar',
      'en': 'Save',
    },
    'knt5yxct': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // diario3
  {
    'fr8voisn': {
      'es': 'Diario de Síntomas',
      'en': 'Symptom Diary',
    },
    '66drwakq': {
      'es': '45%',
      'en': '45%',
    },
    'tf1rlpr1': {
      'es': '¿Dónde te duele?',
      'en': 'Where does it hurt?',
    },
    'emk0j50h': {
      'es': 'Frente',
      'en': 'Forehead',
    },
    '0rbyxyph': {
      'es': 'Espalda',
      'en': 'Back',
    },
    '2ngkktn1': {
      'es': 'El dolor no está en esta imagen',
      'en': 'The pain is not in this picture',
    },
    '9ty477bd': {
      'es': 'Continuar',
      'en': 'Continue',
    },
    'la52hzk8': {
      'es': 'Finalizar más tarde',
      'en': 'End later',
    },
    'ykuv4s8q': {
      'es': 'Guardar',
      'en': 'Save',
    },
    '2tamxn6b': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // diario5
  {
    'feuh0v9p': {
      'es': 'Diario de Síntomas',
      'en': 'Symptom Diary',
    },
    'ikyj5mpa': {
      'es': '75%',
      'en': '75%',
    },
    'm79cvg2y': {
      'es': '¿Qué otros síntomas has experimentado?',
      'en': 'What other symptoms have you experienced?',
    },
    '0l6fm95n': {
      'es': 'Insomnio',
      'en': 'Insomnia',
    },
    'mlldb4nu': {
      'es': '0',
      'en': '0',
    },
    'itofok9u': {
      'es': '1',
      'en': '1',
    },
    '5y4t4wo0': {
      'es': '2',
      'en': '2',
    },
    '35xximzu': {
      'es': '3',
      'en': '3',
    },
    'xfkwk776': {
      'es': '4',
      'en': '4',
    },
    '9akgue2u': {
      'es': '5',
      'en': '5',
    },
    'fxpk2ox8': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'nwtgc2cn': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'ubhs7yvm': {
      'es': 'Náuseas',
      'en': 'Nausea',
    },
    'odouhcr2': {
      'es': '0',
      'en': '0',
    },
    'k68xf97s': {
      'es': '1',
      'en': '1',
    },
    'a94xlu49': {
      'es': '2',
      'en': '2',
    },
    '116dnvu0': {
      'es': '3',
      'en': '3',
    },
    'lqrqku5r': {
      'es': '4',
      'en': '4',
    },
    'mbwqkxgz': {
      'es': '5',
      'en': '5',
    },
    'bue1oixg': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'ck927ztr': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    '2ewbjjyc': {
      'es': 'Vómitos',
      'en': 'Vomiting',
    },
    '2z5ug6vz': {
      'es': '0',
      'en': '0',
    },
    'bmq04l6q': {
      'es': '1',
      'en': '1',
    },
    'ofa29dci': {
      'es': '2',
      'en': '2',
    },
    '2fhucd2z': {
      'es': '3',
      'en': '3',
    },
    'fup3h54b': {
      'es': '4',
      'en': '4',
    },
    'nfkp345k': {
      'es': '5',
      'en': '5',
    },
    '379eqc71': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    '678ca6ef': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'fdh4cnam': {
      'es': 'Diarrea',
      'en': 'Diarrhea',
    },
    'pbxgb8vb': {
      'es': '0',
      'en': '0',
    },
    '2p7w3y3h': {
      'es': '1',
      'en': '1',
    },
    'ka5hmiis': {
      'es': '2',
      'en': '2',
    },
    'vnv8xqzj': {
      'es': '3',
      'en': '3',
    },
    'q2aemuxo': {
      'es': '4',
      'en': '4',
    },
    '3jggdxru': {
      'es': '5',
      'en': '5',
    },
    'dolk4760': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    '4mcqn6w7': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    '14wda0h0': {
      'es': 'Sensación de fiebre ',
      'en': 'Feeling of fever',
    },
    'anjdsbci': {
      'es': '0',
      'en': '0',
    },
    'capktooa': {
      'es': '1',
      'en': '1',
    },
    'jxkgd7kc': {
      'es': '2',
      'en': '2',
    },
    'pp71vks7': {
      'es': '3',
      'en': '3',
    },
    '8wp3g03u': {
      'es': '4',
      'en': '4',
    },
    'cgot7ab8': {
      'es': '5',
      'en': '5',
    },
    'b176hg5s': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'llukwl3p': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'ss30hroi': {
      'es': 'Frío',
      'en': 'Cold',
    },
    '0ryeyztm': {
      'es': '0',
      'en': '0',
    },
    'pcnuhd0i': {
      'es': '1',
      'en': '1',
    },
    'bgrujd11': {
      'es': '2',
      'en': '2',
    },
    'e5lk00ty': {
      'es': '3',
      'en': '3',
    },
    '6fg55h7s': {
      'es': '4',
      'en': '4',
    },
    '5p9ric3g': {
      'es': '5',
      'en': '5',
    },
    '0waak078': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'ip58w6q5': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    '844maa4i': {
      'es': 'Tos',
      'en': 'Cough',
    },
    '55h42yt4': {
      'es': '0',
      'en': '0',
    },
    'v0kt8ezz': {
      'es': '1',
      'en': '1',
    },
    '1z089vn3': {
      'es': '2',
      'en': '2',
    },
    '76lwh4po': {
      'es': '3',
      'en': '3',
    },
    'mox2eon2': {
      'es': '4',
      'en': '4',
    },
    'g4q6uklm': {
      'es': '5',
      'en': '5',
    },
    'ausuhxa2': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'plip4aao': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'gd1d80l2': {
      'es': 'Dificultad para respirar',
      'en': 'Difficulty breathing',
    },
    'xcdbir61': {
      'es': '0',
      'en': '0',
    },
    'd1sbgb2j': {
      'es': '1',
      'en': '1',
    },
    '2a3e82g0': {
      'es': '2',
      'en': '2',
    },
    'prwzpwup': {
      'es': '3',
      'en': '3',
    },
    'eg1w0ct6': {
      'es': '4',
      'en': '4',
    },
    '25dyhkuk': {
      'es': '5',
      'en': '5',
    },
    '6joouyo9': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'c92b3q7l': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'acatj88t': {
      'es': 'Sensibilidad a la luz',
      'en': 'Sensitivity to light',
    },
    'yu9qwxj3': {
      'es': '0',
      'en': '0',
    },
    '4zfsmchr': {
      'es': '1',
      'en': '1',
    },
    'gebezi6m': {
      'es': '2',
      'en': '2',
    },
    'fy0ssv71': {
      'es': '3',
      'en': '3',
    },
    'dgc4gjel': {
      'es': '4',
      'en': '4',
    },
    'bk7cedrf': {
      'es': '5',
      'en': '5',
    },
    '9xo62er0': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'j14yxwgi': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'a31b9tyf': {
      'es': 'Sensibilidad al ruido',
      'en': 'Noise sensitivity',
    },
    'ihn4w5bq': {
      'es': '0',
      'en': '0',
    },
    '6qht1hmy': {
      'es': '1',
      'en': '1',
    },
    '85tcko3f': {
      'es': '2',
      'en': '2',
    },
    'ewraxp3s': {
      'es': '3',
      'en': '3',
    },
    'jvxq4h65': {
      'es': '4',
      'en': '4',
    },
    '78g590yy': {
      'es': '5',
      'en': '5',
    },
    '12j9zk8f': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    '41r6auz4': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    '7j8a8hkq': {
      'es': 'Sensibilidad a los olores',
      'en': 'Sensitivity to odors',
    },
    'aobnkrvc': {
      'es': '0',
      'en': '0',
    },
    'a296n2u4': {
      'es': '1',
      'en': '1',
    },
    '6oha6nzi': {
      'es': '2',
      'en': '2',
    },
    '680mtjo0': {
      'es': '3',
      'en': '3',
    },
    'gy8somvw': {
      'es': '4',
      'en': '4',
    },
    'ecssaap3': {
      'es': '5',
      'en': '5',
    },
    '30bd17nl': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    '49t4pmcg': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'np6epx98': {
      'es': 'Disfunción cognitiva',
      'en': 'Cognitive dysfunction',
    },
    '6a5zpjwa': {
      'es': '0',
      'en': '0',
    },
    'e13d7ucn': {
      'es': '1',
      'en': '1',
    },
    'vj84j607': {
      'es': '2',
      'en': '2',
    },
    '5hczjduo': {
      'es': '3',
      'en': '3',
    },
    '5uhf0wag': {
      'es': '4',
      'en': '4',
    },
    'kaq7g3q5': {
      'es': '5',
      'en': '5',
    },
    'z4fjjwdr': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'dez2ehxa': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    '5qcbq0da': {
      'es': 'Niebla mental',
      'en': 'Brain fog',
    },
    'ukamdnrg': {
      'es': '0',
      'en': '0',
    },
    'sxtoab0n': {
      'es': '1',
      'en': '1',
    },
    '2esl69y5': {
      'es': '2',
      'en': '2',
    },
    'urjoz2m2': {
      'es': '3',
      'en': '3',
    },
    'nf78306x': {
      'es': '4',
      'en': '4',
    },
    'cz7mlsgt': {
      'es': '5',
      'en': '5',
    },
    'zc75azft': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'yi19d5m5': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'cqax5k5n': {
      'es': 'Visión borrosa',
      'en': 'Blurry vision',
    },
    'nj0gfoje': {
      'es': '0',
      'en': '0',
    },
    'vytklrf3': {
      'es': '1',
      'en': '1',
    },
    'musb55a1': {
      'es': '2',
      'en': '2',
    },
    'mrcy5mru': {
      'es': '3',
      'en': '3',
    },
    'dr7u9y4w': {
      'es': '4',
      'en': '4',
    },
    'attmdmws': {
      'es': '5',
      'en': '5',
    },
    'f2640p49': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'nu5e27kw': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'k9vb5iew': {
      'es': 'Debilidad muscular',
      'en': 'Muscular weakness',
    },
    '1f93yckm': {
      'es': '0',
      'en': '0',
    },
    '7udb7hdq': {
      'es': '1',
      'en': '1',
    },
    '3oekys93': {
      'es': '2',
      'en': '2',
    },
    'i5aw52c0': {
      'es': '3',
      'en': '3',
    },
    'cd44y9dp': {
      'es': '4',
      'en': '4',
    },
    '37yo95uj': {
      'es': '5',
      'en': '5',
    },
    'sp66f3tr': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'kimsd65b': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'ihb2whxt': {
      'es': 'Espasmos musculares',
      'en': 'Muscle spasms',
    },
    'd355lj15': {
      'es': '0',
      'en': '0',
    },
    '3q71scqg': {
      'es': '1',
      'en': '1',
    },
    'gdtz01ku': {
      'es': '2',
      'en': '2',
    },
    'nt04ajrk': {
      'es': '3',
      'en': '3',
    },
    's9kp9uxz': {
      'es': '4',
      'en': '4',
    },
    '0t7gzs2g': {
      'es': '5',
      'en': '5',
    },
    'ykjmcnil': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'd54vqkk0': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    '7ht9eghu': {
      'es': 'Intolerancia ortostática',
      'en': 'Orthostatic intolerance',
    },
    'cd44aqf4': {
      'es': '0',
      'en': '0',
    },
    'cxpu3mi4': {
      'es': '1',
      'en': '1',
    },
    '1qt81y9e': {
      'es': '2',
      'en': '2',
    },
    '0zcxc6zt': {
      'es': '3',
      'en': '3',
    },
    'sefaqwo2': {
      'es': '4',
      'en': '4',
    },
    '7t439qu4': {
      'es': '5',
      'en': '5',
    },
    '80lnt9nn': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    '1vdou57o': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    '4z6v3nr8': {
      'es': 'Malestar post-esfuerzo',
      'en': 'Post-exertion discomfort',
    },
    '4x4pslub': {
      'es': '0',
      'en': '0',
    },
    '0nq6quef': {
      'es': '1',
      'en': '1',
    },
    'p3ye9c11': {
      'es': '2',
      'en': '2',
    },
    'ejcl1blf': {
      'es': '3',
      'en': '3',
    },
    'nf4wwsqb': {
      'es': '4',
      'en': '4',
    },
    'bwh1j4hd': {
      'es': '5',
      'en': '5',
    },
    'e16wyjqu': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'cnespho1': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'msxvpsjk': {
      'es': 'Palpitaciones',
      'en': 'Palpitations',
    },
    'h12litdw': {
      'es': '0',
      'en': '0',
    },
    '04wmqfk8': {
      'es': '1',
      'en': '1',
    },
    '3clr5sra': {
      'es': '2',
      'en': '2',
    },
    'idqbm6to': {
      'es': '3',
      'en': '3',
    },
    'luchdtro': {
      'es': '4',
      'en': '4',
    },
    '6y5y0rze': {
      'es': '5',
      'en': '5',
    },
    'ha344lt7': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'idfeo1ov': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    '9bgplt7w': {
      'es': 'Pérdida del olfato',
      'en': 'Loss of smell',
    },
    '69ejayvq': {
      'es': '0',
      'en': '0',
    },
    '1v5l8d4n': {
      'es': '1',
      'en': '1',
    },
    'p032iijs': {
      'es': '2',
      'en': '2',
    },
    '3w30cfcs': {
      'es': '3',
      'en': '3',
    },
    '3t8s5dh2': {
      'es': '4',
      'en': '4',
    },
    'njnj7zn9': {
      'es': '5',
      'en': '5',
    },
    '8apf38bd': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'qeui9621': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    '3ji3762e': {
      'es': 'Pérdida del gusto',
      'en': 'Loss of taste',
    },
    'iawg33d5': {
      'es': '0',
      'en': '0',
    },
    'qckrnpaa': {
      'es': '1',
      'en': '1',
    },
    'gnzbglfg': {
      'es': '2',
      'en': '2',
    },
    'zphwlaac': {
      'es': '3',
      'en': '3',
    },
    '9dbkacp4': {
      'es': '4',
      'en': '4',
    },
    'y3wabj5p': {
      'es': '5',
      'en': '5',
    },
    'u0nkmmpn': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'zf3nc3x4': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    '4foqhl5a': {
      'es': 'Tristeza',
      'en': 'Sadness',
    },
    '4f3s7lfv': {
      'es': '0',
      'en': '0',
    },
    'mkdz3u0v': {
      'es': '1',
      'en': '1',
    },
    'ivm0fzc4': {
      'es': '2',
      'en': '2',
    },
    '9foxzoei': {
      'es': '3',
      'en': '3',
    },
    '8ehm90k5': {
      'es': '4',
      'en': '4',
    },
    '31uq8foy': {
      'es': '5',
      'en': '5',
    },
    '4knuvo7d': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'vid8szx0': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'pttc9ys2': {
      'es': 'Ansiedad',
      'en': 'Anxiety',
    },
    'ipsk1esq': {
      'es': '0',
      'en': '0',
    },
    'zkm7r1a2': {
      'es': '1',
      'en': '1',
    },
    'otw3uv80': {
      'es': '2',
      'en': '2',
    },
    'i57x2uup': {
      'es': '3',
      'en': '3',
    },
    'sot5b12m': {
      'es': '4',
      'en': '4',
    },
    'cr7b209r': {
      'es': '5',
      'en': '5',
    },
    'ugugjr5u': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'lel2lgnr': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'vwuwd7vg': {
      'es': 'Dolor de cabeza',
      'en': 'Headache',
    },
    'd8bixv4x': {
      'es': '0',
      'en': '0',
    },
    'ouul7lk5': {
      'es': '1',
      'en': '1',
    },
    'm92dipqt': {
      'es': '2',
      'en': '2',
    },
    'a668v0gr': {
      'es': '3',
      'en': '3',
    },
    'bbditgye': {
      'es': '4',
      'en': '4',
    },
    'jrslqep6': {
      'es': '5',
      'en': '5',
    },
    '2lokvaoa': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'een1qdwj': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'bf3blajy': {
      'es': 'Dolor articular',
      'en': 'Joint pain',
    },
    'qju4r7ih': {
      'es': '0',
      'en': '0',
    },
    'vtduyo4f': {
      'es': '1',
      'en': '1',
    },
    'gqfqocmc': {
      'es': '2',
      'en': '2',
    },
    '3v6949lx': {
      'es': '3',
      'en': '3',
    },
    '8rxmiteu': {
      'es': '4',
      'en': '4',
    },
    'xaqs2czr': {
      'es': '5',
      'en': '5',
    },
    '0cukntkd': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    '3lpqg876': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    '78gvl9d8': {
      'es': 'Continuar',
      'en': 'Continue',
    },
    'r9yjf6cj': {
      'es': 'Finalizar más tarde',
      'en': 'End later',
    },
    'olr6mcz5': {
      'es': 'Guardar',
      'en': 'Save',
    },
    '0mfh89jd': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // diario6
  {
    '2xk0afml': {
      'es': 'Diario de Síntomas',
      'en': 'Symptom Diary',
    },
    'gbikkr5a': {
      'es': '90%',
      'en': '90%',
    },
    '8r9mynpc': {
      'es': '¿Cuál crees que fue el desencadenante?',
      'en': 'What do you think was the trigger?',
    },
    '2dt1li0h': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'lw7hmr65': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'xcib687s': {
      'es': '¿Qué solución crees que te ha ayudado?',
      'en': 'What solution do you think has helped you?',
    },
    'gqmahh1w': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'svvwf7sk': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'wcrc1vlq': {
      'es': 'Indica si hoy has tomado:',
      'en': 'Please indicate if you have taken today:',
    },
    'dkieffmg': {
      'es': 'Medicamentos\npara el Dolor',
      'en': 'Pain Medications',
    },
    'wmqrsrjd': {
      'es': 'Otros\nMedicamentos',
      'en': 'Others\nMedicines',
    },
    '3ud5ufia': {
      'es': 'Suplementos',
      'en': 'Supplements',
    },
    '3jwtdya8': {
      'es': 'Continuar',
      'en': 'Continue',
    },
    'gd5vpe2a': {
      'es': 'Finalizar más tarde',
      'en': 'End later',
    },
    'nswpuh9p': {
      'es': 'Guardar',
      'en': 'Save',
    },
    'lof6wf6h': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // diario7
  {
    'gnatw2sr': {
      'es': 'Diario de Síntomas',
      'en': 'Symptom Diary',
    },
    'loeurq11': {
      'es': '93%',
      'en': '93%',
    },
    '96ipjy9j': {
      'es': '¿Que medicamento has tomado para el dolor?',
      'en': 'What medicine have you taken for pain?',
    },
    'pjvqhbrc': {
      'es': 'Recuerda poner el nombre en español',
      'en': 'Remember to put the name in Spanish',
    },
    'u49x9h9l': {
      'es': '¿Este medicamento alivió tus síntomas?',
      'en': 'Did this medicine relieve your symptoms?',
    },
    '955guct6': {
      'es': '',
      'en': '',
    },
    '5lcfr7ky': {
      'es': 'nombre del medicamento',
      'en': 'name of the medicine',
    },
    'dbkfs1rn': {
      'es': 'Recuerda utilizar las tíldes en los nombres que las usen',
      'en': 'Remember to use accents in names that use them.',
    },
    'jwfdco79': {
      'es': 'O usar el del último diario realizado:',
      'en': 'Or use the one from the last diary made:',
    },
    '71xalx9c': {
      'es': 'Si alivió mis\nsíntomas',
      'en': 'Yes it relieved my\nsymptoms',
    },
    'ilw2e1j9': {
      'es': 'No alivió mis\nsíntomas',
      'en': 'It did not relieve my\nsymptoms',
    },
    'p8mxoq4d': {
      'es': 'Por favor indica los síntomas que han mejorado:',
      'en': 'Please indicate the symptoms that have improved:',
    },
    '7xdpvr3o': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'e4gwd7fj': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'fzlikk1s': {
      'es': 'Option 1',
      'en': 'Option 1',
    },
    '9aahy66s': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '97nn4st5': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '9coehomg': {
      'es': 'Option 1',
      'en': 'Option 1',
    },
    '5pymbygx': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '47afbshm': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'fdt33sxu': {
      'es': 'Option 1',
      'en': 'Option 1',
    },
    '8bntfzt0': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'gsg97477': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    't4cmkdhj': {
      'es': 'Option 1',
      'en': 'Option 1',
    },
    '1f6hzuh3': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '7zahf2gj': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '4d8r3olj': {
      'es': 'Por favor indica los síntomas que han empeorado:',
      'en': 'Please indicate the symptoms that have worsened:',
    },
    'zxjfr3ku': {
      'es': 'Option 1',
      'en': 'Option 1',
    },
    'ij4evcym': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'z5f95j8t': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '6xcnfbxv': {
      'es': 'Option 1',
      'en': 'Option 1',
    },
    '0jk3yqig': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '3sxpi8q5': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '951rhugu': {
      'es': 'Option 1',
      'en': 'Option 1',
    },
    'lebhnlxx': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '91p9ocsb': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'deae9450': {
      'es': 'Option 1',
      'en': 'Option 1',
    },
    'etqp4xba': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'j30go8fb': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'dbcicu97': {
      'es': 'Option 1',
      'en': 'Option 1',
    },
    'vu9qh4fp': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'r3xdf6je': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'j7gui6qg': {
      'es': 'Notas',
      'en': 'Notes',
    },
    'qpp0ks95': {
      'es': 'Aquí puedes agregar notas sobre\nel medicamento',
      'en': 'Here you can add notes about\nthe medication',
    },
    'd44itjxk': {
      'es': '',
      'en': '',
    },
    's7lovtks': {
      'es': 'Continuar',
      'en': 'Continue',
    },
    '0qazp26p': {
      'es': 'Finalizar más tarde',
      'en': 'Finish later',
    },
    'i89h1ua5': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // diario8
  {
    'rlk3893q': {
      'es': 'Diario de Síntomas',
      'en': 'Symptom Diary',
    },
    'fc9pmw6a': {
      'es': '95%',
      'en': '95%',
    },
    'bujab0j0': {
      'es': '¿Que otro medicamento has tomado?',
      'en': 'What other medications have you taken?',
    },
    'cgaq3piu': {
      'es': 'Recuerda poner el nombre en español.',
      'en': 'Remember to put the name in Spanish.',
    },
    'okccl25e': {
      'es': '¿Este medicamento alivió tus síntomas?',
      'en': 'Did this medicine relieve your symptoms?',
    },
    'vxzzulx3': {
      'es': '',
      'en': '',
    },
    '5bck9dmr': {
      'es': 'nombre del medicamento',
      'en': 'name of the medicine',
    },
    'glsm8r9c': {
      'es': 'Recuerda utilizar las tíldes en los nombres que las usen',
      'en': 'Remember to use accents in names that use them.',
    },
    '4t4jpebj': {
      'es': 'O usar el del último diario realizado:',
      'en': 'Or use the one from the last diary made:',
    },
    '83shmgxa': {
      'es': 'Si alivió mis\nsíntomas',
      'en': 'Yes it relieved my\nsymptoms',
    },
    'wawgg3dc': {
      'es': 'No alivió mis\nsíntomas',
      'en': 'It did not relieve my\nsymptoms',
    },
    'r4gu6c63': {
      'es': 'Por favor indica los síntomas que han mejorado:',
      'en': 'Please indicate the symptoms that have improved:',
    },
    'cmfgdtha': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'upklpuzd': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'e0iufcr6': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '9yh04j2p': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'da1ltpzq': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '3aaghbwy': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'bss0wslw': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    's0fwvf4m': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'rbpz668p': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'yab8f346': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'ai1f2nhx': {
      'es': 'Por favor indica los síntomas que han empeorado:',
      'en': 'Please indicate the symptoms that have worsened:',
    },
    'rleuzcc0': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '7nkaqky2': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'yfpclfsw': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'djej2yfq': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'kcnu7lhs': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '94zzuk0p': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'sx6dw208': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '1gwac52s': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '60l4wgwo': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'eiqh7dfy': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'a63jcew0': {
      'es': 'Notas',
      'en': 'Notes',
    },
    '4wtbwl80': {
      'es': 'Aquí puedes agregar notas sobre \nel medicamento',
      'en': 'Here you can add notes about the medication',
    },
    'lvzdyqvs': {
      'es': 'Continuar',
      'en': 'Continue',
    },
    'kcxs535m': {
      'es': 'Finalizar más tarde',
      'en': 'Finish later',
    },
    '10jp1iaq': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // diario9
  {
    'idvr9h33': {
      'es': 'Diario de Síntomas',
      'en': 'Symptom Diary',
    },
    '03i2oiur': {
      'es': '97%',
      'en': '97%',
    },
    '87xvf9u4': {
      'es': '¿Que suplemento has tomado?',
      'en': 'What supplement have you taken?',
    },
    'un6snfpo': {
      'es': '¿Este suplemento alivió tus síntomas?',
      'en': 'Did this supplement relieve your symptoms?',
    },
    'a7v31ssu': {
      'es': '',
      'en': '',
    },
    '5m0awk6j': {
      'es': 'nombre del suplemento',
      'en': 'name of the supplement',
    },
    'b0cabrkh': {
      'es': 'Recuerda utilizar las tíldes en los nombres que las usen',
      'en': 'Remember to use accents in names that use them.',
    },
    'yr9exkff': {
      'es': 'O usar el del último diario realizado:',
      'en': 'Or use the one from the last diary made:',
    },
    '26wb8vcb': {
      'es': 'O usar el del último diario realizado:',
      'en': 'Or use the one from the last diary made:',
    },
    'tcb9lgch': {
      'es': 'O usar el del último diario realizado:',
      'en': 'Or use the one from the last diary made:',
    },
    'gdg7u00w': {
      'es': 'Si alivió mis\nsíntomas',
      'en': 'Yes it relieved my\nsymptoms',
    },
    '8ws65dgv': {
      'es': 'No alivió mis\nsíntomas',
      'en': 'It did not relieve my\nsymptoms',
    },
    'cvbrjzok': {
      'es': 'Por favor indica los síntomas que han mejorado:',
      'en': 'Please indicate the symptoms that have improved:',
    },
    'n7tsjgyb': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '27knntvj': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'd5kzh280': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'olt2eur2': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'bas7qlaj': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'h03k2ajc': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '2jcg539g': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'fj4l04f5': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'phdxeoyb': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'zafuwko9': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'r12eentc': {
      'es': 'Por favor indica los síntomas que han empeorado:',
      'en': 'Please indicate the symptoms that have worsened:',
    },
    'f8ovmvc8': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'vtg3yijm': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'whlwqtt7': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'n522c2c6': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'tzsilj9h': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'gzvujtfe': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'eayu8ndg': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'lrf0o9jy': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '721ex5e9': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'kffo2csp': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '8l5nb7p8': {
      'es': 'Notas',
      'en': 'Notes',
    },
    'urpqh27k': {
      'es': 'Aquí puedes agregar notas sobre\nel suplemento',
      'en': 'Here you can add notes about\nthe supplement',
    },
    '8btwvtnj': {
      'es': 'Agregar otro suplemento',
      'en': 'Add another supplement',
    },
    'h39tznfj': {
      'es': 'Continuar',
      'en': 'Continue',
    },
    'xlgv8edm': {
      'es': 'Finalizar más tarde',
      'en': 'Finish later',
    },
    '53fl8k3p': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // diarioFin
  {
    'xvg4soab': {
      'es': 'Diario de Síntomas',
      'en': 'Symptom Diary',
    },
    'qmqu3sky': {
      'es':
          '¡Gracias por tu contribución! Estamos un paso más cerca de encontrar soluciones para tu enfermedad.',
      'en':
          'Thank you for your contribution! We are one step closer to finding solutions for your disease.',
    },
    'lw4xfulm': {
      'es':
          '\n Es tu posición en el ranking de personas  que están ayudando a la investigación.\n¡Sigue así!',
      'en':
          'This is your position in the ranking of people who are helping with research.\nKeep up the good work!',
    },
    '5iux48nb': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    '9x31xfcu': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // hubLogin
  {
    '99io55rv': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // setup
  {
    'na21u7wp': {
      'es': 'Configuración del Diario',
      'en': 'Setting up the Journal',
    },
    'u9pc75l5': {
      'es': '(esto solo te lo pediremos una vez)',
      'en': '(we will only ask you this once)',
    },
    '46a4rb3f': {
      'es': '¿Tienes alguna enfermedad autoinmune diagnosticada?',
      'en': 'Do you have any diagnosed autoimmune disease?',
    },
    'rhf7qree': {
      'es': 'Si',
      'en': 'Yes',
    },
    'yywexbl1': {
      'es': 'No',
      'en': 'No',
    },
    'a2dr2mgw': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'pcjdrc2u': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '68q94um6': {
      'es': '¿Cuál?',
      'en': 'Which?',
    },
    'hvbnxteh': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'vsjsb065': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'ucs32y1r': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '1ozetcbr': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'otqpgilv': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'dcgr4reb': {
      'es': 'De 3 a 5 años',
      'en': '3 to 5 years',
    },
    'tbvani4n': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'ykj68m93': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'fbb4a8w9': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'e8wfvixy': {
      'es':
          '¿Tienes algún familiar directo que tenga alguna enfermedad autoinmune?',
      'en':
          'Do you have any immediate family members who have an autoimmune disease?',
    },
    'm2b0hv2u': {
      'es': 'Si',
      'en': 'Yeah',
    },
    '9xaqbx2a': {
      'es': 'No',
      'en': 'No',
    },
    'i0bji4uv': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'avhf1gh9': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'lehyu3ml': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'u4syvneq': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'r27ov6n9': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'c97fw24x': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'ws7sd1ck': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '9df2bfb5': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'r2s2zyhp': {
      'es': '¿Tienes diagnóstico de síndrome de intestino irritable?',
      'en': 'Have you been diagnosed with irritable bowel syndrome?',
    },
    'x9d596we': {
      'es': 'Si',
      'en': 'Yes',
    },
    'w3rfxree': {
      'es': 'No',
      'en': 'No',
    },
    'qp2piw8n': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '39cj9e9c': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'lkcvyhkt': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'xsw7ay5n': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '56uzucp1': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    't0erjhg6': {
      'es': 'De 3 a 5 años',
      'en': '3 to 5 years',
    },
    'hx8tji0q': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'dh3k2rgz': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ej3ar9cu': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '3x2d4dna': {
      'es':
          '¿Tienes algún familiar directo que tenga alguna intolerancia alimentaria?',
      'en':
          'Do you have any immediate family members who have a food intolerance?',
    },
    'k3lsr9g3': {
      'es': 'Si',
      'en': 'Yeah',
    },
    'mjiox1lf': {
      'es': 'No',
      'en': 'No',
    },
    'y3r27gwm': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'bckzctfb': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'lcsd5zhg': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'xj7zlhva': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'fmwdubjm': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'vez383ow': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    '0s3r7vii': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ny89f23m': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'lfkl2r4g': {
      'es':
          '¿Tienes alguna sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': 'Do you have any diagnosed food sensitivities/intolerances?',
    },
    'fes13fcg': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '6p96mk4l': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '80tmgdrk': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'sls180m2': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'glo12224': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'zylci1au': {
      'es': 'De 3 a 5 años',
      'en': '3 to 5 years',
    },
    'gtxi9n5w': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    '44rsaeul': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '1roec7oj': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'dkvkxqft': {
      'es':
          '¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': 'Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'n92lgyxk': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'f6zyw9q9': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'c2aiue3u': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '21a683zi': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '3otcg5vn': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'ht8poswr': {
      'es': 'De 3 a 5 años',
      'en': '3 to 5 years',
    },
    '810dab81': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'fq4mtgt9': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'mnt8qnmu': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'nptaq986': {
      'es':
          '¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': 'Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'hv3feqgi': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ettr0fow': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'kkt45m4z': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '5jbjff6t': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '2nwswzk9': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    '9u1vfluc': {
      'es': 'De 3 a 5 años',
      'en': '3 to 5 years',
    },
    'i2xitvvk': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'nkmd286h': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'vfnlznwe': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'h0jaqzot': {
      'es':
          '¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '',
    },
    '8cen09xg': {
      'es': 'Selecciona tu respuesta...',
      'en': '',
    },
    'qscsmojf': {
      'es': 'Search for an item...',
      'en': '',
    },
    'imjkryb9': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': '',
    },
    '43k1rqb2': {
      'es': 'Menos de 1 año',
      'en': '',
    },
    'txm04smg': {
      'es': 'De 1 a 3 años',
      'en': '',
    },
    'cu576z5i': {
      'es': 'De 3 a 5 años',
      'en': '',
    },
    '2qb4wfhz': {
      'es': 'Más de 5 años',
      'en': '',
    },
    'sgvwy6vu': {
      'es': 'Selecciona tu respuesta...',
      'en': '',
    },
    'nnmo0hgw': {
      'es': 'Search for an item...',
      'en': '',
    },
    'j4aiyde5': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    '730du81g': {
      'es': '¿Tienes diagnóstico de síndrome de intestino irritable?',
      'en': 'Have you been diagnosed with irritable bowel syndrome?',
    },
    'ukq9re79': {
      'es': 'Si',
      'en': 'Yeah',
    },
    'hk6ui87f': {
      'es': 'No',
      'en': 'No',
    },
    '59au0z45': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'uqwekku4': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'wh5cldwz': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'x16yruv6': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'ix90xb5m': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    's4vw4yvt': {
      'es': 'De 3 a 5 años',
      'en': '3 to 5 years',
    },
    'ki149b9d': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    '296li1wg': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'bcajy7fi': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '84u4vt5q': {
      'es':
          '¿Tienes algún familiar directo que tenga alguna intolerancia alimentaria?',
      'en':
          'Do you have any immediate family members who have a food intolerance?',
    },
    'br9rfuhs': {
      'es': 'Si',
      'en': 'Yeah',
    },
    'm7z1dp4v': {
      'es': 'No',
      'en': 'No',
    },
    '1kizh8wh': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'xret4ws1': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'pg12sf1l': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'zhlyfvt9': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'po0c345k': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    '5hbfu19b': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'cteauoy2': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'qhpz70mw': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'um4d2cwd': {
      'es':
          '¿Tienes alguna sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': 'Do you have any diagnosed food sensitivities/intolerances?',
    },
    '91910ny0': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    's7a3v655': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '0gfwcbyo': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'v2svcbnj': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '19xk4afn': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'j63wmjzf': {
      'es': 'De 3 a 5 años',
      'en': '3 to 5 years',
    },
    'ufnlgmwo': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'k374uuru': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '5p0kk92v': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'axvsen7q': {
      'es':
          '¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': 'Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'bvj428op': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'agpkh04r': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'xp5ndgnr': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'snvylgs4': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'eumzivji': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'gg29hzyu': {
      'es': 'De 3 a 5 años',
      'en': '3 to 5 years',
    },
    'uh91z6qx': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'pjcb8wpj': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'dbs7agrv': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'vmfrzjuj': {
      'es':
          '¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': 'Do you have any other diagnosed food sensitivity/intolerance?',
    },
    '04gvb307': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'u3qdzla0': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'w0b2kkib': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '0nzjwlcy': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'mzvsxisg': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'tm1btpva': {
      'es': 'De 3 a 5 años',
      'en': '3 to 5 years',
    },
    '5nya9ssw': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    '1tie1t4i': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'jfebf2ri': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'yvqmuvo3': {
      'es':
          '¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '',
    },
    'vguothro': {
      'es': 'Selecciona tu respuesta...',
      'en': '',
    },
    'jk1pfjyw': {
      'es': 'Search for an item...',
      'en': '',
    },
    'oj7zrmxu': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': '',
    },
    'x0s3ppu6': {
      'es': 'Menos de 1 año',
      'en': '',
    },
    '6s3unwvw': {
      'es': 'De 1 a 3 años',
      'en': '',
    },
    'inzoomh5': {
      'es': 'De 3 a 5 años',
      'en': '',
    },
    'zjbgvo94': {
      'es': 'Más de 5 años',
      'en': '',
    },
    'jwtfdnw9': {
      'es': 'Selecciona tu respuesta...',
      'en': '',
    },
    'v0p6wvm0': {
      'es': 'Search for an item...',
      'en': '',
    },
    'qyjshlaz': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    's0zvq9qc': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // diario_sueno1
  {
    '7j6yk96a': {
      'es': 'Diario de Sueño',
      'en': 'Sleep Diary',
    },
    'hlhgcxa5': {
      'es': '33%',
      'en': '33%',
    },
    'dzorda2r': {
      'es': '¿Cuántas horas has dormido hoy?',
      'en': 'How many hours have you slept today?',
    },
    'yqdqjgdq': {
      'es': '¿Has tardado en conciliar el sueño?',
      'en': 'Did you take a while to fall asleep?',
    },
    'qwwzzwxl': {
      'es': 'SI',
      'en': 'YES',
    },
    '1vwdh7on': {
      'es': 'NO',
      'en': 'NO',
    },
    'j93jupgw': {
      'es':
          '¿Has tenido dificultades para mantenerte dormid@ durante la noche? ',
      'en': 'Have you had trouble staying asleep at night?',
    },
    'ydhxabrt': {
      'es': 'SI',
      'en': 'YES',
    },
    'tk25y1oa': {
      'es': 'NO',
      'en': 'NO',
    },
    '5zvc1d7s': {
      'es': '¿Cuál ha sido la calidad del sueño?',
      'en': 'What has been the quality of your sleep?',
    },
    'djkf84tr': {
      'es': '¿Te has levantado con fatiga?',
      'en': 'Did you wake up feeling tired?',
    },
    'ggljd5qb': {
      'es': 'SI',
      'en': 'YES',
    },
    's353femr': {
      'es': 'NO',
      'en': 'NO',
    },
    'nyxotq3z': {
      'es': '¿Has probado hoy alguna de estas estrategias para dormir mejor? ',
      'en': 'Have you tried any of these strategies to sleep better today?',
    },
    'q79maack': {
      'es': 'Cuarto\nOscuro',
      'en': 'Dark room',
    },
    't5x8fqkd': {
      'es': 'Antifaz para\ndormir',
      'en': 'Sleep mask',
    },
    'ahriimuz': {
      'es': 'Tapones para\ndormir',
      'en': 'Earplugs for\nsleeping',
    },
    'ojhe9e7r': {
      'es': 'No usar  el\nmóvil',
      'en': 'Do not use the\nmobile',
    },
    'hgbb68yo': {
      'es': 'Cenar ligero',
      'en': 'Eat light',
    },
    'swtxn3x5': {
      'es': 'Medicación',
      'en': 'Medication',
    },
    'o89pl8d8': {
      'es': 'Suplementos',
      'en': 'Supplements',
    },
    '1jgqld5p': {
      'es': 'Otras',
      'en': 'Others',
    },
    'lxtq5e2b': {
      'es': 'No he probado ninguna',
      'en': 'I haven\'t tried any',
    },
    'igd6yyn5': {
      'es': '¿Has tomado algo para dormir? ',
      'en': 'Have you taken anything to help you sleep?',
    },
    'y38fxn6o': {
      'es': 'Medicación',
      'en': 'Medication',
    },
    'u881h0hc': {
      'es': 'Suplementos',
      'en': 'Supplements',
    },
    '2dg5mmcs': {
      'es': 'Continuar',
      'en': 'Continue',
    },
    'pmi23quq': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    'jih6c1ni': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // diario_sueno2
  {
    '9g895en0': {
      'es': 'Diario de Sueño',
      'en': 'Sleep Diary',
    },
    '2hf1vwp1': {
      'es': '66%',
      'en': '66%',
    },
    '13z5fcen': {
      'es': '¿Que medicamento has tomado para dormir?',
      'en': 'What medicine have you taken to sleep?',
    },
    'e2ygt0iu': {
      'es': 'Recuerda poner el nombre en español.',
      'en': 'Remember to put the name in Spanish.',
    },
    'odfq1nim': {
      'es': '¿Este medicamento ha mejorado el sueño?',
      'en': 'Has this medication improved your sleep?',
    },
    'whgeoaqi': {
      'es': '',
      'en': '',
    },
    'cp9spule': {
      'es': 'nombre del medicamento',
      'en': 'name of the medicine',
    },
    'ytdwx3ku': {
      'es': 'Recuerda utilizar las tíldes en los nombres que las usen',
      'en': 'Remember to use accents in names that use them.',
    },
    'mo74zsty': {
      'es': 'O usar el del último diario realizado:',
      'en': 'Or use the one from the last journal made:',
    },
    'g7owvvpa': {
      'es': 'Sí, me ayudó',
      'en': 'Yes, it helped me',
    },
    'pjtccak8': {
      'es': 'No me ayudó',
      'en': 'It didn\'t help me',
    },
    'oeax1khx': {
      'es': 'Notas',
      'en': 'Notes',
    },
    'xahavw18': {
      'es': 'Aquí puedes agregar notas sobre el\nmedicamento',
      'en': 'Here you can add notes about the medication',
    },
    'bckivtql': {
      'es': 'Continuar',
      'en': 'Continue',
    },
    'nrd4dha2': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    '75gujmzn': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // diario_suenoFin
  {
    '866et734': {
      'es': 'Diario de Sueño',
      'en': 'Sleep Diary',
    },
    'mjw5o3t5': {
      'es': '¡Gracias por completar tu Diario!',
      'en': 'Thank you for completing your Journal!',
    },
    'uf0f9sdv': {
      'es':
          'Tus datos nos ayudarán a identificar qué suplementos o tratamientos mejoran tu descanso. ¡Nos vemos mañana!',
      'en':
          'Your data will help us identify which supplements or treatments improve your rest. See you tomorrow!',
    },
    '1ewyyzaw': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    'xz4ys7ls': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // diario_sueno3
  {
    'kacp34y7': {
      'es': 'Diario de Sueño',
      'en': 'Sleep Diary',
    },
    'dwyn9nng': {
      'es': '99%',
      'en': '99%',
    },
    'li3cb89z': {
      'es': '¿Que suplemento has tomado?',
      'en': 'What supplement have you taken?',
    },
    '2rbpvh2x': {
      'es': '¿Este suplemento te ayudó a dormir?',
      'en': 'Did this supplement help you sleep?',
    },
    'zzi32ihc': {
      'es': '',
      'en': '',
    },
    'hzsjtkld': {
      'es': 'nombre del suplemento',
      'en': 'name of the supplement',
    },
    'wvimkmtj': {
      'es': 'Recuerda utilizar las tíldes en los nombres que las usen',
      'en': 'Remember to use accents in names that use them.',
    },
    '4lz4aex9': {
      'es': 'O usar el del último diario realizado:',
      'en': 'Or use the one from the last journal made:',
    },
    'p9flpyo4': {
      'es': 'Sí, me ayudó',
      'en': 'Yes, it helped me',
    },
    'jvuozf5x': {
      'es': 'No me ayudó',
      'en': 'It didn\'t help me',
    },
    'rl2n44iy': {
      'es': 'Notas',
      'en': 'Notes',
    },
    'cl47zefh': {
      'es': 'Aquí puedes agregar notas sobre el\nsuplemento',
      'en': 'Here you can add notes about the\nsupplement',
    },
    'dil3o9pi': {
      'es': 'Continuar',
      'en': 'Continue',
    },
    'ujyd8o7i': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    'h55n50we': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // setupInto
  {
    'd3bzl3fd': {
      'es': 'Configuración del Diario',
      'en': 'Setting up the Journal',
    },
    'bpkopppa': {
      'es': '(esto solo te lo pediremos una vez)',
      'en': '(we will only ask you this once)',
    },
    'gllfky2s': {
      'es': '¿Tienes diagnóstico de síndrome de intestino irritable?',
      'en': 'Have you been diagnosed with irritable bowel syndrome?',
    },
    '74b60222': {
      'es': 'Si',
      'en': 'Yes',
    },
    'cssps8ua': {
      'es': 'No',
      'en': 'No',
    },
    'sn731kma': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '09qr3uhc': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'gn3pdbh8': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'p0yxh9vu': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'b5x5frw1': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'vxya7ckq': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    '0okt0h1v': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'fs1vfggc': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '1kuyqxnb': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'eg8o6h0p': {
      'es':
          '¿Tienes algún familiar directo que tenga alguna intolerancia alimentaria?',
      'en':
          'Do you have any immediate family members who have a food intolerance?',
    },
    '30w8m94m': {
      'es': 'Si',
      'en': 'Yes',
    },
    'cm4rcqf2': {
      'es': 'No',
      'en': 'No',
    },
    'ih5cvmn9': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'q2s6m3ce': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'hc5atrqs': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'v4y9176v': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'x86qsg3m': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'ulhhe10v': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    '82i9h6k9': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'lpt5m0tp': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'mczc0q6v': {
      'es':
          '¿Tienes alguna sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': 'Do you have any diagnosed food sensitivities/intolerances?',
    },
    'efwxwzlu': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'etaowxnd': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '3twyckwp': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'um0szp0b': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '4qmh3yos': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'byornku8': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'wwgysml0': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'au87iaou': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'evvg0nn2': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'hnl0nyce': {
      'es':
          '¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': 'Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'hmzfxr93': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'sautzcha': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '4y9ltb9e': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '0fypzod3': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'b59etm3w': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    '4pffflas': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'kk6k9ncl': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'f048nmv7': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '3hffthnb': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'rhzadlt6': {
      'es':
          '¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': 'Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'np9go996': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'h4v2qq34': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '1dv1wmsl': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'd546gojb': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'kdy6utyw': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'b9dylf4r': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    '1qzj9g0q': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    '4ddhp6mb': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'hmc9fr7f': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'v8ihp1x1': {
      'es':
          '¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': 'Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'gtwmofi4': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'bu2dfx26': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'ih4hdu5g': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'bcl9x731': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'nkkqz2su': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'yq1s2bxo': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'b9wizgmg': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'u0emwhko': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '3h0bjj65': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'x6177gzs': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    '5h0vnz4b': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // diario_Into1
  {
    'c0l2oz0n': {
      'es': 'Diario de Intolerancias',
      'en': 'Diary of Intolerances',
    },
    'b2h0bs3c': {
      'es': '¿Te ha sentado mal algo de lo que comiste ayer?',
      'en': 'Did something you ate yesterday upset your stomach?',
    },
    'vwfkzwrc': {
      'es': 'SI',
      'en': 'YES',
    },
    'vw685ys8': {
      'es': 'NO',
      'en': 'NO',
    },
    '3441q104': {
      'es': 'No lo sé',
      'en': 'Don\'t know',
    },
    '7c3im5j9': {
      'es': 'Guardar',
      'en': 'Save',
    },
    '13erp0g4': {
      'es': 'Carnes',
      'en': 'meats',
    },
    'virzdhyc': {
      'es': 'Pescado',
      'en': 'Fish',
    },
    'd0cepzed': {
      'es': 'Mariscos',
      'en': 'Seafood',
    },
    'vbamupkq': {
      'es': 'Lácteos',
      'en': 'Dairy',
    },
    '0z492xia': {
      'es': 'Huevos',
      'en': 'Eggs',
    },
    'h6ozv3vr': {
      'es': 'Panes y Cereales',
      'en': 'Breads and Cereals',
    },
    'xttnnnrd': {
      'es': 'Frutas',
      'en': 'Fruit',
    },
    'x7pie9s5': {
      'es': 'Verduras \ny Hortalizas',
      'en': 'Vegetables',
    },
    'uwqmv5vi': {
      'es': 'Legumbres',
      'en': 'Legumes',
    },
    '4krmm350': {
      'es': 'Frutos Secos',
      'en': 'Nuts',
    },
    'wvg3v7zq': {
      'es': 'Salsas y Condimentos',
      'en': 'Sauces and Condiments',
    },
    'e29cj0bt': {
      'es': 'Bebidas',
      'en': 'Drinks',
    },
    '6lcxtsj7': {
      'es': 'Continuar',
      'en': 'Continue',
    },
    'x7nnorqe': {
      'es': 'Finalizar más tarde',
      'en': 'End later',
    },
    'p9spofzb': {
      'es': 'Guardar',
      'en': 'Save',
    },
    'j1phw7ga': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // menu_intolerancias
  {
    '8suk6cd5': {
      'es': 'Diario de Intolerancias',
      'en': 'Diary of Intolerances',
    },
    'z0zmoggg': {
      'es': 'Selecciona una opción',
      'en': 'Select an option',
    },
    '4v23bzg2': {
      'es':
          'Las opciones solo estarán disponibles si puedes hacer uso de ellas.',
      'en': 'Options will only be available if you can use them.',
    },
    'qg7vv2bp': {
      'es': 'Crear el diario de hoy',
      'en': 'Create today\'s diary',
    },
    'x03o45de': {
      'es': 'Editar el último diario',
      'en': 'Edit the last diary',
    },
    'hqo4dmnh': {
      'es': 'Finalizar el último diario',
      'en': 'End the last diary',
    },
    'akzl9oix': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // diario_Into2
  {
    'rbtby12n': {
      'es': 'Diario de Intolerancias',
      'en': 'Diary of Intolerances',
    },
    '1czwkjyj': {
      'es': '¿Qué tipo de carnes has comido?',
      'en': 'What kind of meats have you eaten?',
    },
    'rjbkm2vw': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '71yx0io0': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'zczpzyhk': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '9um4n9pk': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'ogpbeao5': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '3tce3ijv': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'qsyn1684': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'imp64fu5': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'bi2zc769': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'kdm8vngr': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '6ihq9zt6': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'efjamwuz': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'fank41mx': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'wdwfd560': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'hly54eux': {
      'es': '¿Qué tipo de pescados has comido?',
      'en': 'What kind of fish have you eaten?',
    },
    'q3mx4cam': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'g0ajw7ml': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'hynubel4': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'xxdv6ood': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'p1j8lsiv': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'g4lqblkl': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'i1jiduhu': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'venql3se': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '1wz5epvt': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'm008o1rw': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '4mf6f7ta': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'yimmuq53': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    's9o5fzea': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'i6aho9o4': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'g88mjqp6': {
      'es': '¿Qué tipo de mariscos has comido?',
      'en': 'What kind of seafood have you eaten?',
    },
    '57sricz4': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'y5j45cq8': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'e4aiut7x': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'kzedaa4r': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'n07w786j': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'r5mu117f': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '18sequy0': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '7109iqix': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'zrnustmn': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '8bebsva2': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'mzgp6nqm': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'pwz64djh': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'kjhars72': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'ndrmlza8': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'drtjhj3a': {
      'es': '¿Qué tipo de lácteos has comido?',
      'en': 'What kind of dairy have you eaten?',
    },
    'x23lxkse': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '5adtarkx': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'blu2j4o4': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '8ysxnciv': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'c4nkqkqa': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'rd5xh998': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '3fcaxrhp': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '01uwqeeo': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'rjeuoijm': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'dyx1yw0y': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'k1wnaiej': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '843do1l5': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '4ha525uo': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'ur862fae': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'r4e9pdxi': {
      'es': '¿Cómo has comido los huevos?',
      'en': 'How did you eat the eggs?',
    },
    'p0zmcxo9': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'aardf6j5': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'mv2pcgxq': {
      'es': '¿Qué tipo de cereales has comido?',
      'en': 'What kind of cereal have you eaten?',
    },
    'dbubytzz': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'r9dp32cs': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '0kljqp93': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'jsltxz9l': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'yftxlsnb': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'u847ds86': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'vok4dk7q': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'lcmbs05x': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'r0asxvyt': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'on2gmh15': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'a0wy87th': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'bsssq5an': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '0e1ib0wq': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'henkfqhh': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '5r809od9': {
      'es': '¿Qué tipo de frutas has comido?',
      'en': 'What kind of fruits have you eaten?',
    },
    '3urmylag': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'zd4n996w': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '6vsu0tja': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'l6dhv7gz': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'hey5uly7': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'pe0nqbpj': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'wugi5zfj': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'p2p3eglp': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '077h0r97': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'ytfhpri2': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '5qfaawzo': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'dx74edxi': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '5ukz3ukm': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'nw5ppbky': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '1kfl4zsg': {
      'es': '¿Qué verduras/hortalizas has comido?',
      'en': 'What kind of vegetables have you eaten?',
    },
    'd94bo54d': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '6bf8yr9s': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'shr77jrd': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '6xtpbu4v': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '7rhgau2s': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '02zi87ff': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'pafssseg': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'a8iu6trq': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'b9u9jgwe': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'qt52fz0h': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'u1s144yn': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'xeqwrlr6': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'k93cydq1': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'dw8b2z2c': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'fy7s1ds2': {
      'es': '¿Qué legumbres has comido?',
      'en': 'What legumes have you eaten?',
    },
    'io0i9ggq': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'hai9hcxp': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '3ozcne86': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'mfwws1ep': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'fd63rcwp': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'rsbncbq5': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'm6z9m5kh': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '359izuc0': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'hdrwlt8e': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '6tqyb6ha': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '3p8ndl0r': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'i4afuhd0': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'hbfpyrb2': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'ejcesvjq': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'q3va3mv5': {
      'es': '¿Qué frutos secos has comido?',
      'en': 'What nuts have you eaten?',
    },
    'vlip7uub': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'aryv0xci': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '1xu2cits': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'aaynakbe': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'dcbiv7vh': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'rvz6zc6c': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '2qqa4t3b': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'ghshedap': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '3yl0ao9g': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'vmjrepi5': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'ppff24du': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '7zl9gyhm': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'oz5wp46q': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '2xmimb1t': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '17632ful': {
      'es': '¿Qué salsas y condimentos has comido?',
      'en': 'What condiments have you eaten?',
    },
    'mqlm9cqi': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'c963ude9': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'gphiegl0': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'qr5n1jkr': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '62nzebjp': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'gx70b59u': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '3rv29ap0': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '4hxs3j92': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'ti23r9zo': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '4arnkuxs': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'aa7rqugw': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'c86ky7tk': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'j2ugmyi8': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'caltw04z': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'x8uivwl8': {
      'es': '¿Qué bebidas has tomado?',
      'en': 'What drinks have you had?',
    },
    '6dgvjhgg': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'muia0es1': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'dj49whjv': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'jcf6y6bs': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'dznuu866': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'j0436z31': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'ky6kespw': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'njn6aec5': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    '4370v8z0': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    '8gfx3xdq': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'ddax5gwg': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'a4axxis9': {
      'es': 'Buscador...',
      'en': 'Search...',
    },
    'pxyol338': {
      'es': 'Selecciona tu respuesta',
      'en': 'Select your answer',
    },
    'fokefjae': {
      'es': 'Buscador...',
      'en': 'Seeker...',
    },
    'xp7y1k2z': {
      'es': '¿Has tenido algún síntoma tras su ingesta?',
      'en': 'Have you had any symptoms after taking it?',
    },
    'sw6vfobm': {
      'es': 'SI',
      'en': 'YES',
    },
    'airhza1k': {
      'es': 'NO',
      'en': 'NO',
    },
    'mou0litv': {
      'es': 'Continuar',
      'en': 'Continue',
    },
    's0m52i7f': {
      'es': 'Finalizar más tarde',
      'en': 'Finish later',
    },
    'uo3mce4k': {
      'es': 'Guardar',
      'en': 'Save',
    },
    '07ir6oqh': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // diarioIntoFin
  {
    'kgta7kaa': {
      'es': 'Diario de Intolerancias',
      'en': 'Diary of Intolerances',
    },
    '2p3i74vc': {
      'es': '¡Gracias por tu contribución! ',
      'en': 'Thank you for your contribution!',
    },
    'c3tq7kwj': {
      'es':
          'Tu contribución es clave para avanzar hacia soluciones personalizadas y mejorar tu calidad de vida.',
      'en':
          'Your contribution is key to moving towards personalized solutions and improving your quality of life.',
    },
    '03qmwjq4': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    'fe99u9os': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // diario_Into3
  {
    '2eimwc81': {
      'es': 'Diario de Intolerancias',
      'en': 'Diary of Intolerances',
    },
    'rm7l6dhj': {
      'es': '¿Cuáles de estos síntomas has experimentado?',
      'en': 'Which of these symptoms have you experienced?',
    },
    '8zno9abv': {
      'es': 'Dolor de cabeza',
      'en': 'Headache',
    },
    '34ybkuro': {
      'es': '0',
      'en': '0',
    },
    'jned8ktc': {
      'es': '1',
      'en': '1',
    },
    '7wnee2wu': {
      'es': '2',
      'en': '2',
    },
    '9lblxzua': {
      'es': '3',
      'en': '3',
    },
    '44foyib7': {
      'es': '4',
      'en': '4',
    },
    'mqf7gthb': {
      'es': '5',
      'en': '5',
    },
    '527cv3py': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'rup3mu0h': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'ziguen10': {
      'es': 'Dolor abdominal',
      'en': 'Abdominal pain',
    },
    'yhpzl0h7': {
      'es': '0',
      'en': '0',
    },
    'jx7ino68': {
      'es': '1',
      'en': '1',
    },
    'oscl8kvx': {
      'es': '2',
      'en': '2',
    },
    'gk0alxrb': {
      'es': '3',
      'en': '3',
    },
    '9plioh3r': {
      'es': '4',
      'en': '4',
    },
    'slp841ig': {
      'es': '5',
      'en': '5',
    },
    'wunc187e': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    '9tlzo9bn': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    '3chkc60v': {
      'es': 'Náuseas',
      'en': 'Nausea',
    },
    'f9u917sn': {
      'es': '0',
      'en': '0',
    },
    'gl1dw6xb': {
      'es': '1',
      'en': '1',
    },
    'uln1l4gp': {
      'es': '2',
      'en': '2',
    },
    '6ixs3uk8': {
      'es': '3',
      'en': '3',
    },
    '05yfpxc6': {
      'es': '4',
      'en': '4',
    },
    'evflvfwt': {
      'es': '5',
      'en': '5',
    },
    '8pf1pbqc': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'r4g2reeb': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'vdrhjh0y': {
      'es': 'Vómitos',
      'en': 'Vomiting',
    },
    '0xruvqi1': {
      'es': '0',
      'en': '0',
    },
    'sstea7xk': {
      'es': '1',
      'en': '1',
    },
    '2d0h6dap': {
      'es': '2',
      'en': '2',
    },
    'gjf8q90e': {
      'es': '3',
      'en': '3',
    },
    'k20yr5an': {
      'es': '4',
      'en': '4',
    },
    'd3k0hlzb': {
      'es': '5',
      'en': '5',
    },
    'kta732sj': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'tmbfp5g3': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'w9tv2h6u': {
      'es': 'Diarrea',
      'en': 'Diarrhea',
    },
    'i9hr4n6t': {
      'es': '0',
      'en': '0',
    },
    'h141udtv': {
      'es': '1',
      'en': '1',
    },
    '5nl3web3': {
      'es': '2',
      'en': '2',
    },
    'mg08pbl7': {
      'es': '3',
      'en': '3',
    },
    'nq3hbbz6': {
      'es': '4',
      'en': '4',
    },
    '4htbg5wr': {
      'es': '5',
      'en': '5',
    },
    'n8kuq1mx': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    '6kzsghwk': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'lkd03o53': {
      'es': 'Dificultad para respirar',
      'en': 'Difficulty breathing',
    },
    'jxvskabd': {
      'es': '0',
      'en': '0',
    },
    'wp449mtk': {
      'es': '1',
      'en': '1',
    },
    'nhaxfb1n': {
      'es': '2',
      'en': '2',
    },
    'den2gsgn': {
      'es': '3',
      'en': '3',
    },
    '54rkg4gs': {
      'es': '4',
      'en': '4',
    },
    'g2ytq9b4': {
      'es': '5',
      'en': '5',
    },
    'lgiiujk7': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'qo9wyc4f': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'tav7hpq6': {
      'es': 'Niebla mental',
      'en': 'Brain fog',
    },
    'k5f4ow94': {
      'es': '0',
      'en': '0',
    },
    '9eyq66l1': {
      'es': '1',
      'en': '1',
    },
    'owx8ffbd': {
      'es': '2',
      'en': '2',
    },
    '38rv8b0e': {
      'es': '3',
      'en': '3',
    },
    'onu6yhzo': {
      'es': '4',
      'en': '4',
    },
    'yncsfbv8': {
      'es': '5',
      'en': '5',
    },
    'ta3ocqqy': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    '6qe9zizc': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    's26y30nu': {
      'es': 'Visión borrosa',
      'en': 'Blurry vision',
    },
    '2vp19nk1': {
      'es': '0',
      'en': '0',
    },
    'r6mvrgeg': {
      'es': '1',
      'en': '1',
    },
    '9teds4o2': {
      'es': '2',
      'en': '2',
    },
    'q0xixn86': {
      'es': '3',
      'en': '3',
    },
    'zvc9xzmm': {
      'es': '4',
      'en': '4',
    },
    '1na2uuje': {
      'es': '5',
      'en': '5',
    },
    'a2ryvo5g': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'ga1nk2tt': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'wpw5eb94': {
      'es': 'Debilidad o Cansancio',
      'en': 'Weakness or Fatigue',
    },
    '5minp7kg': {
      'es': '0',
      'en': '0',
    },
    'pump61zr': {
      'es': '1',
      'en': '1',
    },
    '7xxnli0l': {
      'es': '2',
      'en': '2',
    },
    'ujamoz5n': {
      'es': '3',
      'en': '3',
    },
    'pdedfnfi': {
      'es': '4',
      'en': '4',
    },
    'yewkgzfm': {
      'es': '5',
      'en': '5',
    },
    'y3s8fcv4': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    '8ihraoyf': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'iui2j5sz': {
      'es': 'Palpitaciones',
      'en': 'Palpitations',
    },
    'c9rugv8a': {
      'es': '0',
      'en': '0',
    },
    'sdgoxrt2': {
      'es': '1',
      'en': '1',
    },
    '51vxgnyn': {
      'es': '2',
      'en': '2',
    },
    'xm7n2fxd': {
      'es': '3',
      'en': '3',
    },
    'guchvqgr': {
      'es': '4',
      'en': '4',
    },
    'j7x5bv0k': {
      'es': '5',
      'en': '5',
    },
    'u6sk4jpm': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    '5mksfk9p': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'emcqgsll': {
      'es': 'Sudoración',
      'en': 'Sweating',
    },
    'q9ekv9f8': {
      'es': '0',
      'en': '0',
    },
    'mdgsym2j': {
      'es': '1',
      'en': '1',
    },
    'ef4ibi0j': {
      'es': '2',
      'en': '2',
    },
    'aknd4cly': {
      'es': '3',
      'en': '3',
    },
    'r37nb1sz': {
      'es': '4',
      'en': '4',
    },
    'ndmioze5': {
      'es': '5',
      'en': '5',
    },
    '7abipa0z': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'bn8j3fzi': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'hri6yna9': {
      'es': 'Picores',
      'en': 'Itching',
    },
    '6ok5yb2k': {
      'es': '0',
      'en': '0',
    },
    'lh3npr29': {
      'es': '1',
      'en': '1',
    },
    '89hqview': {
      'es': '2',
      'en': '2',
    },
    'kde5ruig': {
      'es': '3',
      'en': '3',
    },
    '0o2owgrd': {
      'es': '4',
      'en': '4',
    },
    'jkgm1t6j': {
      'es': '5',
      'en': '5',
    },
    '7eozh8ga': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    '6qsinwck': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    '0hlpuppk': {
      'es': 'Hinchazón',
      'en': 'Swelling',
    },
    'r56ar5sz': {
      'es': '0',
      'en': '0',
    },
    'b7n0rk0j': {
      'es': '1',
      'en': '1',
    },
    '7qgatkax': {
      'es': '2',
      'en': '2',
    },
    '63grqfwd': {
      'es': '3',
      'en': '3',
    },
    'zbuyv7o1': {
      'es': '4',
      'en': '4',
    },
    'atv2z6xc': {
      'es': '5',
      'en': '5',
    },
    'qat7hhr8': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'knts5pn4': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'o9gbfxtx': {
      'es': 'Gases',
      'en': 'Gases',
    },
    'ewcs90nc': {
      'es': '0',
      'en': '0',
    },
    'n6vw3ofl': {
      'es': '1',
      'en': '1',
    },
    'dy51mn9d': {
      'es': '2',
      'en': '2',
    },
    '9i8wr3xi': {
      'es': '3',
      'en': '3',
    },
    'p6g4heyi': {
      'es': '4',
      'en': '4',
    },
    'mo0e8k8q': {
      'es': '5',
      'en': '5',
    },
    'x66m1g8s': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'kp5l7xdw': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    '1kr44iq4': {
      'es': 'Ardor',
      'en': 'Burning',
    },
    'zogwem73': {
      'es': '0',
      'en': '0',
    },
    '94fwdiag': {
      'es': '1',
      'en': '1',
    },
    'rl18wk39': {
      'es': '2',
      'en': '2',
    },
    'uoqi6o9b': {
      'es': '3',
      'en': '3',
    },
    'nz1rypou': {
      'es': '4',
      'en': '4',
    },
    'lln3h5zq': {
      'es': '5',
      'en': '5',
    },
    'occ10g9p': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    '0u6gxbuj': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    '4fj83ywo': {
      'es': 'Reflujo',
      'en': 'Reflux',
    },
    '0qimlso0': {
      'es': '0',
      'en': '0',
    },
    'byw9hfg4': {
      'es': '1',
      'en': '1',
    },
    '3zffgnbn': {
      'es': '2',
      'en': '2',
    },
    'c0la8wtg': {
      'es': '3',
      'en': '3',
    },
    '01s4wjjt': {
      'es': '4',
      'en': '4',
    },
    '245t00im': {
      'es': '5',
      'en': '5',
    },
    'gak9hwi9': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    '4ixt5pej': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    '9vgb226y': {
      'es': 'Digestión pesada',
      'en': 'Heavy digestion',
    },
    'm0hf96dd': {
      'es': '0',
      'en': '0',
    },
    '524ayq5r': {
      'es': '1',
      'en': '1',
    },
    'jg8ngzca': {
      'es': '2',
      'en': '2',
    },
    'qsckq6tv': {
      'es': '3',
      'en': '3',
    },
    'rkghdwfu': {
      'es': '4',
      'en': '4',
    },
    'zta2nt0t': {
      'es': '5',
      'en': '5',
    },
    'd0chg7j1': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    '0re0sd34': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    'wk1uoma5': {
      'es': 'Calambres musculares',
      'en': 'Muscle cramps',
    },
    'ivbrgpen': {
      'es': '0',
      'en': '0',
    },
    'hw3kkt76': {
      'es': '1',
      'en': '1',
    },
    '7k5lzh45': {
      'es': '2',
      'en': '2',
    },
    'zzl07zgy': {
      'es': '3',
      'en': '3',
    },
    '9fme93p7': {
      'es': '4',
      'en': '4',
    },
    'pfk6k0z9': {
      'es': '5',
      'en': '5',
    },
    '1d10spjs': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    '7h26lq2r': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    '5jn0ust6': {
      'es': 'Mareos',
      'en': 'Dizziness',
    },
    'k1y93vmk': {
      'es': '0',
      'en': '0',
    },
    'bfvyrvi1': {
      'es': '1',
      'en': '1',
    },
    '64j3rqy0': {
      'es': '2',
      'en': '2',
    },
    'w0hxqljh': {
      'es': '3',
      'en': '3',
    },
    'jtaligyv': {
      'es': '4',
      'en': '4',
    },
    '9fnjhftg': {
      'es': '5',
      'en': '5',
    },
    'c3z4wm3c': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'y1dy9v8t': {
      'es': 'Mucho',
      'en': 'A lot',
    },
    '2rzsftge': {
      'es': 'Continuar',
      'en': 'Continue',
    },
    'rsg699pj': {
      'es': 'Finalizar más tarde',
      'en': 'Finish later',
    },
    '6qgp71t1': {
      'es': 'Guardar',
      'en': 'Save',
    },
    'gjrzyi1l': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // diario_Into4
  {
    'z4gyjnn4': {
      'es': 'Diario de Intolerancias',
      'en': 'Diary of Intolerances',
    },
    '1uwt7r87': {
      'es':
          'Has indicado que tuviste Dolor Abdominal,\npor favor indica  en que parte.',
      'en':
          'You have indicated that you had abdominal pain,\nplease indicate where.',
    },
    'q9wg57om': {
      'es': '1',
      'en': '1',
    },
    'psmw812w': {
      'es': '2',
      'en': '2',
    },
    '87nplw07': {
      'es': '3',
      'en': '3',
    },
    't2bsff45': {
      'es': '4',
      'en': '4',
    },
    'ofekpx1y': {
      'es': '5',
      'en': '5',
    },
    'k0hgm49d': {
      'es': '6',
      'en': '6',
    },
    '6ul4q5ey': {
      'es': '7',
      'en': '7',
    },
    'qivh6ty7': {
      'es': '8',
      'en': '8',
    },
    'uvcmzina': {
      'es': '9',
      'en': '9',
    },
    'apbocexa': {
      'es': 'Continuar',
      'en': 'Continue',
    },
    'xebjsduh': {
      'es': 'Finalizar más tarde',
      'en': 'Finish later',
    },
    'j5jusmzg': {
      'es': 'Guardar',
      'en': 'Save',
    },
    'laf8tt3e': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // listado
  {
    'oid5mtbq': {
      'es': 'Diarios de Síntomas',
      'en': 'Symptom Diaries',
    },
    '7j47i75c': {
      'es': 'Selecciona un diario para ver el resumen',
      'en': 'Select a journal to view the summary',
    },
    'tbkuqdam': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // resumen
  {
    'jn8et9oh': {
      'es': 'Tu nivel de energía ha sido del ',
      'en': 'Your energy level has been',
    },
    'p81q0u2g': {
      'es': 'Tuviste menos energía en la ',
      'en': 'You had less energy in the',
    },
    'qirrkun3': {
      'es': 'Mañana',
      'en': 'Tomorrow',
    },
    '4zmecmkp': {
      'es': 'Tarde',
      'en': 'Late',
    },
    'acocreii': {
      'es': 'Noche',
      'en': 'Evening',
    },
    'jjkqzg44': {
      'es': 'Esta fue tu calidad de sueño',
      'en': 'This was your sleep quality',
    },
    '6nd8nlqm': {
      'es': 'Estas son las actividades que has podido realizar:',
      'en': 'These are the activities you have been able to do:',
    },
    'z6rion20': {
      'es': 'Síntomas que más has experimentado:',
      'en': 'Symptoms you have experienced most:',
    },
    'z1bvxjg8': {
      'es': 'Tu nivel de dolor ha sido de:',
      'en': 'Your pain level has been:',
    },
    '1sa6fdvl': {
      'es': 'Tomaste estos medicamentos / suplementos',
      'en': 'You took these medications/supplements',
    },
    'apc9vuet': {
      'es': 'No has registrado medicamentos o suplementos',
      'en': 'You have not registered medications or supplements',
    },
    'h18tujcs': {
      'es': 'Este medicamento no ha mejorado mis síntomas',
      'en': 'This medicine has not improved my symptoms.',
    },
    'fdz3lqnw': {
      'es': 'Este medicamento ha mejorado estos síntomas:',
      'en': 'This medicine has improved these symptoms:',
    },
    '7p5v831o': {
      'es': 'Este medicamento no ha mejorado mis síntomas',
      'en': 'This medicine has not improved my symptoms.',
    },
    'k2wgz0mo': {
      'es': 'Este medicamento ha mejorado estos síntomas:',
      'en': 'This medicine has improved these symptoms:',
    },
    'r30vyzvb': {
      'es': 'Este medicamento no ha mejorado mis síntomas',
      'en': 'This medicine has not improved my symptoms.',
    },
    'lk2b5bk5': {
      'es': 'Este suplemento ha mejorado estos síntomas:',
      'en': 'This supplement has improved these symptoms:',
    },
    'kc88tme0': {
      'es': 'Este medicamento no ha mejorado mis síntomas',
      'en': 'This medicine has not improved my symptoms.',
    },
    '3jab9bn1': {
      'es': 'Este suplemento ha mejorado estos síntomas:',
      'en': 'This supplement has improved these symptoms:',
    },
    'awmoeqwy': {
      'es': 'Este medicamento no ha mejorado mis síntomas',
      'en': 'This medicine has not improved my symptoms.',
    },
    'w65qtq31': {
      'es': 'Este suplemento ha mejorado estos síntomas:',
      'en': 'This supplement has improved these symptoms:',
    },
    'mytkv53k': {
      'es': 'Resumen de Intolerancias',
      'en': 'Summary of Intolerances',
    },
    'yxbttlka': {
      'es': 'No tienes hecho el diario de este día.',
      'en': 'You haven\'t made the diary for this day.',
    },
    'an39xahx': {
      'es': 'Desayuno',
      'en': 'Breakfast',
    },
    'l86c9dd2': {
      'es': 'Comida',
      'en': 'Meal',
    },
    '0tjdbymj': {
      'es': 'Cena',
      'en': 'Dinner',
    },
    'uzvpzvre': {
      'es': 'Estos son los alimentos que has consumido',
      'en': 'These are the foods you have consumed',
    },
    'kr0q9yfo': {
      'es': 'Carne',
      'en': 'Meat',
    },
    '6sepautv': {
      'es': 'Pescado',
      'en': 'Fish',
    },
    '8vmsj1sf': {
      'es': 'Mariscos',
      'en': 'Seafood',
    },
    'ekahm2n1': {
      'es': 'Lácteos',
      'en': 'Dairy',
    },
    '8koxnjxo': {
      'es': 'Huevos',
      'en': 'Eggs',
    },
    '8dmi5kmi': {
      'es': 'Cereales',
      'en': 'Cereals',
    },
    '3mc9gwd5': {
      'es': 'Frutas',
      'en': 'Fruit',
    },
    '76baffwg': {
      'es': 'Verduras',
      'en': 'Vegetables',
    },
    'jcqxu66s': {
      'es': 'Legumbres',
      'en': 'Legumes',
    },
    'ros8y461': {
      'es': 'Frutos Secos',
      'en': 'Dried Fruits',
    },
    'fj4kcqqn': {
      'es': 'Condimentos y Salsas',
      'en': 'Condiments and Sauces',
    },
    '6qu1blrw': {
      'es': 'Bebidas',
      'en': 'Drinks',
    },
    '2hb1yf8k': {
      'es': 'Síntomas tras la ingesta',
      'en': 'Symptoms after ingestion',
    },
    'czua5f79': {
      'es': 'No has registrado síntomas',
      'en': 'You have not registered symptoms',
    },
    'nfpfgfir': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // reporteSalud
  {
    'rcf5yeea': {
      'es': 'Carpeta de Salud',
      'en': 'Health Folder',
    },
    'v5aze430': {
      'es':
          'A continuación verás un reporte basado en los datos que has introducido, en el rango de fechas seleccionado.',
      'en':
          'Below you will see a report based on the data you have entered, in the selected date range.',
    },
    'cn2e8nnv': {
      'es': '7 Días',
      'en': '7 Days',
    },
    '1mi5atx2': {
      'es': '30 Días',
      'en': '30 Days',
    },
    'alepwlal': {
      'es': 'Personalizado',
      'en': 'Custom',
    },
    'bav25zyf': {
      'es': 'Fecha de Inicio',
      'en': 'Start Date',
    },
    'm9xg6yaq': {
      'es': 'Fecha de Fin',
      'en': 'End Date',
    },
    'vndepwwe': {
      'es': 'Generar Reporte',
      'en': 'Generate Report',
    },
    's1nimqrz': {
      'es': 'Promedio de Energía',
      'en': 'Average Energy',
    },
    'kv7t0m9x': {
      'es': 'De media, no se registran variaciones durante el día.',
      'en': 'On average, there are no changes during the day.',
    },
    '7did0x1d': {
      'es': 'Promedio Intensidad de Dolor',
      'en': 'Average Pain Intensity',
    },
    'z2qr4zqr': {
      'es': 'Actividades',
      'en': 'Activities',
    },
    '47mctlva': {
      'es':
          'En cuanto a las actividades que has podido realizar, tu evolución ha sido',
      'en':
          'As for the activities you have been able to do, your evolution has been',
    },
    'xj2kdvjs': {
      'es': 'Cantidad de actividades realizadas al inicio: ',
      'en': 'Number of activities performed at the beginning:',
    },
    '4hyu3d09': {
      'es': 'Cantidad de actividades realizadas al final: ',
      'en': 'Number of activities completed at the end:',
    },
    '57ykt3p1': {
      'es': 'Evolución de síntomas',
      'en': 'Evolution of symptoms',
    },
    '460cvmas': {
      'es': 'Cantidad síntomas al inicio: ',
      'en': 'Number of symptoms at onset:',
    },
    'hxz29669': {
      'es': 'Cantidad de síntomas al final: ',
      'en': 'Number of symptoms at the end:',
    },
    'gx9uglew': {
      'es': 'Solución que mejor te ha funcionado',
      'en': 'Solution that has worked best for you',
    },
    'cahcncyw': {
      'es': 'Medicamento que mejor te ha funcionado',
      'en': 'Medication that has worked best for you',
    },
    'pwo6tp63': {
      'es': 'Suplemento que mejor te ha funcionado',
      'en': 'Supplement that has worked best for you',
    },
    'cxuwwe35': {
      'es':
          'Cantidad de días que has tenido síntomas por intolerancias alimentarias',
      'en': 'Number of days you have had symptoms due to food intolerances',
    },
    '4iizs6lx': {
      'es': ' % ',
      'en': '%',
    },
    'pm9r7tky': {
      'es': 'de los días',
      'en': 'of the days',
    },
    'dq308fjo': {
      'es': 'Promedio de horas dormidas',
      'en': 'Average hours slept',
    },
    'gbrowyhb': {
      'es': 'Promedio de calidad del sueño',
      'en': 'Average sleep quality',
    },
    'bnnqvmuk': {
      'es': 'Estrategia que mejor ha funcionado para dormir',
      'en': 'Strategy that has worked best for sleeping',
    },
    'b9g0un5i': {
      'es': 'Medicamento que mejor ha funcionado para dormir',
      'en': 'Medication that has worked best for sleep',
    },
    'cahuxd2t': {
      'es': 'Suplemento que mejor ha funcionado para dormir',
      'en': 'Supplement that has worked best for sleep',
    },
    'xkvbqd7k': {
      'es': 'Ver Reporte de intolerancias',
      'en': 'See intolerance report',
    },
    '4qfabyts': {
      'es': 'Generar Reporte PDF',
      'en': 'Generate PDF Report',
    },
    'oi2f1c9x': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // reporteIntolerancias
  {
    'l52912zx': {
      'es': 'Reporte de Intolerancias',
      'en': 'Intolerance Report',
    },
    '6b8pgdtd': {
      'es':
          'A continuación verás un reporte basado en tus diarios de Intolerancias, en el rango de fechas seleccionado.',
      'en':
          'Below you will see a report based on your Intolerance diaries, in the selected date range.',
    },
    'vp2754fx': {
      'es': '7 Días',
      'en': '7 Days',
    },
    'nwsttlwf': {
      'es': '30 Días',
      'en': '30 Days',
    },
    'b5sblil8': {
      'es': 'Personalizado',
      'en': 'Custom',
    },
    'm7co29su': {
      'es': 'Fecha de Inicio',
      'en': 'Start Date',
    },
    '5pxhm0xg': {
      'es': 'Fecha de Fin',
      'en': 'End Date',
    },
    'qgxsymox': {
      'es': 'Generar Reporte',
      'en': 'Generate Report',
    },
    '83stepg4': {
      'es': 'Has creado',
      'en': 'You have created',
    },
    'bpt7kxfg': {
      'es': 'Diarios de intolerancias en el período seleccionado',
      'en': 'Intolerance diaries for the selected period',
    },
    '64lclhio': {
      'es': 'Esta es la comida con la que más veces presentas síntomas:',
      'en': 'This is the food that most often causes symptoms:',
    },
    'j8yyrw0g': {
      'es': 'Los alimentos más consumidos cuando has presentado síntomas son:',
      'en': 'The most commonly consumed foods when you have had symptoms are:',
    },
    '6itobulm': {
      'es': 'Desayuno',
      'en': 'Breakfast',
    },
    'iflohp1o': {
      'es': 'Comida',
      'en': 'Meal',
    },
    'zboy0mlw': {
      'es': 'Cena',
      'en': 'Dinner',
    },
    'apfuphut': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // noticias
  {
    'fsv72nfh': {
      'es': 'Noticias de salud',
      'en': 'Health News',
    },
    'h0k4c6ik': {
      'es': '',
      'en': '',
    },
    'ofo5t1k9': {
      'es': 'Buscador',
      'en': 'Search',
    },
    'to0vrvyf': {
      'es': 'COVID persistente',
      'en': 'Long COVID',
    },
    'eop1hhnm': {
      'es': 'Encefalomielitis Miálgica',
      'en': 'Myalgic Encephalomyelitis',
    },
    '0rsbh20q': {
      'es': 'Fibromialgia',
      'en': 'Fibromyalgia',
    },
    'sj6tawuz': {
      'es': 'Enfermedad Autoinmune',
      'en': 'Autoimmune Disease',
    },
    'soak2ec1': {
      'es': 'Intolerancias alimentarias',
      'en': 'Food intolerances',
    },
    'ej9d96m0': {
      'es': 'Todas',
      'en': 'All',
    },
    'urot6y3q': {
      'es': 'Selecciona una enfermedad...',
      'en': 'Select a disease...',
    },
    'p12b2i8w': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '1v5seaqm': {
      'es': 'Crear Nueva Noticia',
      'en': 'Create New News',
    },
    'l9hvpo75': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // noticiasDetalle
  {
    'xetp3uc6': {
      'es': 'Noticias de salud',
      'en': 'Health News',
    },
    '0758di61': {
      'es': 'Editar Noticia',
      'en': 'Edit News',
    },
    'uew3l588': {
      'es': 'Comentarios',
      'en': 'Comments',
    },
    'h0zstl1u': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // invitarAmigo
  {
    'cf7zdi8t': {
      'es': 'Invitar a Amigos',
      'en': 'Invite Friends',
    },
    'f59elq25': {
      'es': 'Invita a tus amigos a probar Defenergy',
      'en': 'Invite your friends to try Defenergy',
    },
    '1d16x5ud': {
      'es': 'Simplemente envíales un mensaje y comparte el enlace de descarga:',
      'en':
          'Inviting your friends is easy. Just send them a message and share the download link.',
    },
    '5j19cl7r': {
      'es': 'A través de WhatsApp ',
      'en': 'Share the download link via WhatsApp',
    },
    'z1fzqlcr': {
      'es': 'Compartir',
      'en': 'Share',
    },
    'psfqr240': {
      'es': 'O por email',
      'en': 'Send an email to your friend',
    },
    'j1rm87bt': {
      'es': '',
      'en': '',
    },
    '81mnubty': {
      'es': 'email de tu amig@',
      'en': 'your friend\'s email',
    },
    'zx6guqya': {
      'es': 'Enviar email',
      'en': 'Send email',
    },
    'ywresk1d': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // encuestas
  {
    '6pl6eaem': {
      'es': 'Encuestas',
      'en': 'Surveys',
    },
    'kxg6ga1o': {
      'es': 'Tu opinión importa. ',
      'en': 'Your opinion matters.',
    },
    '23byuztd': {
      'es':
          'Completa las encuestas y ayúdanos a mejorar la investigación de tu enfermedad. ¡Gracias por colaborar!',
      'en':
          'Please complete the surveys and help us improve research into your disease. Thank you for your help!',
    },
    '0f12qcnd': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // encuestasFin
  {
    'mduakxj7': {
      'es': 'Encuestas',
      'en': 'Surveys',
    },
    'j978r36k': {
      'es': '¡Gracias por completar la encuesta! ',
      'en': 'Thank you for completing the survey!',
    },
    'v0vm7m9a': {
      'es':
          'Apreciamos tu tiempo y tus respuestas. Tu participación ayudará a mejorar la investigación.',
      'en':
          'We appreciate your time and responses. Your participation will help improve the research.',
    },
    'wtgqux4a': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    'eec2rf34': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // marketplace
  {
    'c39h8gs1': {
      'es': 'Tienda',
      'en': 'Store',
    },
    'egtoim61': {
      'es':
          'Bienvenid@ a nuestra tienda virtual, donde podrás acceder a servicios especializados para tu enfermedad.',
      'en':
          'Welcome to our online store, where you can access specialized services for your illness.',
    },
    'appl6ao5': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // marketplaceProductos
  {
    'lvy0i7x4': {
      'es': 'Aquí puedes ver todos los productos de este categoría.',
      'en': 'Here you can see all the products in this category.',
    },
    'uzjacvvq': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // detalleProducto
  {
    '5b8apks5': {
      'es': 'Detalle del Producto',
      'en': 'Product Detail',
    },
    '3462gfqt': {
      'es': 'Agregar al carrito',
      'en': 'Add to cart',
    },
    'vekdooz1': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // comunidad
  {
    '0k1m0xha': {
      'es': 'Comunidad',
      'en': 'Community',
    },
    'm1frxwl6': {
      'es': 'Reportar Publicación',
      'en': 'Report Post',
    },
    'zko5vzom': {
      'es': 'Crear Publicación',
      'en': 'Create Post',
    },
    'f73syurr': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // comunidad_crea_post
  {
    'gntoaqzi': {
      'es': 'Comunidad',
      'en': 'Community',
    },
    'rkcl89sn': {
      'es': '¿Qué vamos a compartir hoy?',
      'en': 'What are we going to share today?',
    },
    '3f83in3k': {
      'es': '',
      'en': '',
    },
    'e8x9rl65': {
      'es': 'Escribe algo aquí...',
      'en': 'Write something here...',
    },
    'rwop4f3e': {
      'es': 'Click aquí para subir una imagen',
      'en': 'Click here to upload an image',
    },
    '4ldcdw5g': {
      'es': 'Publicar',
      'en': 'Publish',
    },
    'n3ro1v4g': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    '8ldvaiji': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // comunidad_comentarios
  {
    '7r6lgi00': {
      'es': 'Comentarios',
      'en': 'Comments',
    },
    'kmc0p86m': {
      'es': 'Reportar',
      'en': 'Report',
    },
    '0rd2n0oi': {
      'es': 'Eliminar',
      'en': 'Delete',
    },
    'j0a3cr0s': {
      'es': '',
      'en': '',
    },
    'r3ijh2ph': {
      'es': 'Añade un comentario...',
      'en': 'Add a comment...',
    },
    '82swfrzk': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // chat_conversaciones
  {
    '14sy3y7j': {
      'es': 'Conversaciones',
      'en': 'Conversations',
    },
    'indh7wss': {
      'es': 'Invitaciones pendientes de responder',
      'en': 'Invitations pending response',
    },
    'yhfzf3gk': {
      'es': 'Mis Conversaciones',
      'en': 'My Conversations',
    },
    '80v4gc6d': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // chat_mensajes
  {
    'fg4im354': {
      'es': '',
      'en': '',
    },
    'nqifmsaz': {
      'es': 'Mensaje...',
      'en': 'Message...',
    },
    'otc6z788': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // perfil
  {
    's7ybeyq5': {
      'es': 'Mi perfil',
      'en': 'My profile',
    },
    '13nrgc63': {
      'es': 'Ayúdanos a ayudarte',
      'en': 'Help us help you',
    },
    'w96ofowu': {
      'es': 'Ranking de Diarios',
      'en': 'Diaries Ranking',
    },
    'ydrtwcvu': {
      'es': 'Mis Datos Médicos',
      'en': 'My Medical Data',
    },
    'fl2z2vca': {
      'es': 'Mis Medicamentos',
      'en': 'My Medications',
    },
    'ayyg0lfx': {
      'es': 'Mis Asociaciones',
      'en': 'My Associations',
    },
    'y0glqyhm': {
      'es': 'Notificaciones',
      'en': 'Notifications',
    },
    'f8nfskso': {
      'es': 'Idiomas ',
      'en': 'Languages',
    },
    'yxx8zbra': {
      'es': 'Preguntas Frecuentes ',
      'en': 'Frequently Asked Questions',
    },
    'pn02brue': {
      'es': 'Contactar',
      'en': 'Contact',
    },
    '3txr46eb': {
      'es': 'Términos y Condiciones de Uso',
      'en': 'Terms and Conditions of Use',
    },
    'xg8xrf4y': {
      'es': 'Políticas de Investigación',
      'en': 'Research Policies',
    },
    'ujtji1zn': {
      'es': 'Modo Oscuro',
      'en': 'Dark Mode',
    },
    'ffw1w8y2': {
      'es': 'Comunicaciones Comerciales',
      'en': 'Commercial Communications',
    },
    'n4lsuq2z': {
      'es': 'Cerrar Sesión',
      'en': 'Sign Out',
    },
    'nzvjk30k': {
      'es': 'Eliminar tu Cuenta',
      'en': 'Delete your Account',
    },
    '2isziaft': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // perfil_foto
  {
    'ecx3adw3': {
      'es': 'Foto de perfil',
      'en': 'Profile photo',
    },
    'pjl7374m': {
      'es': 'Sube tu imagen o utiliza uno de nuestros avatares',
      'en': 'Upload your image or use one of our avatars',
    },
    'jy0q2fzd': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    'p8z1tnca': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // perfil_idiomas
  {
    'kr1rjxxr': {
      'es': 'Idiomas de la App',
      'en': 'App Languages',
    },
    'fyfiy53c': {
      'es': 'Selecciona el idioma en el que quieres usar Defenergy',
      'en': 'Select the language in which you want to use Defenergy',
    },
    'oerzdgpm': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    '732s5hsx': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // perfil_faqs
  {
    'obtk6apq': {
      'es': 'Preguntas Frecuentes',
      'en': 'Frequently Asked Questions',
    },
    'trbgj2o9': {
      'es': 'Contactar con Defenergy',
      'en': 'Contact Defenergy',
    },
    'rgr05ggs': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // perfil_contacto
  {
    '5s2l1w5j': {
      'es': 'Contacto',
      'en': 'Contact',
    },
    'jdy54b41': {
      'es': 'Por favor completa los siguientes campos',
      'en': 'Please complete the following fields',
    },
    'a06q2ta0': {
      'es': 'Consulta sobre servicios',
      'en': 'Inquiry about services',
    },
    'dngerpi3': {
      'es': 'Información sobre productos',
      'en': 'Product information',
    },
    'g6p034x8': {
      'es': 'Reporte de problemas o errores',
      'en': 'Report problems or errors',
    },
    'av5209au': {
      'es': 'Soporte técnico',
      'en': 'Technical support',
    },
    '5boosjcs': {
      'es': 'Sugerencias o comentarios',
      'en': 'Suggestions or comments',
    },
    'dij4bq3z': {
      'es': 'Indica el motivo...',
      'en': 'Please indicate the reason...',
    },
    'd96khnvf': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '6o8z77rb': {
      'es': 'Escribe aquí tu mensaje...',
      'en': 'Write your message here...',
    },
    'wdaeghtd': {
      'es': 'Email',
      'en': 'E-mail',
    },
    'slzhbkgt': {
      'es': 'Llamada',
      'en': 'Call',
    },
    '50u6a5lq': {
      'es': 'WhatsApp',
      'en': 'WhatsApp',
    },
    'sdezm11u': {
      'es': '¿Cómo prefieres que te respondamos?',
      'en': 'How would you prefer we respond to you?',
    },
    'a8nbptkb': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'w43hukio': {
      'es': 'Móvil',
      'en': 'Mobile',
    },
    'bx9mgmli': {
      'es': '+34 666 666 666',
      'en': '+34 666 666 666',
    },
    'nu1bsix9': {
      'es': 'Contactar',
      'en': 'Contact',
    },
    'wwxtyxiy': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // perfil_notificaciones
  {
    '36r3jtob': {
      'es': 'Notificaciones',
      'en': 'Notifications',
    },
    'nxtlcb1k': {
      'es': 'Recibir Notificaciones',
      'en': 'Receive Notifications',
    },
    '8envhtn1': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // perfil_medicamentos
  {
    'dx3864el': {
      'es': 'Mis medicamentos',
      'en': 'My medications',
    },
    'pfb3alyj': {
      'es':
          'En esta sección podrás guardar todos los medicamentos que utilizas.',
      'en': 'In this section you can save all the medications you use.',
    },
    'nbpns7vr': {
      'es': 'Dósis: ',
      'en': 'Dose:',
    },
    '7k9vas11': {
      'es': 'Posología: ',
      'en': 'Posology:',
    },
    '2ttl0lbb': {
      'es': 'Agregar nuevo medicamento',
      'en': 'Add new medication',
    },
    'tb2ltlj0': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // perfil_datos_personales
  {
    'xvlovfa5': {
      'es': 'Datos Personales',
      'en': 'Personal Data',
    },
    '63ruc9pe': {
      'es': 'Aquí puedes ver y editar tus datos personales',
      'en': 'Here you can view and edit your personal data',
    },
    'einwye8u': {
      'es': 'Nombre',
      'en': 'Name',
    },
    '0ncu3ls1': {
      'es': 'TextField',
      'en': 'TextField',
    },
    'w17i7w10': {
      'es': 'Apellidos',
      'en': 'Surnames',
    },
    'weve7srz': {
      'es': 'TextField',
      'en': 'TextField',
    },
    'wap3gx4m': {
      'es': 'Email',
      'en': 'E-mail',
    },
    'qbx65blw': {
      'es': 'TextField',
      'en': 'TextField',
    },
    'i1y6h9xc': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    'rae0p4gt': {
      'es': 'TextField',
      'en': 'TextField',
    },
    'b9u3pbkh': {
      'es': '************',
      'en': '************',
    },
    '8jeo2qek': {
      'es': 'Fecha de Nacimiento',
      'en': 'Birthdate',
    },
    'y1im40qz': {
      'es': 'TextField',
      'en': 'TextField',
    },
    '4du94ey4': {
      'es': 'Género',
      'en': 'Gender',
    },
    's5te0abl': {
      'es': 'Femenino',
      'en': 'Female',
    },
    '5az6r6mh': {
      'es': 'Masculino',
      'en': 'Male',
    },
    'ehziw3uh': {
      'es': 'Selecciona tu género...',
      'en': 'Select your gender...',
    },
    '7w3oag08': {
      'es': 'Search...',
      'en': 'Search...',
    },
    'j6ozcflr': {
      'es': 'Peso',
      'en': 'Weight',
    },
    'm9jce6tr': {
      'es': 'Selecciona tu peso...',
      'en': 'Select your weight...',
    },
    '0f18ha52': {
      'es': 'Search...',
      'en': 'Search...',
    },
    'ovr1yubg': {
      'es': 'Altura',
      'en': 'Height',
    },
    'xoonqrdi': {
      'es': 'Selecciona tu altura..',
      'en': 'Select your height..',
    },
    'nis2kd95': {
      'es': 'Search...',
      'en': 'Search...',
    },
    '7glb5pk4': {
      'es': 'Fumador',
      'en': 'Smoker',
    },
    'bub0yftt': {
      'es': 'No',
      'en': 'No',
    },
    'd4a9urq0': {
      'es': 'Si',
      'en': 'Yes',
    },
    'pkvdm3fz': {
      'es': '¿eres fumador?',
      'en': 'are you a smoker?',
    },
    'ttkkuiz0': {
      'es': 'Search...',
      'en': 'Search...',
    },
    'yeworq2k': {
      'es': 'Alcohol',
      'en': 'Alcohol',
    },
    'zztv4m75': {
      'es': 'Nada',
      'en': 'Nothing',
    },
    'm9dtizd7': {
      'es': 'Social',
      'en': 'Social',
    },
    'o166vay9': {
      'es': 'Diario',
      'en': 'Diary',
    },
    '74i3y6sh': {
      'es': '¿consumes alcohol?',
      'en': 'do you drink alcohol?',
    },
    '14jj9jet': {
      'es': 'Search...',
      'en': 'Search...',
    },
    'ep5ym9ky': {
      'es': 'Guardar cambios',
      'en': 'Save changes',
    },
    'frlcwg4t': {
      'es': 'Selecciona tu profesión',
      'en': 'Select your profession',
    },
    'sf102dyd': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '4wcvmmf9': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'jnl5ml2r': {
      'es': 'Número de Colegiado (Opcional)',
      'en': 'Membership Number (Optional)',
    },
    'y2ng2er0': {
      'es': 'NIF',
      'en': 'NIF',
    },
    '1gtyxn8j': {
      'es': 'Dirección',
      'en': 'Address',
    },
    'wcw332o9': {
      'es': 'Ciudad',
      'en': 'City',
    },
    '613ct66e': {
      'es': 'Código Postal',
      'en': 'Zip code',
    },
    'jwltkajf': {
      'es': 'Guardar',
      'en': 'Keep',
    },
    'd3ezdsi1': {
      'es': 'CIF',
      'en': 'CIF',
    },
    'a0j7p5yk': {
      'es': 'Dirección',
      'en': 'Address',
    },
    '9nwi1p8l': {
      'es': 'Ciudad',
      'en': 'City',
    },
    'bdslbvd6': {
      'es': 'Código Postal',
      'en': 'Zip code',
    },
    'axs0qr92': {
      'es': 'Email corporativo',
      'en': 'Corporate email',
    },
    'z2k9wda9': {
      'es': 'Guardar',
      'en': 'Save',
    },
    'oy8th9d3': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // perfil_datos_medicos
  {
    'lsxmbfzn': {
      'es': 'Datos Médicos',
      'en': 'Medical Data',
    },
    'yxwl5i70': {
      'es':
          'Aquí puedes modificar tu enfermedad o bien modificar los datos de tu enfermedad actual.',
      'en':
          'Here you can modify your illness or modify the details of your current illness.',
    },
    'phkck18i': {
      'es': 'Cambiar Enfermedad',
      'en': 'Change Disease',
    },
    '4q1nmvb5': {
      'es': '¿En qué año te infectaste con el SARS-CoV-2?',
      'en': 'What year did you get infected with SARS-CoV-2?',
    },
    '3ccxgfp7': {
      'es': '2020',
      'en': '2020',
    },
    'r45ajk4y': {
      'es': '2021',
      'en': '2021',
    },
    'ewpunz84': {
      'es': '2022',
      'en': '2022',
    },
    'zntr5cql': {
      'es': '2023',
      'en': '2023',
    },
    '61id7mlh': {
      'es': '2024',
      'en': '2024',
    },
    'sq44d92b': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'bmpcu2ar': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '7jve3ifv': {
      'es': '¿Cuántas veces te has contagiado COVID? ',
      'en': 'How many times have you had COVID?',
    },
    'abkzlsaw': {
      'es': '1',
      'en': '1',
    },
    'j4b40k94': {
      'es': '2',
      'en': '2',
    },
    '7m7t9foy': {
      'es': '3',
      'en': '3',
    },
    'oz7fe2xy': {
      'es': '4',
      'en': '4',
    },
    'b907w4xk': {
      'es': '5',
      'en': '5',
    },
    'b50j0v5q': {
      'es': '6',
      'en': '6',
    },
    'cq2ey3fd': {
      'es': '7',
      'en': '7',
    },
    'u80wkpym': {
      'es': '8',
      'en': '8',
    },
    '4ze2862i': {
      'es': '9',
      'en': '9',
    },
    '3kdkhfh4': {
      'es': '10',
      'en': '10',
    },
    'hcgclxi4': {
      'es': 'Más de una vez',
      'en': 'More than once',
    },
    'fskwhvjh': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'wd6ruwye': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'h0vtjs2t': {
      'es': '¿Tienes algún familiar directo que tenga COVID persistente?',
      'en':
          'Do you have any immediate family members who have long-term COVID?',
    },
    'awp8ga0g': {
      'es': 'Si',
      'en': 'Yes',
    },
    '63i86vwt': {
      'es': 'No',
      'en': 'No',
    },
    'fhxf2qu6': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'qzehtrqf': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'ut7bps3p': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'hi9iv1o1': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    '2xaw0zk1': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'ywuq4wcj': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'uaxorpro': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'sq071grp': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '717kt5ff': {
      'es': 'Escribe aquí tus otras enfermedades',
      'en': 'Write your other illnesses here',
    },
    'pfyt9gqi': {
      'es': '',
      'en': '',
    },
    '3sc55b32': {
      'es': '¿Tienes alguna enfermedad autoinmune diagnosticada?',
      'en': 'Do you have any diagnosed autoimmune disease?',
    },
    '39nhr29k': {
      'es': 'Si',
      'en': 'Yes',
    },
    'nm442z9v': {
      'es': 'No',
      'en': 'No',
    },
    'aolyf5i5': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'kkwabwjg': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'o15zudum': {
      'es': '¿Cuál?',
      'en': 'Which one?',
    },
    '11ij0idn': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'kf12o5gm': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'keyi26gg': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'rlh3hx03': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'zr9tgsch': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'v7wlzad4': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'ukpzlt9u': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'ofmonvc8': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '6f782r1a': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'f388nvlz': {
      'es':
          '¿Tienes algún familiar directo que tenga alguna enfermedad autoinmune?',
      'en':
          'Do you have any immediate family members who have an autoimmune disease?',
    },
    'qksze73p': {
      'es': 'Si',
      'en': 'Yes',
    },
    'w2g2l3kn': {
      'es': 'No',
      'en': 'No',
    },
    'gxdv5cd6': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'j3w3iudw': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'md8f5t9o': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'iih25grx': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'ia63qiw3': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    's0835c0f': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    't4h3xvxa': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'nm071l2y': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    't1jkfk4h': {
      'es': '¿Tienes diagnóstico de síndrome de intestino irritable?',
      'en': 'Have you been diagnosed with irritable bowel syndrome?',
    },
    '1ef0rjss': {
      'es': 'Si',
      'en': 'Yes',
    },
    'fh2w13b8': {
      'es': 'No',
      'en': 'No',
    },
    'spq7xqyh': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '5g8k8fpn': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'j972k3hp': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'o0qzv12k': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '8ml1qu57': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'abq30g8o': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'wpe0ydjz': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    '1evauc9c': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '9fz2qima': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '31pmd8kx': {
      'es':
          '¿Tienes algún familiar directo que tenga alguna intolerancia alimentaria?',
      'en':
          'Do you have any immediate family members who have a food intolerance?',
    },
    '0j2re4b4': {
      'es': 'Si',
      'en': 'Yes',
    },
    'kkx17vt3': {
      'es': 'No',
      'en': 'No',
    },
    'nd6v6u4m': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'mri3njwd': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '6uxqfsgl': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    '82n2r8oh': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'c7g0qzn6': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    '5l8wiqrg': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'r03g2wmc': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'tnr8ylv5': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'zmc6lraa': {
      'es':
          '1-¿Tienes alguna sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '1-Do you have any diagnosed food sensitivity/intolerance?',
    },
    'f4ugs6to': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'pw1eqe40': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'jn2ydv53': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'abp1xe01': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'i3wrsxb6': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    '3rrjf147': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'vlhgpqqg': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'ymek736z': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'mgz38dtw': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '8dermrb0': {
      'es':
          '2-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '2-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'fedkrvyc': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '8o0rmmkf': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'nstkccz6': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'f1zjvojl': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'cwv0gehf': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'px4pen5c': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'qxh6mbcb': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'pyphc35j': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'fopdfg1z': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'cc2v35nv': {
      'es':
          '3-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '3-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'lebctdwa': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'sohfncwu': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'zy05q96g': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '1x1pxz6o': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'hhh4rkvn': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    '56n1o41k': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    't0lbvsgi': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'u09hgljc': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '5m5o28j6': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'dnqakazb': {
      'es':
          '4-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '4-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'akef78fl': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'y2ly3ltd': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'kt8xc2o8': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '0gwji619': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'ed030f3k': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'l3djrkhi': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'mdlz0hk3': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'axbotenj': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'sff57shu': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'glu87xnz': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    'w15ebuqs': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    'ftkrzjx7': {
      'es': '¿Tras qué evento desarrollaste Fibromialgia?',
      'en': 'After what event did you develop Fibromyalgia?',
    },
    '8szzkqb5': {
      'es': 'No lo sé',
      'en': 'Don\'t know',
    },
    'gca783bu': {
      'es': 'Infección viral o resfriado',
      'en': 'Viral infection or cold',
    },
    'z25b9fsh': {
      'es': 'Tras una cirugía',
      'en': 'After surgery',
    },
    'k6u87oqg': {
      'es': 'Tras un accidente',
      'en': 'After an accident',
    },
    '4n8cqzqi': {
      'es': 'Tras estancia hospitalaria',
      'en': 'After hospital stay',
    },
    'nlqkg7p6': {
      'es': 'Estrés',
      'en': 'Stress',
    },
    'o8lwa67h': {
      'es': 'Postparto',
      'en': 'Postpartum',
    },
    '8lpgspng': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'nyds5l9g': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'jvqm3o7g': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'seigg9sa': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'me0bcnme': {
      'es': 'de 1 a 3 años',
      'en': 'from 1 to 3 years',
    },
    'm1adce5z': {
      'es': 'de 3 a 5 años',
      'en': '3 to 5 years',
    },
    '5fz1yc59': {
      'es': 'más de 5 años',
      'en': 'more than 5 years',
    },
    '8i6nyc6q': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'd6h8twq7': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '72evf7gs': {
      'es': '¿Empeoran tus síntomas tras un leve esfuerzo físico o mental?',
      'en': 'Do your symptoms worsen after mild physical or mental exertion?',
    },
    '4v95haqg': {
      'es': 'Si',
      'en': 'Yes',
    },
    'j2w56vdz': {
      'es': 'No',
      'en': 'No',
    },
    'xsyvf9ht': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'fbfpcofw': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'z3f3m8pw': {
      'es': '¿Tienes algún familiar directo que tenga Fibromialgia?',
      'en': 'Do you have any immediate family members who have Fibromyalgia?',
    },
    'e3u6z3ui': {
      'es': 'Si',
      'en': 'Yes',
    },
    '2nirf1sg': {
      'es': 'No',
      'en': 'No',
    },
    '11rukfy1': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'o97p0wk4': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'mqfnxe0g': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'actwfxbg': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'ksphzjj1': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'beew24fu': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'httemrpr': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'd3e9avrr': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'lcewapo2': {
      'es': 'Escribe aquí tus otras enfermedades',
      'en': 'Write your other illnesses here',
    },
    '20rp78do': {
      'es': '',
      'en': '',
    },
    'ho8j6865': {
      'es': '¿Tienes alguna enfermedad autoinmune diagnosticada?',
      'en': 'Do you have any diagnosed autoimmune disease?',
    },
    '8ddz0y0m': {
      'es': 'Si',
      'en': 'Yes',
    },
    'oz70eqw6': {
      'es': 'No',
      'en': 'No',
    },
    'xxpt6p7w': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'eqahuan7': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '1rceoe1r': {
      'es': '¿Cuál?',
      'en': 'Which?',
    },
    'xbfzc197': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'jla0s1fa': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '58uykapc': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '4yv3fdrr': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'hjrugk8t': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    '1p8y33gd': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'ikxn2bay': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'gpgtxas1': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '6orv4913': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '5qd6m463': {
      'es':
          '¿Tienes algún familiar directo que tenga alguna enfermedad autoinmune?',
      'en':
          'Do you have any immediate family members who have an autoimmune disease?',
    },
    'tjxgffxp': {
      'es': 'Si',
      'en': 'Yes',
    },
    'e674acbw': {
      'es': 'No',
      'en': 'No',
    },
    'vpr38ojj': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'xj6iqljw': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'gt8gxr5d': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'fw1va1pz': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'ead1447y': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'y74ptb03': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'w4ww6oxm': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'qeyaj1cm': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'e1lmjsz8': {
      'es': '¿Tienes diagnóstico de síndrome de intestino irritable?',
      'en': 'Have you been diagnosed with irritable bowel syndrome?',
    },
    'epwn3alw': {
      'es': 'Si',
      'en': 'Yes',
    },
    'w6dsmedv': {
      'es': 'No',
      'en': 'No',
    },
    '946extpc': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'lbcd9c2p': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '8jr67nak': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '68v7tvm5': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '6nktoq8n': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'n0vjxb6w': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    '3hya9zaj': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    '0s5vxtti': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'tx2y0joz': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'vk5ploqs': {
      'es':
          '¿Tienes algún familiar directo que tenga alguna intolerancia alimentaria?',
      'en':
          'Do you have any immediate family members who have a food intolerance?',
    },
    '4rn9he2n': {
      'es': 'Si',
      'en': 'Yes',
    },
    'urcmhm2z': {
      'es': 'No',
      'en': 'No',
    },
    'n6hcm7uu': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'nxmprd84': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'f3h5pxsl': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'nvcv58g4': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'aiy2tcwk': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'xi2678hj': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'rhutikch': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'mc2f5o5s': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'haee8lwl': {
      'es':
          '1-¿Tienes alguna sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '1-Do you have any diagnosed food sensitivity/intolerance?',
    },
    'cft8hmxn': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '0vpbu1ld': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'dmfmmm55': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'cw6kil7g': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'u5s817ql': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'b1tfair1': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'c6vhgqpo': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'quszvimk': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '2r81l0tc': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'eg1uifu5': {
      'es':
          '2-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '2-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    '1nmvb8r5': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '8be0nhbw': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'lqx9hy0b': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'ulyncl8q': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'p7tzlqby': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'x1dpptd6': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    '7j33hddd': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    '9gmscuwm': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'tjmyclrk': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'ue4gs5lt': {
      'es':
          '3-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '3-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'eg6rcpdp': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '7e0314ya': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'r7og8i7j': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '6w1iulsf': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'rnewpnfa': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'q0uphoh0': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'dfdu9ypg': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    '98dfxjng': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ib8dhxbv': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '8ibq27hz': {
      'es':
          '4-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '4-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'v10n4b3i': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '2z91qq88': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'jwb1jggg': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '510m6u82': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '4yr91f2i': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    '7e0e1cmr': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'lb25ha0n': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'lxiqe8lh': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '23ea33uv': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'oxozcwl1': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    'ndqidfgg': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    '4tbbd4k0': {
      'es': '¿Con qué criterios te han diagnosticado?',
      'en': 'What criteria have you been diagnosed with?',
    },
    'o8zabrzm': {
      'es': 'No lo sé pero tengo el diagnóstico',
      'en': 'I don\'t know but I have the diagnosis',
    },
    'dobm6f4a': {
      'es': 'Criterios de consenso canadienses (CCC)',
      'en': 'Canadian Consensus Criteria (CCC)',
    },
    '40xaaw39': {
      'es': 'Criterios de Fukuda',
      'en': 'Fukuda criteria',
    },
    'm26olj6w': {
      'es': 'Criterios de consenso internacional (ICC)',
      'en': 'International Consensus Criteria (ICC)',
    },
    'tpxmevwo': {
      'es':
          'Criterios de enfermedad de intolerancia al esfuerzo sistémico (SEID)',
      'en': 'Systemic exertion intolerance disease (SEID) criteria',
    },
    'oo6835h6': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'pdk7gy5c': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'judjhkcl': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '75wbty3j': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'husgo1hr': {
      'es': 'de 1 a 3 años',
      'en': 'from 1 to 3 years',
    },
    '7oij9mlf': {
      'es': 'de 3 a 5 años',
      'en': '3 to 5 years',
    },
    'dr65ks08': {
      'es': 'más de 5 años',
      'en': 'more than 5 years',
    },
    '3nymbbxe': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ybab37tw': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'f77d10bo': {
      'es': '¿Tras qué evento desarrollaste EM/SFC?',
      'en': 'After what event did you develop ME/CFS?',
    },
    'svgyvcmm': {
      'es': 'No lo sé',
      'en': 'Don\'t know',
    },
    'hvv0vwbj': {
      'es': 'Infección viral o resfriado',
      'en': 'Viral infection or cold',
    },
    'e6ps8mda': {
      'es': 'Tras una cirugía',
      'en': 'After surgery',
    },
    'pc2kh79y': {
      'es': 'Tras un accidente',
      'en': 'After an accident',
    },
    '93vftmr8': {
      'es': 'Estrés',
      'en': 'Stress',
    },
    '27lshgo3': {
      'es': 'Postparto',
      'en': 'Postpartum',
    },
    'zamam5pu': {
      'es': 'Medicación',
      'en': 'Medication',
    },
    'xkc9asdm': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'drws3sah': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'mrjdke6n': {
      'es': '¿Tienes algún familiar directo que tenga EM/SFC?',
      'en': 'Do you have any immediate family members who have ME/CFS?',
    },
    '8o3qjctf': {
      'es': 'Si',
      'en': 'Yes',
    },
    'ko7lcb8e': {
      'es': 'No',
      'en': 'No',
    },
    'g98o1g8g': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '1r0a8no2': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '80pw23g0': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    '8nehv13z': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'xa5w4g4u': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    '7gv3uxe9': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'dgq1qk8y': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'no4fx0xs': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '978b2yfs': {
      'es': 'Escribe aquí tus otras enfermedades',
      'en': 'Write your other illnesses here',
    },
    'kh24sr0t': {
      'es': '',
      'en': '',
    },
    '6ahorh1m': {
      'es': '¿Tienes alguna enfermedad autoinmune diagnosticada?',
      'en': 'Do you have any diagnosed autoimmune disease?',
    },
    'ar0s1dba': {
      'es': 'Si',
      'en': 'Yes',
    },
    'z558e5gj': {
      'es': 'No',
      'en': 'No',
    },
    'l6sordpe': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'gbdin27f': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'rbitsp8h': {
      'es': '¿Cuál?',
      'en': 'Which one?',
    },
    'k8ednb48': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '7b7vo6ip': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'hsvdmsf8': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'c8g2p5l1': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'z3mf8wnq': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'jf0mpdk4': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'p7ytlwag': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'xkcjnn3x': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'semh3q8f': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '5e17dcab': {
      'es':
          '¿Tienes algún familiar directo que tenga alguna enfermedad autoinmune?',
      'en':
          'Do you have any immediate family members who have an autoimmune disease?',
    },
    '9d4kpyfu': {
      'es': 'Si',
      'en': 'Yes',
    },
    'n6iachga': {
      'es': 'No',
      'en': 'No',
    },
    'ctwca1qf': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'g56mz428': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'i9vrmvos': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'suu20dfp': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    't48m1sap': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'lw7ecdm3': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'neff3m35': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '265kg9dz': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '2dwaamyw': {
      'es': '¿Tienes diagnóstico de síndrome de intestino irritable?',
      'en': 'Have you been diagnosed with irritable bowel syndrome?',
    },
    'q7sz8dhb': {
      'es': 'Si',
      'en': 'Yes',
    },
    'e27vie5x': {
      'es': 'No',
      'en': 'No',
    },
    '6mp79v6j': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'n9zaoi1i': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '866ygc92': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'gewdb5ip': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'mec30hf6': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    '3zykcqy8': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'm1dk60pc': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'jmviqgpi': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'prlmdim0': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '0gs20t7w': {
      'es':
          '¿Tienes algún familiar directo que tenga alguna intolerancia alimentaria?',
      'en':
          'Do you have any immediate family members who have a food intolerance?',
    },
    'ozvivxno': {
      'es': 'Si',
      'en': 'Yes',
    },
    'pnxtdnup': {
      'es': 'No',
      'en': 'No',
    },
    'b0k7vzcz': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'sas10wj0': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'i2m4lq7v': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    '5z1jiilp': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'vfn9fmnd': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    '3gihs2vz': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'keziumzh': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '86fg20mz': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'wj5mybmk': {
      'es':
          '1-¿Tienes alguna sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '1-Do you have any diagnosed food sensitivity/intolerance?',
    },
    'mrkm7tkb': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'eys9e2hk': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'c7jbg3ng': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'wkm7qvqe': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'x3f13f1r': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'ute6cwqe': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    '9j6z0eo6': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'kl11feib': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'g5jabuwi': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'w9o2chvv': {
      'es':
          '2-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '2-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    '33y1eka0': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '2j2tf1tw': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'c549y9xe': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'lgfaan24': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'j5j97vwl': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    '7srgb0hv': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'w15hbej4': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'hea5ybwl': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ee7x8v2b': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '3i6z2xd1': {
      'es':
          '3-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '3-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'hrt0sygh': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'okq5c1ey': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'pguajckw': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'uxglvavl': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '4rhwvuk3': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    '81kziskh': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    '6436nw47': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'cs3rv9wu': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'xi8f7u6n': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    't755osj1': {
      'es':
          '4-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '4-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'ycvnfoi3': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '9uzmcu1x': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'a4n7f4ex': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'fiq683hp': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '4ryw1aqx': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'qvquo9cx': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'oop3py03': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'mnkwkjnh': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '3eagc9mz': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '5zt6ou2r': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    'm8h0a82u': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    'b1dd6evs': {
      'es': '¿Qué enfermedad tienes diagnosticada?',
      'en': 'What disease have you been diagnosed with?',
    },
    'alforo4k': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'qeqz84ky': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'w3px9clk': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '4la33e5y': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'wxxdxid9': {
      'es': 'de 1 a 3 años',
      'en': 'from 1 to 3 years',
    },
    'aaw3jcoy': {
      'es': 'de 3 a 5 años',
      'en': '3 to 5 years',
    },
    'xwfd6njh': {
      'es': 'más de 5 años',
      'en': 'more than 5 years',
    },
    'bko4qp3c': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'xadnbcri': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '2j23c0z8': {
      'es': '¿Tienes algún familiar directo que tenga la misma enfermedad?',
      'en':
          'Do you have any immediate family members who have the same disease?',
    },
    'ok3f1adx': {
      'es': 'Si',
      'en': 'Yes',
    },
    '0gbvjlp4': {
      'es': 'No',
      'en': 'No',
    },
    'aqodu97x': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '1zcyrwlg': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'so4pg8zx': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'wys2h69r': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'z5slij0y': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'dcbthgbq': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    's37nq4ck': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '9ucvxoq2': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'gy2d7mak': {
      'es': 'Escribe aquí tus otras enfermedades',
      'en': 'Write your other illnesses here',
    },
    'm9dxwzhd': {
      'es': '',
      'en': '',
    },
    'qd32a8ln': {
      'es': '¿Tienes alguna enfermedad autoinmune diagnosticada?',
      'en': 'Do you have any diagnosed autoimmune disease?',
    },
    't795dvqb': {
      'es': 'Si',
      'en': 'Yes',
    },
    'ppqfm5om': {
      'es': 'No',
      'en': 'No',
    },
    '19tifr6z': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'kr5kmn1p': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'bm5njpgv': {
      'es': '¿Cuál?',
      'en': 'Which one?',
    },
    '0wg7owwk': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'mmr3mner': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'epdwe48l': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'gz776loc': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '79we64bd': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'rombi3ar': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'kz4ncop8': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'hdt8ceu5': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'yr5s18l4': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'xpfthwhg': {
      'es':
          '¿Tienes algún familiar directo que tenga alguna enfermedad autoinmune?',
      'en':
          'Do you have any immediate family members who have an autoimmune disease?',
    },
    '5ra3vuze': {
      'es': 'Si',
      'en': 'Yes',
    },
    'q5x04mou': {
      'es': 'No',
      'en': 'No',
    },
    'r23dyzsa': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ba5awkdt': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'y5feqfep': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'sqmmwa2j': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'zm5gvv3g': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'wo0flb9a': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'e6pro3g2': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'vf61egic': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'jji94x7k': {
      'es': '¿Tienes diagnóstico de síndrome de intestino irritable?',
      'en': 'Have you been diagnosed with irritable bowel syndrome?',
    },
    'ewrgam11': {
      'es': 'Si',
      'en': 'Yes',
    },
    'm2lm2h9m': {
      'es': 'No',
      'en': 'No',
    },
    's7uw4i9d': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'tgljv70z': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '19d921m8': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '3pm7aagh': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'q7g9eono': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'cn7ca4l1': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'bk0myv2m': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    '0ze730n5': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '7b07a9ok': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '8pyr3h7g': {
      'es':
          '¿Tienes algún familiar directo que tenga alguna intolerancia alimentaria?',
      'en':
          'Do you have any immediate family members who have a food intolerance?',
    },
    '3hy24s25': {
      'es': 'Si',
      'en': 'Yes',
    },
    '8q4til39': {
      'es': 'No',
      'en': 'No',
    },
    'f3tsnp6z': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'euxy1yib': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'yn1er61j': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'h3q170vc': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'f17scffu': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'i75dnc0g': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'dwwzomyb': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '0u5fldcw': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'ht4a3cgu': {
      'es':
          '1-¿Tienes alguna sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '1-Do you have any diagnosed food sensitivity/intolerance?',
    },
    'swvpooi3': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    's37iilr3': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '7t05s1a4': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'jhri5o5j': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '12lev0sk': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'bm8yiem5': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'iv4m861h': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'n0f0g5qn': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ee4g7q7z': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'f1mnu5q4': {
      'es':
          '2-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '2-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'vf50ks9f': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '2he0drbf': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'm11awndl': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'eq9r4j2h': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'kw42lt9l': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'au9jti4o': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'yaelu9m8': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'oumf4puy': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'rn3tnphq': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'ww96l3h2': {
      'es':
          '3-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '3-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'a3fjwaxx': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '4fzzg1z0': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'fhxhpprz': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '19hl0ilh': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'riaxv9g0': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'k103diqx': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    '3ikuyy0n': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    '2o9tupl2': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '297o4gg0': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '53umnrj1': {
      'es':
          '4-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '4-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'knz228v9': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'uzx0drsf': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'wt1k1bjt': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '61kbm1nc': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '42uiren4': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'zl3o8hg2': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'hujkujfv': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'noom7xai': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'jn06emb8': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'qvtmkw7f': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    '2cc8c2kp': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    'nypajel1': {
      'es': '¿Tienes diagnóstico de síndrome de intestino irritable?',
      'en': 'Have you been diagnosed with irritable bowel syndrome?',
    },
    'tbp1xekh': {
      'es': 'Si',
      'en': 'Yes',
    },
    'mhyusxp8': {
      'es': 'No',
      'en': 'No',
    },
    'ftxmzhwa': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'zop49f10': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '39bbzsfl': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '6g6lo4fc': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'aafpb1qu': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'anw8e8hp': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    '07fsogqt': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'ta5uncoj': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '8svd6w1j': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'vb47bgb2': {
      'es':
          '¿Tienes algún familiar directo que tenga alguna intolerancia alimentaria?',
      'en':
          'Do you have any immediate family members who have a food intolerance?',
    },
    '4rb65ojy': {
      'es': 'Si',
      'en': 'Yes',
    },
    'lewvcvgp': {
      'es': 'No',
      'en': 'No',
    },
    '7qmkl4ss': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'bvcm2egs': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '0qlfhh2z': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'uoe2tr4d': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    '7zdciint': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'fr6m4ved': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'bsc0krrm': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'bhbcygai': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'om19psar': {
      'es':
          '1-¿Tienes alguna sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '1-Do you have any diagnosed food sensitivity/intolerance?',
    },
    'ku7ywr6j': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'dvh1y7rp': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'c7026zmw': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'eatte6ws': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'nrs2fa47': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'g6y0qskl': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'cj5obsk9': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'il3gdewb': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'n81fpk6e': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '1efw8j5d': {
      'es':
          '2-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '2-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    '89a47ugf': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'vbqmueg4': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'xv2x4pcl': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '4u6ix6cc': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '8q38cx95': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'htpgwamn': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'z532yr6a': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'ga445qdy': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'zfhbxati': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'fklgbeib': {
      'es':
          '3-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '3-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    've77jur8': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'foxzndo1': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'ojs71i9z': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'kfqhdip2': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'i4ljq0lp': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    '2ox7f2a9': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    '98ytbqq1': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'aqvy2sfh': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'llyww1bu': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'e0jrjxy8': {
      'es':
          '4-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '4-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'gdd8csr2': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'oenak06a': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'mnpjnnvd': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '8uawfdow': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'v9ddooez': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'm4rp45yh': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'hjx4sg3i': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'r52qbcnj': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'uh8qisyu': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'rrtr44f9': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    'krtaen2i': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    'n90qj2pp': {
      'es': '¿En qué año te infectaste con el SARS-CoV-2?',
      'en': 'What year did you get infected with SARS-CoV-2?',
    },
    '261ayoso': {
      'es': '2020',
      'en': '2020',
    },
    'ih4fyp3k': {
      'es': '2021',
      'en': '2021',
    },
    'bzpscndl': {
      'es': '2022',
      'en': '2022',
    },
    'ucvq60bo': {
      'es': '2023',
      'en': '2023',
    },
    'pcgvtyoo': {
      'es': '2024',
      'en': '2024',
    },
    '50mptb4k': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '2z2p3frd': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '63zum1tv': {
      'es': '¿Cuántas veces te has contagiado con el SARS-CoV-2?',
      'en': 'How many times have you been infected with SARS-CoV-2?',
    },
    '1g5stbuy': {
      'es': '1',
      'en': '1',
    },
    '2phj8hmy': {
      'es': '2',
      'en': '2',
    },
    'icj29b7d': {
      'es': '3',
      'en': '3',
    },
    'uojpf7re': {
      'es': '4',
      'en': '4',
    },
    'dbrp0vu3': {
      'es': '5',
      'en': '5',
    },
    'jtniuh8o': {
      'es': '6',
      'en': '6',
    },
    '4dkygd7w': {
      'es': '7',
      'en': '7',
    },
    '74qfmih7': {
      'es': '8',
      'en': '8',
    },
    'jjobj8ik': {
      'es': '9',
      'en': '9',
    },
    '2qdod1io': {
      'es': '10',
      'en': '10',
    },
    'rgxh1zgg': {
      'es': 'Más de una vez',
      'en': 'More than once',
    },
    'qvejs77v': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'xnirapde': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'hazdj080': {
      'es': '¿Tienes algún familiar directo que tenga COVID persistente?',
      'en':
          'Do you have any immediate family members who have long-term COVID?',
    },
    'fi6jno00': {
      'es': 'Si',
      'en': 'Yes',
    },
    'prxh1wqi': {
      'es': 'No',
      'en': 'No',
    },
    'rv5oy0qd': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'r4of5zxa': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'aq0niwij': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'zwibf1ed': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    '3jm3e26h': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    '7acbugj7': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'lztezyu1': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'jfwjh214': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'cirb71ws': {
      'es': '¿Con qué criterios te han diagnosticado EM/SFC?',
      'en': 'What criteria have you been diagnosed with ME/CFS?',
    },
    '3ftexn6o': {
      'es': 'No lo sé pero tengo el diagnóstico',
      'en': 'I don\'t know but I have the diagnosis',
    },
    'uukfy7yy': {
      'es': 'Criterios de consenso canadienses (CCC)',
      'en': 'Canadian Consensus Criteria (CCC)',
    },
    '9hktkuwg': {
      'es': 'Criterios de Fukuda',
      'en': 'Fukuda criteria',
    },
    'hw37vdkj': {
      'es': 'Criterios de consenso internacional (ICC)',
      'en': 'International Consensus Criteria (ICC)',
    },
    '851z1is9': {
      'es':
          'Criterios de enfermedad de intolerancia al esfuerzo sistémico (SEID)',
      'en': 'Systemic exertion intolerance disease (SEID) criteria',
    },
    'qgn1t59j': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'mnakivij': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'exovph4o': {
      'es': '¿Cuánto tiempo llevas diagnosticado EM/SFC?',
      'en': 'How long have you been diagnosed with ME/CFS?',
    },
    '5tsnl41n': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'frym1bne': {
      'es': 'de 1 a 3 años',
      'en': 'from 1 to 3 years',
    },
    'b6aqkfd0': {
      'es': 'de 3 a 5 años',
      'en': '3 to 5 years',
    },
    '65bx8zeo': {
      'es': 'más de 5 años',
      'en': 'more than 5 years',
    },
    'fe2qk013': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '54f74oo3': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'f8g26vro': {
      'es': '¿Tras qué evento desarrollaste EM/SFC?',
      'en': 'After what event did you develop ME/CFS?',
    },
    '0c6b7vfq': {
      'es': 'No lo sé',
      'en': 'Don\'t know',
    },
    'vjbgmbjm': {
      'es': 'Infección viral o resfriado',
      'en': 'Viral infection or cold',
    },
    'aht0f9vh': {
      'es': 'Tras una cirugía',
      'en': 'After surgery',
    },
    'nha8w4dy': {
      'es': 'Tras un accidente',
      'en': 'After an accident',
    },
    'xvegy6gu': {
      'es': 'Estrés',
      'en': 'Stress',
    },
    'vmwyt191': {
      'es': 'Postparto',
      'en': 'Postpartum',
    },
    '9648ael3': {
      'es': 'Medicación',
      'en': 'Medication',
    },
    'qz153dtt': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '16ay4zhs': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'aib9mlb4': {
      'es': '¿Tienes algún familiar directo que tenga EM/SFC?',
      'en': 'Do you have any immediate family members who have ME/CFS?',
    },
    'hjbcyirh': {
      'es': 'Si',
      'en': 'Yes',
    },
    'glcguai1': {
      'es': 'No',
      'en': 'No',
    },
    '8gks6x0a': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'd0aroesn': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'dk9sr7pe': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'x8i19xqr': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'dyy91i1c': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'frjy3io1': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'l6t9060s': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'jhzoewcm': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'kj9s1xpm': {
      'es': 'Escribe aquí tus otras enfermedades',
      'en': 'Write your other illnesses here',
    },
    'h0ts0e76': {
      'es': '',
      'en': '',
    },
    'yt0xx4kq': {
      'es': '¿Tienes alguna enfermedad autoinmune diagnosticada?',
      'en': 'Do you have any diagnosed autoimmune disease?',
    },
    'ucmrbum9': {
      'es': 'Si',
      'en': 'Yes',
    },
    'wcnwmc3w': {
      'es': 'No',
      'en': 'No',
    },
    '3vehhjne': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'x40ctoxt': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '6eaco1ui': {
      'es': '¿Cuál?',
      'en': 'Which one?',
    },
    't91g83tl': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ze95lvbj': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'yg7e1snz': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '98etke0m': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '488yft3o': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    '9157nex9': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'x4j3qa93': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'jlm8gr3v': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'nfaq7qg2': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'cn1ufcgf': {
      'es':
          '¿Tienes algún familiar directo que tenga alguna enfermedad autoinmune?',
      'en':
          'Do you have any immediate family members who have an autoimmune disease?',
    },
    'std95ee4': {
      'es': 'Si',
      'en': 'Yes',
    },
    'gtzdcgf9': {
      'es': 'No',
      'en': 'No',
    },
    'eonm6dbg': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'el6zsqfx': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '1hk93ik8': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    '9bocs1w7': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'yhd5d9yt': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'az9uyexe': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'igwct9mh': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'hzfdnbpa': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'ekulf84u': {
      'es': '¿Tienes diagnóstico de síndrome de intestino irritable?',
      'en': 'Have you been diagnosed with irritable bowel syndrome?',
    },
    'jofn303s': {
      'es': 'Si',
      'en': 'Yes',
    },
    'e2l70jpp': {
      'es': 'No',
      'en': 'No',
    },
    'ylsa250c': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '753ieloe': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'st61nyyf': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '99ewncq3': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '0rj2qj3z': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'w9s7auvs': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'j9cqp96r': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'vj9bs1iv': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '3itx5dmo': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'gkjks9yi': {
      'es':
          '¿Tienes algún familiar directo que tenga alguna intolerancia alimentaria?',
      'en':
          'Do you have any immediate family members who have a food intolerance?',
    },
    'fcil6wcg': {
      'es': 'Si',
      'en': 'Yes',
    },
    'xn48oxlm': {
      'es': 'No',
      'en': 'No',
    },
    'jro0ny3w': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'hg8ypiky': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'j1tz0gce': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'eo95qjp5': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    '18zw2e2q': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'e3ogpd7b': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'tzwyytjx': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'njz38r29': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '3hkszbln': {
      'es':
          '1-¿Tienes alguna sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '1-Do you have any diagnosed food sensitivity/intolerance?',
    },
    'vk5czidh': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'yfna9oln': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'nlgugy14': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'zmztzl9w': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'soh3kmsz': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'v74tqfr1': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'uolwdi4j': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'yfdxnblq': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'zh5lbdgt': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'w7zzb433': {
      'es':
          '2-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '2-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'crvztisj': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'mi684c7t': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'p4o7xlcw': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'pm43wcz2': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'mg1c6kba': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'nbretae2': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    '5t60c5xt': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    '6pbhwacs': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '0el9xubv': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'bakxjug1': {
      'es':
          '3-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '3-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'offamkk8': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '8vf1ai7a': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'gngmqcv8': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'otvmgdg1': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '9j1bhe1m': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'nl99lmd3': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'ynlnvnfa': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'ngg3oxc2': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'tatedmet': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'ure321m1': {
      'es':
          '4-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '4-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'ix5g54qz': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'hyz2y4gn': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '082l16s3': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'yniqtn1n': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'rhmdq3df': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'xvwxrh7i': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'reo04l68': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'zmghpv53': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'c1hcn2tn': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'z6ogjht8': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    'qzzjqix0': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    '7aqzpyoj': {
      'es': '¿Tras qué evento desarrollaste Fibromialgia?',
      'en': 'After what event did you develop Fibromyalgia?',
    },
    'rq5zrjw5': {
      'es': 'No lo sé',
      'en': 'Don\'t know',
    },
    'r1blfnx3': {
      'es': 'Infección viral o resfriado',
      'en': 'Viral infection or cold',
    },
    'ybu68v7v': {
      'es': 'Tras una cirugía',
      'en': 'After surgery',
    },
    'ki4ye0xo': {
      'es': 'Tras un accidente',
      'en': 'After an accident',
    },
    'gljcoh84': {
      'es': 'Tras estancia hospitalaria',
      'en': 'After hospital stay',
    },
    'quk6r6xl': {
      'es': 'Estrés',
      'en': 'Stress',
    },
    'uqd5qb5v': {
      'es': 'Postparto',
      'en': 'Postpartum',
    },
    'ti35eg1y': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'wehzhzqi': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'jg1gqy3w': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '11gdxzrf': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'rinc7chy': {
      'es': 'de 1 a 3 años',
      'en': 'from 1 to 3 years',
    },
    '4gllmzno': {
      'es': 'de 3 a 5 años',
      'en': '3 to 5 years',
    },
    'ug2lvmmk': {
      'es': 'más de 5 años',
      'en': 'more than 5 years',
    },
    '2m94cqfv': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ff3m05dl': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'sp36g35m': {
      'es': '¿Empeoran tus síntomas tras un leve esfuerzo físico o mental?',
      'en': 'Do your symptoms worsen after mild physical or mental exertion?',
    },
    'qwc9ggyh': {
      'es': 'Si',
      'en': 'Yes',
    },
    '3nncrk2f': {
      'es': 'No',
      'en': 'No',
    },
    '0f4r00h7': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'm8jjgcwv': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '9u05bj4k': {
      'es': '¿Tienes algún familiar directo que tenga Fibromialgia?',
      'en': 'Do you have any immediate family members who have Fibromyalgia?',
    },
    '3db2noi9': {
      'es': 'Si',
      'en': 'Yes',
    },
    'wl5apkhh': {
      'es': 'No',
      'en': 'No',
    },
    '58bzxc75': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'td5r1jl6': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'uujogvv0': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    '3rtw8oim': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'rjgqygt7': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'lmxwed7y': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'srz75znt': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'uvu5t97y': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'n1lapoys': {
      'es': '¿Con qué criterios te han diagnosticado?',
      'en': 'What criteria have you been diagnosed with?',
    },
    'gb0euomc': {
      'es': 'No lo sé pero tengo el diagnóstico',
      'en': 'I don\'t know but I have the diagnosis',
    },
    '9cxav81j': {
      'es': 'Criterios de consenso canadienses (CCC)',
      'en': 'Canadian Consensus Criteria (CCC)',
    },
    'gkso9vej': {
      'es': 'Criterios de Fukuda',
      'en': 'Fukuda criteria',
    },
    'p4vy4w3m': {
      'es': 'Criterios de consenso internacional (ICC)',
      'en': 'International Consensus Criteria (ICC)',
    },
    'sptzb5pc': {
      'es':
          'Criterios de enfermedad de intolerancia al esfuerzo sistémico (SEID)',
      'en': 'Systemic exertion intolerance disease (SEID) criteria',
    },
    'h8p6ms43': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '3pwizbfn': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '1wwxmfkr': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '0n01f3a7': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '1t6zpzal': {
      'es': 'de 1 a 3 años',
      'en': 'from 1 to 3 years',
    },
    'abo6q85v': {
      'es': 'de 3 a 5 años',
      'en': '3 to 5 years',
    },
    'xqssuy8p': {
      'es': 'más de 5 años',
      'en': 'more than 5 years',
    },
    '0qrlr1cr': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '3ie423dk': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'vxg130in': {
      'es': '¿Tras qué evento desarrollaste EM/SFC?',
      'en': 'After what event did you develop ME/CFS?',
    },
    'eiqh6a7f': {
      'es': 'No lo sé',
      'en': 'Don\'t know',
    },
    'u91mbagr': {
      'es': 'Infección viral o resfriado',
      'en': 'Viral infection or cold',
    },
    '2pda5o2m': {
      'es': 'Tras una cirugía',
      'en': 'After surgery',
    },
    'yxbumje5': {
      'es': 'Tras un accidente',
      'en': 'After an accident',
    },
    'f3owc9hf': {
      'es': 'Estrés',
      'en': 'Stress',
    },
    '1w3wwkli': {
      'es': 'Postparto',
      'en': 'Postpartum',
    },
    'vpek5one': {
      'es': 'Medicación',
      'en': 'Medication',
    },
    'p342k043': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '4cps0vdm': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'dfq8g2v2': {
      'es': '¿Tienes algún familiar directo que tenga EM/SFC?',
      'en': 'Do you have any immediate family members who have ME/CFS?',
    },
    '3osmv47a': {
      'es': 'Si',
      'en': 'Yes',
    },
    'x62iu883': {
      'es': 'No',
      'en': 'No',
    },
    'vgixgen1': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'p6wruukf': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'aptso0p9': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'whbuyk52': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'ynr0k189': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    '0fwrjlha': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'pxjp6501': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'i2m95g9c': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'xqbzxakj': {
      'es': 'Escribe aquí tus otras enfermedades',
      'en': 'Write your other illnesses here',
    },
    'fwmnbldw': {
      'es': '',
      'en': '',
    },
    'z84u17qy': {
      'es': '¿Tienes alguna enfermedad autoinmune diagnosticada?',
      'en': 'Do you have any diagnosed autoimmune disease?',
    },
    'bkmf6pxl': {
      'es': 'Si',
      'en': 'Yes',
    },
    'ajwxaqp9': {
      'es': 'No',
      'en': 'No',
    },
    '5manhyae': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'y344xgjm': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'lgxz5hmt': {
      'es': '¿Cuál?',
      'en': 'Which?',
    },
    '2rw7eom8': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ulfhwttw': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'o0skoinr': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'ehmnkors': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '9ohqbg9l': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'i83mct68': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    '73lf9f8e': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    '7xsr2x3d': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'y20ove9p': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '1a38u5a7': {
      'es':
          '¿Tienes algún familiar directo que tenga alguna enfermedad autoinmune?',
      'en':
          'Do you have any immediate family members who have an autoimmune disease?',
    },
    'd3cqvz5b': {
      'es': 'Si',
      'en': 'Yes',
    },
    'qtqcgzxx': {
      'es': 'No',
      'en': 'No',
    },
    'no18oe2p': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ajjo61ou': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '8xr6d31n': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'b5xpxu5r': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'vhd30pdu': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'h6zabe2o': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'g72rxos9': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '4d1oz9i8': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'wgym5que': {
      'es': '¿Tienes diagnóstico de síndrome de intestino irritable?',
      'en': 'Have you been diagnosed with irritable bowel syndrome?',
    },
    'ladz24nd': {
      'es': 'Si',
      'en': 'Yes',
    },
    'rf3yadwk': {
      'es': 'No',
      'en': 'No',
    },
    'rvkwe93x': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'hf6jgei4': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'l4n7wtul': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'xp0ibyxc': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '1e4x0dtc': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'qjavxg0b': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'm31q8lif': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    '05gm9zmp': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'cnyqdsts': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'mvx2lhss': {
      'es':
          '¿Tienes algún familiar directo que tenga alguna intolerancia alimentaria?',
      'en':
          'Do you have any immediate family members who have a food intolerance?',
    },
    '9922vz7h': {
      'es': 'Si',
      'en': 'Yes',
    },
    'wbtowrpm': {
      'es': 'No',
      'en': 'No',
    },
    's5drg3bq': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '59ux2erj': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'kn52tjf7': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'e006vr59': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'aa6pg8f0': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'egwiuk0o': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'r2hba7vs': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'uhe1zwlh': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '18tmzjpr': {
      'es':
          '1-¿Tienes alguna sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '1-Do you have any diagnosed food sensitivity/intolerance?',
    },
    'og62946y': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'fgnsch0z': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'zknhwc3v': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'u36l0ams': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'dg3fmdaz': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'omz7nkyi': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'y7r84a60': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    '34enpe0x': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'x58o2n2x': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'ag846xoj': {
      'es':
          '2-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '2-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'qi0ha5mc': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ly1scul6': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '80v3hyab': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'anj50btb': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '6amu2eqr': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'tywkcisz': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    '99p8167v': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'k7ujhpzk': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'amza40hv': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'z2wqmrvz': {
      'es':
          '3-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '3-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'itdwnbhs': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'z3fwtdg6': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'xqk5qmu5': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '1astoei5': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'kwliylqj': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    '6xfkr6zq': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'zkj0gtuz': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    '6wpyckgp': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '0pybdg5m': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'vbjq1f6m': {
      'es':
          '4-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '4-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'z1ay4tn6': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'bfaay4jk': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '0peetc69': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'dmfjx5ae': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'gp5v6ruu': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'jx5yak1g': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'cqtfjp43': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'gsqzi686': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'gr1ba1ps': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'sadhmpjg': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    '4t0eo6vi': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    'tpyjbpi8': {
      'es': '¿En qué año te infectaste con el SARS-CoV-2?',
      'en': 'What year did you get infected with SARS-CoV-2?',
    },
    'r4v9zypc': {
      'es': '2020',
      'en': '2020',
    },
    'cllch8xa': {
      'es': '2021',
      'en': '2021',
    },
    '1rlgkzru': {
      'es': '2022',
      'en': '2022',
    },
    'hk20oxgl': {
      'es': '2023',
      'en': '2023',
    },
    'jy014wkd': {
      'es': '2024',
      'en': '2024',
    },
    'k70rs29u': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '7vugdcsy': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'jnium3i9': {
      'es': '¿Cuántas veces te has contagiado con el SARS-CoV-2?',
      'en': 'How many times have you been infected with SARS-CoV-2?',
    },
    'hwttxkwf': {
      'es': '1',
      'en': '1',
    },
    'qhzxpxzr': {
      'es': '2',
      'en': '2',
    },
    'vn83e7sp': {
      'es': '3',
      'en': '3',
    },
    '3pdivepe': {
      'es': '4',
      'en': '4',
    },
    '9pnfhyjt': {
      'es': '5',
      'en': '5',
    },
    '425xc61j': {
      'es': '6',
      'en': '6',
    },
    'xe5xls9t': {
      'es': '7',
      'en': '7',
    },
    'lmg2dotx': {
      'es': '8',
      'en': '8',
    },
    'mkv0wi29': {
      'es': '9',
      'en': '9',
    },
    'ywl5ywfo': {
      'es': '10',
      'en': '10',
    },
    'kc31x6a5': {
      'es': 'Más de una vez',
      'en': 'More than once',
    },
    '1cav17qd': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'dlv4li7u': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'l39jmarg': {
      'es': '¿Tienes algún familiar directo que tenga COVID persistente?',
      'en':
          'Do you have any immediate family members who have long-term COVID?',
    },
    'kryrwmil': {
      'es': 'Si',
      'en': 'Yes',
    },
    'uuza1cob': {
      'es': 'No',
      'en': 'No',
    },
    '0udfzhpp': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'n7hz7ynp': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '2zaycu31': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'qs5kyhnf': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'z4mqcmrh': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'd5iu4q9t': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    's4gc2y67': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'w1iuef0z': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'pdka2ijy': {
      'es': '¿Tras qué evento desarrollaste Fibromialgia?',
      'en': 'After what event did you develop Fibromyalgia?',
    },
    'b66pi0mk': {
      'es': 'No lo sé',
      'en': 'Don\'t know',
    },
    'cx8k8xlp': {
      'es': 'Infección viral o resfriado',
      'en': 'Viral infection or cold',
    },
    'yg8xa925': {
      'es': 'Tras una cirugía',
      'en': 'After surgery',
    },
    'e1u9kopi': {
      'es': 'Tras un accidente',
      'en': 'After an accident',
    },
    '20iv0j56': {
      'es': 'Tras estancia hospitalaria',
      'en': 'After hospital stay',
    },
    '3d45xbdt': {
      'es': 'Estrés',
      'en': 'Stress',
    },
    'v2x950ih': {
      'es': 'Postparto',
      'en': 'Postpartum',
    },
    'sbpbej5e': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '243qoj46': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '8jk75az1': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'wak9rxii': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '1b1fmwe1': {
      'es': 'de 1 a 3 años',
      'en': 'from 1 to 3 years',
    },
    'n6zjfqxf': {
      'es': 'de 3 a 5 años',
      'en': '3 to 5 years',
    },
    'pv1uw7vb': {
      'es': 'más de 5 años',
      'en': 'more than 5 years',
    },
    'us50aqkg': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '48g2o5k6': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '4f1mnxbz': {
      'es': '¿Empeoran tus síntomas tras un leve esfuerzo físico o mental?',
      'en': 'Do your symptoms worsen after mild physical or mental exertion?',
    },
    '0qqs9jkn': {
      'es': 'Si',
      'en': 'Yeah',
    },
    'm720izrj': {
      'es': 'No',
      'en': 'No',
    },
    '1tj6jhc0': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'duka4aqn': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'rorsvzax': {
      'es': '¿Tienes algún familiar directo que tenga Fibromialgia?',
      'en': 'Do you have any immediate family members who have Fibromyalgia?',
    },
    'anqkdpd4': {
      'es': 'Si',
      'en': 'Yes',
    },
    'asmwoate': {
      'es': 'No',
      'en': 'No',
    },
    'evfcjwt9': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'q3l7mek3': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'hte4w6hl': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'c41mv670': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'g590ohwi': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'msbfyjhl': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'zu3nns59': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '3a8nmbwl': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '79xku03l': {
      'es': 'Escribe aquí tus otras enfermedades',
      'en': 'Write your other illnesses here',
    },
    'ijvnux8f': {
      'es': '',
      'en': '',
    },
    '63bpzuh3': {
      'es': '¿Tienes alguna enfermedad autoinmune diagnosticada?',
      'en': 'Do you have any diagnosed autoimmune disease?',
    },
    '0yzgwkcv': {
      'es': 'Si',
      'en': 'Yes',
    },
    'x9u5dw2j': {
      'es': 'No',
      'en': 'No',
    },
    'xeq05fhf': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'fimdoyyk': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'c45k7np3': {
      'es': '¿Cuál?',
      'en': 'Which one?',
    },
    't9thawvs': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'igwxv8xd': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'cvvqi6v0': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '7peocr6b': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'b8vezqmh': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    '4ot6z6zb': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'zupwnqwl': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'qhr159bi': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'xo3bc49y': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'oax0q9ou': {
      'es':
          '¿Tienes algún familiar directo que tenga alguna enfermedad autoinmune?',
      'en':
          'Do you have any immediate family members who have an autoimmune disease?',
    },
    'nuymcy9t': {
      'es': 'Si',
      'en': 'Yes',
    },
    'zc7rmejx': {
      'es': 'No',
      'en': 'No',
    },
    'eeson7qx': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'hfdd7nwu': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '21zdurry': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'r8rymg2y': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    '4ealxetb': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    '4obbk4vt': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'i1qarz04': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'm75aul6w': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '4pc4fvep': {
      'es': '¿Tienes diagnóstico de síndrome de intestino irritable?',
      'en': 'Have you been diagnosed with irritable bowel syndrome?',
    },
    'ux864b3k': {
      'es': 'Si',
      'en': 'Yes',
    },
    '3rdx4hn3': {
      'es': 'No',
      'en': 'No',
    },
    '2401fsqz': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'm0p4946s': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'kfgt0apa': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'ft2rvz0h': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'wsltodgp': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'xt9k1qfd': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'dry5prr7': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    '4v92xn8w': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'd2tsmnfn': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'jnttq9jg': {
      'es':
          '¿Tienes algún familiar directo que tenga alguna intolerancia alimentaria?',
      'en':
          'Do you have any immediate family members who have a food intolerance?',
    },
    'hcuh2ud7': {
      'es': 'Si',
      'en': 'Yes',
    },
    'mw92xvdg': {
      'es': 'No',
      'en': 'No',
    },
    'fq0fewcr': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '872920xl': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'gr2k0pra': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'ssdes69i': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'li7dwfxx': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'af5qel4v': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'vaa9ya1y': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '8fvd1kjs': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'nealmepg': {
      'es':
          '1-¿Tienes alguna sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '1-Do you have any diagnosed food sensitivity/intolerance?',
    },
    'f78bx214': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'mmcdb3cs': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'cgwfs0eh': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    's0vdsv4a': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '6hb6lesr': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'fck26fyk': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'wyze3tqw': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'qqq25kus': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '5i3ek2aw': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'a6ix2al4': {
      'es':
          '2-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '2-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'y41y5vdj': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '81mhwvay': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '39d1giio': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '83i0rlve': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'xayqks4u': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'ek12x70t': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    '1er8v1j2': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'hsbbnske': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'unomxexc': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'uzebiau7': {
      'es':
          '3-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '3-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'paqaxozr': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'glr0twyl': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'vs4i2v5r': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'im3m3mj9': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'z2ad6ma0': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    '0szbjenh': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'mckackcq': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'flk9dtyz': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'm9lezx08': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '223nauum': {
      'es':
          '4-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '4-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'kn58doxz': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'c3cwa7e5': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '8ulmg7u2': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'agj6dr9c': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '5c1xd3bt': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'sabjdg8f': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'zi32cntt': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    '3giv4lq4': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '89g2kxsb': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'et18jrvn': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    'p9cczlxu': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    '0kv6j2e9': {
      'es': '¿En qué año te infectaste con el SARS-CoV-2?',
      'en': 'What year did you get infected with SARS-CoV-2?',
    },
    '1lxevhn2': {
      'es': '2020',
      'en': '2020',
    },
    'fm43gryw': {
      'es': '2021',
      'en': '2021',
    },
    'xr7k59sq': {
      'es': '2022',
      'en': '2022',
    },
    '2956ikji': {
      'es': '2023',
      'en': '2023',
    },
    'lv5w8xkb': {
      'es': '2024',
      'en': '2024',
    },
    'l4xtmbum': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'jo4zxz1a': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'qxnl6uyb': {
      'es': '¿Cuántas veces te has contagiado con el SARS-CoV-2?',
      'en': 'How many times have you been infected with SARS-CoV-2?',
    },
    'uclcy5t4': {
      'es': '1',
      'en': '1',
    },
    'rzpb3r47': {
      'es': '2',
      'en': '2',
    },
    'cadyqb3p': {
      'es': '3',
      'en': '3',
    },
    '9ioy9k51': {
      'es': '4',
      'en': '4',
    },
    'yhopb52g': {
      'es': '5',
      'en': '5',
    },
    'n8xsbag4': {
      'es': '6',
      'en': '6',
    },
    'mqx1f6j0': {
      'es': '7',
      'en': '7',
    },
    'mw2om573': {
      'es': '8',
      'en': '8',
    },
    'gj0tmf4k': {
      'es': '9',
      'en': '9',
    },
    'eg9jdk9i': {
      'es': '10',
      'en': '10',
    },
    'y75z55g5': {
      'es': 'Más de una vez',
      'en': 'More than once',
    },
    'sa822lf1': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'xybr88xd': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'atdupvlk': {
      'es': '¿Tienes algún familiar directo que tenga COVID persistente?',
      'en':
          'Do you have any immediate family members who have long-term COVID?',
    },
    'mfj46d2h': {
      'es': 'Si',
      'en': 'Yes',
    },
    '3ytvpyjk': {
      'es': 'No',
      'en': 'No',
    },
    'nqz5wr6n': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'xjwaswkg': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'ft8ag108': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'ovyl4983': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    '72c2y54f': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'jpy2b0vy': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'v5hagyrv': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '58ui1f45': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'n6diq6tx': {
      'es': '¿Tras qué evento desarrollaste Fibromialgia?',
      'en': 'After what event did you develop Fibromyalgia?',
    },
    'm0frttnk': {
      'es': 'No lo sé',
      'en': 'Don\'t know',
    },
    'ssn53h9q': {
      'es': 'Infección viral o resfriado',
      'en': 'Viral infection or cold',
    },
    'toukb71u': {
      'es': 'Tras una cirugía',
      'en': 'After surgery',
    },
    'xz292fj2': {
      'es': 'Tras un accidente',
      'en': 'After an accident',
    },
    'r668cu4v': {
      'es': 'Tras estancia hospitalaria',
      'en': 'After hospital stay',
    },
    'pxcamp8u': {
      'es': 'Estrés',
      'en': 'Stress',
    },
    '9grwgon9': {
      'es': 'Postparto',
      'en': 'Postpartum',
    },
    '6367jvuk': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ulr7vh8a': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'wnqlgyhh': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'mig4iv2m': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'f4y0yn2j': {
      'es': 'de 1 a 3 años',
      'en': 'from 1 to 3 years',
    },
    '8vlrghvs': {
      'es': 'de 3 a 5 años',
      'en': '3 to 5 years',
    },
    'bdfaszi5': {
      'es': 'más de 5 años',
      'en': 'more than 5 years',
    },
    'lfa2pwwr': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'xjzuopse': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'rcmtckaf': {
      'es': '¿Empeoran tus síntomas tras un leve esfuerzo físico o mental?',
      'en': 'Do your symptoms worsen after mild physical or mental exertion?',
    },
    '9ts468l1': {
      'es': 'Si',
      'en': 'Yeah',
    },
    'm1di5in9': {
      'es': 'No',
      'en': 'No',
    },
    'hylgs0ms': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'fo2kp04l': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'qtdtvamb': {
      'es': '¿Tienes algún familiar directo que tenga Fibromialgia?',
      'en': 'Do you have any immediate family members who have Fibromyalgia?',
    },
    'go16zhsf': {
      'es': 'Si',
      'en': 'Yes',
    },
    'bz4ei8ma': {
      'es': 'No',
      'en': 'No',
    },
    'was9qubg': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'z3br1ls2': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'u3msrbjw': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'i6hubwkk': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    '73ntmxwo': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'leoyedkg': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'zrdx26tn': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'lw4ryacd': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '44otzkv4': {
      'es': '¿Con qué criterios te han diagnosticado?',
      'en': 'What criteria have you been diagnosed with?',
    },
    'uxcsl26i': {
      'es': 'No lo sé pero tengo el diagnóstico',
      'en': 'I don\'t know but I have the diagnosis',
    },
    'r5y5ysjc': {
      'es': 'Criterios de consenso canadienses (CCC)',
      'en': 'Canadian Consensus Criteria (CCC)',
    },
    'ohpq07o1': {
      'es': 'Criterios de Fukuda',
      'en': 'Fukuda criteria',
    },
    '5ey74fel': {
      'es': 'Criterios de consenso internacional (ICC)',
      'en': 'International Consensus Criteria (ICC)',
    },
    'i0eejhb8': {
      'es':
          'Criterios de enfermedad de intolerancia al esfuerzo sistémico (SEID)',
      'en': 'Systemic exertion intolerance disease (SEID) criteria',
    },
    '7wilp1ej': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ex5lj9d5': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'yej11yxp': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'oynm9nf4': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'eyxtvt3m': {
      'es': 'de 1 a 3 años',
      'en': 'from 1 to 3 years',
    },
    '41pa38wq': {
      'es': 'de 3 a 5 años',
      'en': '3 to 5 years',
    },
    'bx3axb1i': {
      'es': 'más de 5 años',
      'en': 'more than 5 years',
    },
    '1xy4qyb5': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '76y4udfm': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'wj3d6rc5': {
      'es': '¿Tras qué evento desarrollaste EM/SFC?',
      'en': 'After what event did you develop ME/CFS?',
    },
    'a0ee41ix': {
      'es': 'No lo sé',
      'en': 'Don\'t know',
    },
    'pmyppbqp': {
      'es': 'Infección viral o resfriado',
      'en': 'Viral infection or cold',
    },
    'n1exznf2': {
      'es': 'Tras una cirugía',
      'en': 'After surgery',
    },
    'li95brcy': {
      'es': 'Tras un accidente',
      'en': 'After an accident',
    },
    '762ftfxy': {
      'es': 'Estrés',
      'en': 'Stress',
    },
    'n2icg3cr': {
      'es': 'Postparto',
      'en': 'Postpartum',
    },
    '5ybs0sb2': {
      'es': 'Medicación',
      'en': 'Medication',
    },
    'ntoiw4kx': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '0ewmwwmd': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    's901b7j4': {
      'es': '¿Tienes algún familiar directo que tenga EM/SFC?',
      'en': 'Do you have any immediate family members who have ME/CFS?',
    },
    '26bn7nyt': {
      'es': 'Si',
      'en': 'Yes',
    },
    'kasp1jqm': {
      'es': 'No',
      'en': 'No',
    },
    'r8tgl7jw': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '2e2ari02': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'wvka5222': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'e55kj1ep': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'axg9reaz': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'ytd70gxc': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'jng8abmc': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ufqv09ht': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '76z666k2': {
      'es': 'Escribe aquí tus otras enfermedades',
      'en': 'Write your other illnesses here',
    },
    'wh1llws9': {
      'es': '',
      'en': '',
    },
    'tuisj0rq': {
      'es': '¿Tienes alguna enfermedad autoinmune diagnosticada?',
      'en': 'Do you have any diagnosed autoimmune disease?',
    },
    'xq1sji4w': {
      'es': 'Si',
      'en': 'Yes',
    },
    '7c799p09': {
      'es': 'No',
      'en': 'No',
    },
    'mcryox4a': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '5cr2jd3f': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'i08ql9z9': {
      'es': '¿Cuál?',
      'en': 'Which?',
    },
    'j21d45sj': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'osou1553': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '85lpzduu': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'y5mtln6j': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'pd4es2r6': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'lnp6b5g8': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'awi2a11v': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'fm6vsjj5': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'hzv37ez6': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'soix8ec7': {
      'es':
          '¿Tienes algún familiar directo que tenga alguna enfermedad autoinmune?',
      'en':
          'Do you have any immediate family members who have an autoimmune disease?',
    },
    'a52w3d91': {
      'es': 'Si',
      'en': 'Yes',
    },
    '4d96jy95': {
      'es': 'No',
      'en': 'No',
    },
    'wk79e2qq': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'te8lvxaf': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'tgg783ak': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    '72gw9b1l': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'l2udl3z1': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    '9vzzraec': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'j2pvianw': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '5nr3va1e': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'xktg83kl': {
      'es': '¿Tienes diagnóstico de síndrome de intestino irritable?',
      'en': 'Have you been diagnosed with irritable bowel syndrome?',
    },
    'pq4d18n5': {
      'es': 'Si',
      'en': 'Yes',
    },
    't7djq342': {
      'es': 'No',
      'en': 'No',
    },
    '7e1y0hb9': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'o57g4ggm': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'm06pp69i': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'd12olub8': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '4u6kjlh4': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'wtrogj2x': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    '8w4vj7b3': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    '0l2siuyz': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'auogj9i0': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'fjtodbzz': {
      'es':
          '¿Tienes algún familiar directo que tenga alguna intolerancia alimentaria?',
      'en':
          'Do you have any immediate family members who have a food intolerance?',
    },
    '712wb8ls': {
      'es': 'Si',
      'en': 'Yes',
    },
    'dq1qro17': {
      'es': 'No',
      'en': 'No',
    },
    'in9oiunf': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ccliacic': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'jqxdk3q5': {
      'es': 'Indica el grado familiar',
      'en': 'Indicates the family degree',
    },
    'i9cgoi1s': {
      'es': 'Familiar de primer grado',
      'en': 'First degree relative',
    },
    'rhe7u65d': {
      'es': 'Familiar de segundo grado',
      'en': 'Second degree relative',
    },
    'df9in26r': {
      'es': 'Familiar de tercer grado',
      'en': 'Third degree relative',
    },
    'wat78ycb': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    '0dgof29g': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'gnf38yuf': {
      'es':
          '1-¿Tienes alguna sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '1-Do you have any diagnosed food sensitivity/intolerance?',
    },
    'jsyyrh2d': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ercyy28b': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'snuqbrje': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'tdc87zf0': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    '0606nmw5': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'mx9f1irw': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    '4l1gqnev': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'qx9mx4v4': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'ka1304xr': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'a1bqyrm0': {
      'es':
          '2-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '2-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'j76cpur5': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'kxg0ewjr': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'lnoc7igj': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'mf1ltk66': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'jm9jtp3s': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'bijfo6wk': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    '418dz3aw': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'g0hjutuc': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'r3lemate': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'imcxck7y': {
      'es':
          '3-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '3-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'k8ktjlyz': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'tiwa0kve': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'p0gse3ej': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    'qs9v4nfv': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'i1u3me5r': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'tcvs2d2o': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'ful398gd': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    'y3lz34me': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'y8ugahql': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'zky8pus6': {
      'es':
          '4-¿Tienes otra sensibilidad/intolerancia alimentaria diagnosticada? ',
      'en': '4-Do you have any other diagnosed food sensitivity/intolerance?',
    },
    'wup6769w': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'fg4cdwfv': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'plk5okei': {
      'es': '¿Cuánto tiempo llevas diagnosticado?',
      'en': 'How long have you been diagnosed?',
    },
    '2u50fi1c': {
      'es': 'Menos de 1 año',
      'en': 'Less than 1 year',
    },
    'kbm1ek5y': {
      'es': 'De 1 a 3 años',
      'en': 'From 1 to 3 years',
    },
    'ck2a0uwg': {
      'es': 'De 3 a 5 años',
      'en': 'From 3 to 5 years',
    },
    'hagpmzt5': {
      'es': 'Más de 5 años',
      'en': 'More than 5 years',
    },
    '5rkunfmq': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'rjjeak5f': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'nfm093rm': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    'yusir2dg': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    'g7ygdhao': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // perfil_asociaciones
  {
    '04x9fogf': {
      'es': 'Mis Asociaciones',
      'en': 'My Associations',
    },
    '29b9lffl': {
      'es': 'Selecciona si perteneces a alguna de estas Asociaciones',
      'en': 'Select if you belong to any of these Associations',
    },
    'b6pwnxbz': {
      'es': 'Finalizar',
      'en': 'Finish',
    },
    'onsm1t8n': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // emp_encuestas
  {
    'rtiuvfml': {
      'es': 'Encuestas',
      'en': 'Surveys',
    },
    'bso45ixn': {
      'es': 'Mis Encuestas',
      'en': 'My Surveys',
    },
    '5mja1dvk': {
      'es': 'Vigentes',
      'en': 'Current',
    },
    'rpahkhqi': {
      'es': 'Finalizadas',
      'en': 'Completed',
    },
    'x1rlbecp': {
      'es': 'Fecha Creación: ',
      'en': 'Creation Date:',
    },
    'z8cxlcr1': {
      'es': 'Cant. Respuestas: ',
      'en': 'Cant. Answers:',
    },
    'ecplstm2': {
      'es': 'Visible: ',
      'en': 'Visible:',
    },
    'xqlb1ogd': {
      'es': 'Crear nueva encuesta',
      'en': 'Create new survey',
    },
    'fh83m61i': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // emp_detalle_encuesta
  {
    'zbn23f1e': {
      'es': 'Encuestas',
      'en': 'Surveys',
    },
    'lems1bp9': {
      'es': 'Estado de la encuesta: ',
      'en': 'Survey status:',
    },
    '4pyxga99': {
      'es': 'Visible: ',
      'en': 'Visible:',
    },
    '3p2e49ab': {
      'es': 'Cantidad de Preguntas: ',
      'en': 'Number of Questions:',
    },
    '71hypfir': {
      'es': 'Cantidad de Respuestas: ',
      'en': 'Number of Responses:',
    },
    'xw22zz8f': {
      'es': 'Finalizar Encuesta',
      'en': 'End Survey',
    },
    't9ve6f4w': {
      'es': 'Publico Objetivo',
      'en': 'Target Audience',
    },
    'wxpfad3k': {
      'es': 'Todas las enfermedades',
      'en': 'All diseases',
    },
    'weru7f1p': {
      'es': 'Covid Persistente  ',
      'en': 'Long Covid',
    },
    '8quhq3ih': {
      'es': '(+intolerancias + Otras): ',
      'en': '(+intolerances + Others):',
    },
    '0gyr6haa': {
      'es': 'Fibromialgia  ',
      'en': 'Fibromyalgia',
    },
    '5fznmotf': {
      'es': '(+intolerancias + Otras): ',
      'en': '(+intolerances + Others):',
    },
    '92w16gz1': {
      'es': 'Encefalomielitis M.',
      'en': 'Encephalomyelitis M.',
    },
    'poqt70w8': {
      'es': '(+intolerancias + Otras): ',
      'en': '(+intolerances + Others):',
    },
    'fkfozm6p': {
      'es': 'Otras Autoinmunes ',
      'en': 'Other Autoimmune',
    },
    'b321aata': {
      'es': '(+intolerancias): ',
      'en': '(+intolerances):',
    },
    'ojv92shw': {
      'es': 'Intolerancias Alimentarias: ',
      'en': 'Food Intolerances:',
    },
    '016ro5e2': {
      'es': 'Covid P. + EM. ',
      'en': 'Covid P. + EM.',
    },
    'ltyfqkoz': {
      'es': '(+intolerancias + Otras): ',
      'en': '(+intolerances + Others):',
    },
    'qugi0z2i': {
      'es': 'Fibromialgia + EM. ',
      'en': 'Fibromyalgia + MS.',
    },
    'o6novv7c': {
      'es': '(+intolerancias + Otras): ',
      'en': '(+intolerances + Others):',
    },
    'wllqn22h': {
      'es': 'Covid P. + Fibromialgia ',
      'en': 'Covid P. + Fibromyalgia',
    },
    'e3k6aofa': {
      'es': '(+intolerancias + Otras): ',
      'en': '(+intolerances + Others):',
    },
    '4io0eyvq': {
      'es': 'Covid P. + Fibromialgia  + EM ',
      'en': 'Covid P. + Fibromyalgia + MS',
    },
    'at4fd6d2': {
      'es': '(+intolerancias + Otras): ',
      'en': '(+intolerances + Others):',
    },
    '5j7wvqmu': {
      'es': 'Ver Preguntas',
      'en': 'See Questions',
    },
    '42aklzqc': {
      'es': 'Exportar Respuestas',
      'en': 'Export Responses',
    },
    'zq76j9pt': {
      'es': 'Recibirás un email con un fichero CSV.',
      'en': 'You will receive an email with a CSV file.',
    },
    'c4ooqoq0': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // emp_detalle_preguntas
  {
    '40li7bvq': {
      'es': 'Encuestas',
      'en': 'Surveys',
    },
    '7nc5p7n6': {
      'es': 'Preguntas:',
      'en': 'Questions:',
    },
    '7015hj0g': {
      'es': 'Tipo de Respuesta: ',
      'en': 'Response Type:',
    },
    'xykcpk95': {
      'es': 'Texto Libre',
      'en': 'Free Text',
    },
    'hquschd3': {
      'es': 'Tipo de Respuesta: ',
      'en': 'Response Type:',
    },
    'h2fo53jg': {
      'es': 'Desplegable con opciones',
      'en': 'Dropdown with options',
    },
    'n9rtyjh6': {
      'es': 'Tipo de Respuesta: ',
      'en': 'Response Type:',
    },
    'yvtfvscy': {
      'es': 'Escala de 0 a 5',
      'en': 'Scale from 0 to 5',
    },
    '1ckkng3h': {
      'es': 'Tipo de Respuesta: ',
      'en': 'Response Type:',
    },
    '5zlh7z14': {
      'es': 'Escala de 0 a 10',
      'en': 'Scale from 0 to 10',
    },
    'pofbhmx3': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // emp_crea_encuesta1
  {
    'v1rqcln8': {
      'es': 'Encuestas',
      'en': 'Surveys',
    },
    'tsdnv7ux': {
      'es': 'Indica el título para esta encuesta',
      'en': 'Enter the title for this survey',
    },
    'yx57kiwc': {
      'es': 'Titulo en Español',
      'en': 'Title in Spanish',
    },
    'htykv321': {
      'es': '',
      'en': '',
    },
    'ln1ev3y3': {
      'es': 'Titulo en Inglés',
      'en': 'English Title',
    },
    'o6lxpuwt': {
      'es': '',
      'en': '',
    },
    'kqu20d1t': {
      'es':
          'Indica las enfermedades que deben tener las personas que van a ver esta encuesta.',
      'en':
          'Indicate the diseases that people who will see this survey must have.',
    },
    'h4jw21ou': {
      'es': 'Todas las enfermedades',
      'en': 'All diseases',
    },
    't6uxf5h0': {
      'es': 'Covid Persistente \n(+Intolerancias y Enf.Autoinmunes)',
      'en': 'Long Covid \n(+Intolerances and Autoimmune Diseases)',
    },
    'iwzex9xx': {
      'es': 'Fibromialgia\n(+Intolerancias y Enf.Autoinmunes)',
      'en': 'Fibromyalgia\n(+Intolerances and Autoimmune Diseases)',
    },
    '4fvt51re': {
      'es': 'Encefalomielitis M. \n(+Intolerancias y Enf.Autoinmunes)',
      'en': 'Encephalomyelitis M. \n(+Intolerances and Autoimmune Diseases)',
    },
    'liwjf8g6': {
      'es': 'Enfermedades Autoinmunes (+Intolerancias)',
      'en': 'Autoimmune Diseases (+Intolerances)',
    },
    'fj1fcf1t': {
      'es': 'Intolerancias Alimentarias',
      'en': 'Food Intolerances',
    },
    '1b6obo9j': {
      'es': 'Covid P. + EM.  (+Intolerancias y Autoinmunes)',
      'en': 'Covid P. + EM. (+Intolerances and Autoimmune)',
    },
    'b61fv1xj': {
      'es': 'Fibromialgia + EM.  \n(+Intolerancias y Enf.Autoinmunes)',
      'en': 'Fibromyalgia + MS. \n(+Intolerances and Autoimmune Diseases)',
    },
    'gg66mp06': {
      'es': 'Covid P. + Fibromialgia  \n(+Intolerancias y Enf.Autoinmunes)',
      'en': 'Covid P. + Fibromyalgia \n(+Intolerances and Autoimmune Diseases)',
    },
    'myt8ht5b': {
      'es': 'Covid P. + Fibromialgia  + EM  (+Intolerancias y Enf.Autoinmunes)',
      'en':
          'Covid P. + Fibromyalgia + MS (+Intolerances and Autoimmune Diseases)',
    },
    'p7t0hphk': {
      'es': 'Continuar',
      'en': 'Continue',
    },
    'nqdn01n5': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // emp_crea_encuesta2
  {
    '60lgnn50': {
      'es': 'Encuestas',
      'en': 'Surveys',
    },
    'z5rtkyfp': {
      'es': 'Preguntas',
      'en': 'Questions',
    },
    'jjszup9b': {
      'es': 'Tipo de respuesta: ',
      'en': 'Response type:',
    },
    '2nu0onup': {
      'es': 'Agregar Pregunta',
      'en': 'Add Question',
    },
    'rc26b6gz': {
      'es': 'Guardar y Finalizar',
      'en': 'Save and Finish',
    },
    'wrmqxg1l': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // emp_crea_encuesta3
  {
    '8gnrjuh2': {
      'es': 'Encuestas',
      'en': 'Surveys',
    },
    'rk96cy99': {
      'es': 'Crear nueva pregunta',
      'en': 'Create new question',
    },
    'kyz96dwi': {
      'es': 'Pregunta en Español',
      'en': 'Question in Spanish',
    },
    'tsvnn3tg': {
      'es': '',
      'en': '',
    },
    'gshzf7ka': {
      'es': 'Pregunta en Inglés',
      'en': 'Question in English',
    },
    '61uk3li7': {
      'es': '',
      'en': '',
    },
    'kyuw7veg': {
      'es': 'Selecciona el tipo de respuesta para esta pregunta',
      'en': 'Select the type of response for this question',
    },
    'pb4fgy8g': {
      'es': 'Texto libre',
      'en': 'Free text',
    },
    'rm9a6nie': {
      'es': 'Desplegable con opciones',
      'en': 'Dropdown with options',
    },
    '9nmpqc9e': {
      'es': 'Escala de 0 a 5',
      'en': 'Scale from 0 to 5',
    },
    'a19n6d9r': {
      'es': 'Escala de 0 a 10',
      'en': 'Scale from 0 to 10',
    },
    'gp0c85v2': {
      'es': 'Selecciona la opción',
      'en': 'Select the option',
    },
    'szbxv522': {
      'es': 'Search...',
      'en': 'Search...',
    },
    '7yezy5cy': {
      'es': 'Crea la opciones de respuesta.',
      'en': 'Create the response options.',
    },
    'otd9hcnh': {
      'es': 'Las opciones se mostrarán en orden de creación.',
      'en': 'The options will be displayed in the order of creation.',
    },
    'fvgade82': {
      'es': 'Agregar Opción al desplegable',
      'en': 'Add Option to Dropdown',
    },
    'vyve3lxd': {
      'es': 'Guardar',
      'en': 'Save',
    },
    '3y23tdvq': {
      'es': 'Guardar',
      'en': 'Save',
    },
    'b5mnlsed': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // emp_crea_edita_pregunta
  {
    'exw7x1fw': {
      'es': 'Encuestas',
      'en': 'Surveys',
    },
    'my5onai0': {
      'es': 'Editar pregunta',
      'en': 'Edit question',
    },
    '905d0kri': {
      'es': 'Pregunta en Español',
      'en': 'Question in Spanish',
    },
    'pxsit7x8': {
      'es': '',
      'en': '',
    },
    'm7o1bndi': {
      'es': 'Pregunta en Inglés',
      'en': 'Question in English',
    },
    'v08v2ssb': {
      'es': '',
      'en': '',
    },
    'm7pypx92': {
      'es': 'Selecciona el tipo de respuesta para esta pregunta',
      'en': 'Select the type of response for this question',
    },
    'vh35j9d3': {
      'es': 'Texto libre',
      'en': 'Free text',
    },
    '5zf8jyfd': {
      'es': 'Desplegable con opciones',
      'en': 'Dropdown with options',
    },
    '6psqkd2i': {
      'es': 'Escala de 0 a 5',
      'en': 'Scale from 0 to 5',
    },
    'odq4p4lk': {
      'es': 'Escala de 0 a 10',
      'en': 'Scale from 0 to 10',
    },
    'lbsaywum': {
      'es': 'Selecciona la opción',
      'en': 'Select the option',
    },
    'tyuwob4r': {
      'es': 'Search...',
      'en': 'Search...',
    },
    'licvga01': {
      'es': 'Crea las opciones de respuesta.',
      'en': 'Create the answer options.',
    },
    'wlwjeaxb': {
      'es': 'Las opciones se mostrarán en orden de creación.',
      'en': 'The options will be displayed in the order of creation.',
    },
    '3r8gd58z': {
      'es': 'Agregar Opción al desplegable',
      'en': 'Add Option to Dropdown',
    },
    'lm0f5s19': {
      'es': 'Eliminar Pregunta',
      'en': 'Delete Question',
    },
    'y24dbx4b': {
      'es': 'Guardar',
      'en': 'Save',
    },
    'hh0fkh45': {
      'es': 'Guardar',
      'en': 'Save',
    },
    'ygp8pppa': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // encuestasDetalleCopy
  {
    '3t6h0g89': {
      'es': 'Encuesta',
      'en': 'Survey',
    },
    'ohchh5di': {
      'es': 'Respuesta',
      'en': 'Answer',
    },
    'ki11sjh8': {
      'es': 'Escribe tu respuesta...',
      'en': 'Write your answer...',
    },
    '9r1x2373': {
      'es': 'Option 1',
      'en': 'Option 1',
    },
    '2nh3wz88': {
      'es': 'Selecciona tu respuesta...',
      'en': 'Select your answer...',
    },
    'rnueewxb': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'nyp6l20d': {
      'es': 'Selecciona tu respuesta de 0 a 5',
      'en': 'Select your answer from 0 to 5',
    },
    'kxcnevry': {
      'es': 'Selecciona tu respuesta de 0 a 10',
      'en': 'Select your answer from 0 to 10',
    },
    'fwcfawob': {
      'es': 'Siguiente',
      'en': 'Next',
    },
    'm3h7nro2': {
      'es': 'Siguiente',
      'en': 'Next',
    },
    'hcfojpmt': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    'xykws64p': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // noticiasCrea
  {
    'usqa367c': {
      'es': 'Crea nueva Noticia',
      'en': 'Create new News',
    },
    'zm5yb22s': {
      'es': 'Publica una nueva noticia',
      'en': 'Post a new news',
    },
    '4xtta54v': {
      'es': 'Edita la Publicación',
      'en': 'Edit the Post',
    },
    'r9kiosrx': {
      'es': 'Titulo Español',
      'en': 'Spanish Title',
    },
    'af55rpsi': {
      'es': 'Introduce el titulo para idioma Español',
      'en': 'Enter the title for the Spanish language',
    },
    '23ohn07o': {
      'es': 'Titulo Inglés',
      'en': 'English Title',
    },
    'a1u6baxl': {
      'es': 'Introduce el titulo para idioma Inglés',
      'en': 'Enter the title for English language',
    },
    'bjc7pmev': {
      'es': 'Descripción en Español',
      'en': 'Description in Spanish',
    },
    'i9asisqn': {
      'es': 'Descripción en Español',
      'en': 'Description in Spanish',
    },
    'yg63kpbx': {
      'es': 'Descripción en Inglés',
      'en': 'Description in English',
    },
    '6pul7ymh': {
      'es': 'Descripción en Inglés',
      'en': 'Description in English',
    },
    '4mym0nau': {
      'es': 'Texto en Español',
      'en': 'Text in Spanish',
    },
    'iqnystm4': {
      'es': 'Texto de la noticia en Español',
      'en': 'Text of the news in Spanish',
    },
    'dq0i6nxg': {
      'es': 'Texto en Inglés',
      'en': 'Text in English',
    },
    '7wzm4pda': {
      'es': 'Texto de la noticia en Inglés',
      'en': 'Text of the news in English',
    },
    '1x9fgz8d': {
      'es': 'Etiquetas enfermedades',
      'en': 'Tags diseases',
    },
    'ao4pg7oz': {
      'es': 'COVID Fibromialgia Enfermedades Autoinmunes Intolerancias ',
      'en': 'COVID Fibromyalgia Others',
    },
    'ch165qk8': {
      'es': 'URL Link Botón',
      'en': 'URL Link Button',
    },
    'sfkpvpcm': {
      'es': 'URL Link botón',
      'en': 'URL Link Button',
    },
    'rho3hsho': {
      'es': 'Nombre del Botón en Español',
      'en': 'Button Name in Spanish',
    },
    'q7lhg401': {
      'es': 'español',
      'en': 'Spanish',
    },
    '23g6b7g6': {
      'es': 'Nombre del Botón en Inglés',
      'en': 'Button Name in English',
    },
    'g5x0ra0o': {
      'es': 'español',
      'en': 'Spanish',
    },
    'tr9hfsi3': {
      'es': 'Guardar',
      'en': 'Save',
    },
    'gpf28lpf': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // empresa_pdte_validacionCopy
  {
    '92jx22q7': {
      'es': '50%',
      'en': '50%',
    },
    'xzewre61': {
      'es': 'Tu cuenta aún no ha sido validada por el Administrador',
      'en': 'Your account has not yet been validated by the Administrator',
    },
    '98by5gvu': {
      'es': 'Te avisaremos por email en cuanto esté todo listo. ',
      'en': 'We will notify you by email as soon as everything is ready.',
    },
    '0xwyifpz': {
      'es': 'Entendido',
      'en': 'Understood',
    },
    'bng3gmva': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // comunidadCopy
  {
    'nbg0vvi3': {
      'es': 'Comunidad',
      'en': 'Community',
    },
    'omw4sf0z': {
      'es': 'Reportar Publicación',
      'en': 'Report Post',
    },
    '5t4h1bhb': {
      'es': 'Crear Publicación',
      'en': 'Create Post',
    },
    'sdhgv1je': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // perfil_medicamentosCrea
  {
    'u9ua67l1': {
      'es': 'Mis medicamentos',
      'en': 'My medications',
    },
    'qsyvxpzp': {
      'es': 'Añadir nuevo Medicamento',
      'en': 'Add new medication',
    },
    'ysfq5pyv': {
      'es': 'Nombre',
      'en': 'Name',
    },
    '39ey9b1x': {
      'es': 'Dósis',
      'en': 'Dose',
    },
    'dhr7qtvj': {
      'es': 'Posología',
      'en': 'Posology',
    },
    '4pp8sa4o': {
      'es': 'Guardar',
      'en': 'Keep',
    },
    '7xfj1bt7': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // perfil_medicamentosEdita
  {
    'mi754k9z': {
      'es': 'Mis medicamentos',
      'en': 'My medications',
    },
    '6r8gy8x2': {
      'es': 'Edita tu medicamento',
      'en': 'Edit your medication',
    },
    '431pf4lf': {
      'es': 'Nombre',
      'en': 'Name',
    },
    's2j8ftzj': {
      'es': 'Dósis',
      'en': 'Dose',
    },
    '4jfieora': {
      'es': 'Posología',
      'en': 'Posology',
    },
    '6bayd1sn': {
      'es': 'Guardar',
      'en': 'Save',
    },
    'a0kwsmnn': {
      'es': 'Eliminar',
      'en': 'Delete',
    },
    '43d9osin': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // marketplaceCopy
  {
    'oy2ghmpc': {
      'es': 'Tienda',
      'en': 'Store',
    },
    'nqmi7ylx': {
      'es': 'Marketplace Próximamente Disponible',
      'en': 'Marketplace Coming Soon',
    },
    'cnurnkqi': {
      'es':
          'Estamos preparando una selección de productos personalizados para tu enfermedad. ¡Pronto podrás acceder a ellos en nuestro marketplace!',
      'en':
          'We are preparing a selection of personalized products for your disease. You will soon be able to access them in our marketplace!',
    },
    'vw0sc67j': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // modal_cancela_sign
  {
    '9brglm8b': {
      'es':
          'Si cancelas el proceso, no podrás utilizar la herramienta y todos los datos serán eliminados.',
      'en':
          'If you cancel the process, you will not be able to use the tool and all data will be deleted.',
    },
    'gbp9s1of': {
      'es': '¿Deseas cancelar el proceso?',
      'en': 'Do you want to cancel the process?',
    },
    'h0krz5gb': {
      'es': 'SI, Cancelar',
      'en': 'YES, Cancel',
    },
  },
  // modal_equivocado
  {
    'emm9tsk0': {
      'es': '¿Te has equivocado al seleccionar el tipo de usuario?',
      'en': 'Did you make a mistake when selecting the user type?',
    },
    'hyt1e3vo': {
      'es':
          'No te preocupes, pulsa el botón de abajo de “Cancelar Creación de Cuenta” y podrás registrarte nuevamente para que esta vez selecciones el tipo “Paciente”',
      'en':
          'Don\'t worry, press the button below \"Cancel Account Creation\" and you will be able to register again so that this time you select the \"Patient\" type.',
    },
    'qcqo2kgp': {
      'es': 'Cancelar Creación de Cuenta',
      'en': 'Cancel Account Creation',
    },
  },
  // modal_error_cuenta
  {
    'vrvlicxb': {
      'es':
          'Hemos detectado una incidencia con tu cuenta. Por favor tus datos de acceso',
      'en':
          'We have detected an issue with your account. Please enter your login details.',
    },
    'xlwjvmuc': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    'klmun5s3': {
      'es':
          'Tu cuenta no se ha creado correctamente y es necesario que vuelvas a realizar el proceso de alta.',
      'en':
          'Your account has not been created correctly and you need to go through the registration process again.',
    },
    '84rf7se0': {
      'es': 'La contraseña es incorrecta',
      'en': 'Wrong password',
    },
    'q198yil1': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_info_sintomas
  {
    '2doi8r6v': {
      'es': 'Diario de Síntomas',
      'en': 'Symptom Diary',
    },
    'v58ozwct': {
      'es':
          'Registra tus síntomas diarios, su intensidad y duración. Esta sección te ayudará a monitorear la evolución de tus síntomas a lo largo del tiempo, permitiéndote identificar patrones y cambios relevantes.',
      'en':
          'Record your daily symptoms, their intensity and duration. This section will help you monitor the evolution of your symptoms over time, allowing you to identify relevant patterns and changes.',
    },
    'ljpfmfe6': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_infoSpam
  {
    'thigcyns': {
      'es':
          'Si no recibes el código en tu bandeja de entrada, revisa la carpeta de Spam o Correo no deseado',
      'en':
          'If you do not receive the code in your inbox, check your Spam or Junk folder.',
    },
    'tl2cmlq8': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_push
  {
    '68wmhw17': {
      'es': 'Activa las notificaciones Push',
      'en': 'Enable Push Notifications',
    },
    '1cagmc0e': {
      'es':
          'Activa las notificaciones para estar al día de todo lo que ocurre en Defenergy',
      'en':
          'Activate notifications to stay up to date with everything that happens at Defenergy',
    },
    'ofhpdm0m': {
      'es': 'SI, Activar',
      'en': 'YES, Activate',
    },
    'm8zpbu9q': {
      'es': 'No volver a mostrar este mensaje',
      'en': 'Do not show this message again',
    },
  },
  // modal_infoCrear
  {
    'x1hf4d4h': {
      'es': 'Utiliza esta opción para iniciar el diario del día de hoy.',
      'en': 'Use this option to start today\'s journal.',
    },
    'ref3eihf': {
      'es':
          'Cuando esta opción no esté disponible es porque ya lo has hecho o bien porque lo tienes pendiente de finalizar.',
      'en':
          'When this option is not available it is because you have already done it or because you have yet to finish it.',
    },
    'a2o9htte': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_infoDuplicar
  {
    'o4tqlhv8': {
      'es':
          'Utiliza esta opción para duplicar el último diario que hayas hecho y asignarle fecha de hoy.\n\nEsta opción es útil cuando los datos de ayer son iguales a los de hoy.',
      'en':
          'Use this option to duplicate the last journal you made and assign it today\'s date.\n\nThis option is useful when yesterday\'s data is the same as today\'s.',
    },
    'em717f2i': {
      'es':
          'Si esta opción no está disponible es porque ya has creado tu diario de hoy',
      'en':
          'If this option is not available it is because you have already created your diary for today',
    },
    'c49yuwpu': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_infoEditar
  {
    '7xyq9siz': {
      'es':
          'Utiliza esta opción para modificar los datos del último diario finalizado.\n\nEl último diario no significa que sea el de \"Ayer\", es el último que terminaste.',
      'en':
          'Use this option to modify the data of the last completed journal.\n\nThe last journal does not mean that it is the one from \"Yesterday\", it is the last one you finished.',
    },
    'misq8gij': {
      'es':
          'Si esta opción no está disponible es porque aún no tienes ningún diario finalizado para poder editar.',
      'en':
          'If this option is not available, it is because you do not yet have any finished journals to edit.',
    },
    'u1syb5hu': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_infoFinalizar
  {
    'shw940az': {
      'es':
          'Utiliza esta opción para terminar el último diario que empezaste.\n\nEsta opción estará disponible solo durante el día de creación del diario.\n\nLos diarios no finalizados se eliminarán al finalizar el día.',
      'en':
          'Use this option to finish the last journal you started.\n\nThis option will be available only during the day the journal is created.\n\nUnfinished journals will be deleted at the end of the day.',
    },
    'yd8ck3kf': {
      'es':
          'Si esta opción no está disponible es porque no tienes ningún diario para terminar.',
      'en':
          'If this option is not available, it is because you do not have any journals to complete.',
    },
    'gy8tltlk': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_fin_setup
  {
    'wxmdogq9': {
      'es': 'Ya hemos terminado!',
      'en': 'We have already finished!',
    },
    '9fivxom5': {
      'es': 'Ahora puedes iniciar tu primer Diario de Síntomas',
      'en': 'You can now start your first Symptom Diary',
    },
    'm404bvgj': {
      'es': 'Empezar Diario',
      'en': 'Start Diary',
    },
    'n1a8m2tc': {
      'es': 'Lo haré en otro momento',
      'en': 'I\'ll do it another time',
    },
  },
  // modal_aviso_sueno_hecho
  {
    'tmtnlh7z': {
      'es': 'Ya has hecho tu diario de Sueño',
      'en': 'You have already made your sleep diary',
    },
    'e4q3rzlb': {
      'es': 'Ya has hecho tu diario de Sueño, puedes consultarlo en el resumen',
      'en':
          'You have already made your sleep diary, you can check it in the summary',
    },
    'uax7p30d': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_info_into
  {
    'bsove0iv': {
      'es': 'Diario de Intolerancias',
      'en': 'Diary of Intolerances',
    },
    'gtiyptcd': {
      'es':
          'Anota los alimentos consumidos y cualquier síntoma que hayas tenido. Aquí podrás llevar un control detallado de tus intolerancias alimentarias y detectar qué alimentos te causan más molestias.',
      'en':
          'Write down the foods you have eaten and any symptoms you have had. Here you can keep a detailed record of your food intolerances and detect which foods cause you the most discomfort.',
    },
    'qvprr03i': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_info_sueno
  {
    'qb2w1uha': {
      'es': 'Diario de Sueño',
      'en': 'Sleep Diary',
    },
    'd220ouoc': {
      'es':
          'Lleva un registro de tus hábitos y calidad de sueño cada noche. Esta sección te permitirá visualizar cómo evolucionan tus patrones de sueño y qué factores pueden estar influyendo en tu descanso.',
      'en':
          'Keep track of your sleep habits and quality each night. This section will allow you to visualize how your sleep patterns evolve and what factors may be influencing your rest.',
    },
    'akvtfrht': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_info_resumen
  {
    'ol6w14qp': {
      'es': 'Resumen de Diarios',
      'en': 'Diary Summary',
    },
    '4gag1y28': {
      'es':
          'Accede a un resumen diario, mensual o anual de todos tus diarios. Aquí podrás revisar de manera consolidada toda la información registrada, facilitando la evaluación de tu estado de salud a lo largo del tiempo.',
      'en':
          'Access a daily, monthly or annual summary of all your diaries. Here you can review all the recorded information in a consolidated manner, making it easier to evaluate your health status over time.',
    },
    'ata0om4q': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_info_salud
  {
    'rk6edfrn': {
      'es': 'Carpeta de Salud',
      'en': 'Health Folder',
    },
    '6u0knhhw': {
      'es':
          'Visualiza tu progreso mediante gráficas y estadísticas basadas en tus registros, y descárgalas para compartirlas con tu médico. En esta sección podrás ver la evolución de tus síntomas, identificar tratamientos y suplementos que te han ayudado o empeorado, analizar tus intolerancias alimentarias y observar la mejora o deterioro de tu sueño.',
      'en':
          'View your progress through graphs and statistics based on your records, and download them to share with your doctor. In this section you can see the evolution of your symptoms, identify treatments and supplements that have helped or worsened you, analyze your food intolerances and observe the improvement or deterioration of your sleep.',
    },
    'cxgnt1wz': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_fin_setupInto
  {
    't3ewtmc5': {
      'es': 'Ya hemos terminado!',
      'en': 'We\'re done!',
    },
    'gh73idnu': {
      'es': 'Ahora puedes iniciar tu primer Diario de Intolerancias',
      'en': 'Now you can start your first Intolerance Diary',
    },
    'yg5kbesv': {
      'es': 'Empezar Diario',
      'en': 'Start Diary',
    },
    '0p54nhwm': {
      'es': 'Lo haré en otro momento',
      'en': 'I\'ll do it another time',
    },
  },
  // modal_sin_comida
  {
    'upzatz68': {
      'es': 'No has seleccionado ningún tipo de alimento',
      'en': 'You have not selected any type of food',
    },
    'q0l4pe7t': {
      'es': 'No he comido nada',
      'en': 'I haven\'t eaten anything',
    },
  },
  // modal_cancela_sueno
  {
    'khv79mkc': {
      'es':
          'Si cancelas el proceso, no se guardará ningún dato y tendrás que empezar desde cero.',
      'en':
          'If you cancel the process, no data will be saved and you will have to start from scratch.',
    },
    'nd0m213w': {
      'es': '¿Deseas cancelar el proceso?',
      'en': 'Do you want to cancel the process?',
    },
    '2wbpalgn': {
      'es': 'SI, Cancelar',
      'en': 'YES, Cancel',
    },
  },
  // modal_sin_diario
  {
    'vxwlet6w': {
      'es': 'Parece que aún no has creado ningún diario de Síntomas.',
      'en': 'It looks like you haven\'t created any Symptom Diaries yet.',
    },
    '4uvsf8rp': {
      'es':
          'Para acceder a esta información, debes tener al menos dos ( 2 ) diarios creados.',
      'en': 'To access your journal summary, start by creating the first one.',
    },
    '74mz0pkh': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_PDF
  {
    '5y81sprg': {
      'es':
          'Indica el año del que deseas generar el reporte y pulsa el botón “Generar Reportes”',
      'en':
          'Indicate the year for which you want to generate the report and press the “Generate Reports” button.',
    },
    'bo1d05jk': {
      'es': '2024',
      'en': '2024',
    },
    'l8ugz2z9': {
      'es': 'Selecciona el año...',
      'en': 'Select the year...',
    },
    'fzkkk8lt': {
      'es': 'Buscar...',
      'en': 'Search...',
    },
    'pdbiwk8h': {
      'es':
          'Pasados unos minutos, recibirás dos emails, uno con el informe de tu Dario de Síntomas y otro con los datos de tu Diario de Sueño.',
      'en':
          'After a few minutes, you will receive two emails, one with your Symptom Diary report and another with your Sleep Diary data.',
    },
    'e589x5py': {
      'es':
          '(El tiempo puede variar en función de la cantidad de personas que hayan solicitado el reporte)',
      'en':
          '(Time may vary depending on the number of people who have requested the report)',
    },
    '9h59e8mg': {
      'es':
          'Si no recibes el correo, revisa tu carpeta de SPAM o correo no deseado.',
      'en':
          'If you do not receive the email, check your SPAM or junk mail folder.',
    },
    'wilj2hka': {
      'es': 'Generar Reportes',
      'en': 'Generate Reports',
    },
  },
  // modal_crea_comentario
  {
    'nw04qgld': {
      'es': 'Nuevo Comentario',
      'en': 'New Comment',
    },
    '5su9vcab': {
      'es': '',
      'en': '',
    },
    'wyt8kjj1': {
      'es': 'Escribe aquí tu comentario...',
      'en': 'Write your comment here...',
    },
    'utdyrvbt': {
      'es': 'Guardar',
      'en': 'Save',
    },
  },
  // modal_enviado
  {
    'ad2tpjx8': {
      'es': 'El email se ha enviado correctamente',
      'en': 'The email has been sent successfully',
    },
    'qpf3p2i8': {
      'es':
          'Tu amigo ya tiene el email en su bandeja de entrada.\n\nPuedes enviar todos los que necesites.',
      'en':
          'Your friend already has the email in his/her inbox.\n\nYou can send as many as you need.',
    },
    'c5emrn3d': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_aviso_carrito
  {
    'kvw0tlbh': {
      'es': 'Aún no estamos listos!',
      'en': 'We\'re not ready yet!',
    },
    'z48ldcbv': {
      'es':
          'Los productos que ves en la tienda, aún no están disponibles para la compra.',
      'en':
          'The products you see in the store are not yet available for purchase.',
    },
    'z1ac1qy2': {
      'es': 'Te avisaremos en cuanto esté todo listo para que puedas pedirlos.',
      'en':
          'We will let you know when everything is ready so you can order them.',
    },
    '5logp1n0': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_reporta_post
  {
    '3s6dk9u2': {
      'es': 'Reportar contenido inapropiado',
      'en': 'Report inappropriate content',
    },
    'f3rd2lx3': {
      'es':
          'Gracias por ayudarnos a mantener esta app con contenido limpio y útil para todos los usuarios.',
      'en':
          'Thank you for helping us keep this app clean and useful for all users.',
    },
    'jvj1c5fq': {
      'es':
          'Si consideras que este contenido es inapropiado, ofensivo o discriminatorio, repórtalo para que sea revisado.',
      'en':
          'If you find this content inappropriate, offensive or discriminatory, please report it for review.',
    },
    'j6vglgdn': {
      'es': 'Reportar al Administrador',
      'en': 'Report to Administrator',
    },
  },
  // modal_user
  {
    '3xvh1fis': {
      'es': '¿Que deseas hacer?',
      'en': 'What do you want to do?',
    },
    '24tfq72e': {
      'es': 'Editar Publicación',
      'en': 'Edit Post',
    },
    'fzbgyjbe': {
      'es': 'Eliminar Publicación',
      'en': 'Delete Post',
    },
  },
  // modal_solicita_contacto
  {
    'axldqvvj': {
      'es': 'Solicitar contacto a ',
      'en': 'Request contact to',
    },
    'efkzky1q': {
      'es': ' ',
      'en': '',
    },
    'ifo0uh64': {
      'es':
          'Una vez responda a tu solicitud, recibirás una notificación para que puedas escribirle.',
      'en':
          'Once your request is answered, you will receive a notification so you can write to him.',
    },
    '1uvhbrmc': {
      'es': 'Solicitar Contacto',
      'en': 'Request Contact',
    },
  },
  // modal_elimina_conversacion
  {
    'nz67p44q': {
      'es': 'Eliminar Conversación',
      'en': 'Delete Conversation',
    },
    'dgb1heic': {
      'es':
          'Esta acción no se puede deshacer y la conversación desaparecerá para ambos usuarios.',
      'en':
          'This action cannot be undone and the conversation will disappear for both users.',
    },
    's2q1t4c3': {
      'es': '¿Estás segur@ de borrar esta conversación?',
      'en': 'Are you sure you want to delete this conversation?',
    },
    '6w3qsgc3': {
      'es': 'Eliminar Conversación',
      'en': 'Delete Conversation',
    },
  },
  // modal_elimina_mensaje
  {
    'xam22t8r': {
      'es': 'Eliminar Mensaje',
      'en': 'Delete Message',
    },
    'hrnptstj': {
      'es':
          'Esta acción no se puede deshacer y el mensaje desaparecerá para ambos usuarios.',
      'en':
          'This action cannot be undone and the message will disappear for both users.',
    },
    'wg7i61r2': {
      'es': '¿Estás segur@ de borrar este mensaje?',
      'en': 'Are you sure you want to delete this message?',
    },
    '8w5alupb': {
      'es': 'Eliminar Conversación',
      'en': 'Delete Conversation',
    },
  },
  // modal_notificacion
  {
    '626nwm24': {
      'es': 'Ver ',
      'en': 'See',
    },
    'ia3acudt': {
      'es': 'Ver invitaciones',
      'en': 'See invitations',
    },
    'g0kh2dju': {
      'es': 'Eliminar',
      'en': 'Delete',
    },
  },
  // modal_elimina_cuenta
  {
    'y4a4bz0f': {
      'es':
          'Si eliminas tu cuenta, todos tus datos serán borrados y no se podrán recuperar.',
      'en':
          'If you delete your account, all your data will be deleted and cannot be recovered.',
    },
    '8ngogvuk': {
      'es': 'Si estás segur@ que deseas continuar, \nintroduce tu contraseña',
      'en': 'If you are sure you want to continue, \nenter your password',
    },
    'ctb8zbw9': {
      'es': 'contraseña',
      'en': 'password',
    },
    'l3d748rc': {
      'es': 'Eliminar Cuenta',
      'en': 'Delete Account',
    },
  },
  // modal_cancela_modificacion
  {
    'mya2jxn6': {
      'es':
          'Ya no puedes cancelar el proceso de modificación de enfermedad, porque no tienes ninguna enfermedad asociada.\n\nDebes continuar con el proceso para volver a asociar una enfermedad a tu perfil',
      'en':
          'You can no longer cancel the disease modification process, because you do not have any associated diseases.\n\nYou must continue with the process to re-associate a disease to your profile',
    },
    'xz2pulu0': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_modifica_enfermedad
  {
    '22gar17j': {
      'es': 'Modificación de la enfermedad',
      'en': 'Disease modification',
    },
    'u7kee1g6': {
      'es':
          'Si te has equivocado en el registro inicial o bien tus condiciones han cambiado, puedes modificar las enfermedades que padeces pero debes tener en cuenta que en función de la nueva enfermedad que selecciones, puedes perder todos los datos del Diario de Síntomas que hayas generado hasta ahora debido a incompatibilidades.',
      'en':
          'If you made a mistake in the initial registration or your conditions have changed, you can modify the diseases you suffer from, but you must bear in mind that depending on the new disease you select, you may lose all the data in the Symptom Diary you have generated up to now due to incompatibilities.',
    },
    'euwpzfgk': {
      'es':
          'Desde el momento del cambio, empezarás a rellenar los Diarios de Síntomas desde cero.',
      'en':
          'From the moment of the change, you will begin filling out the Symptom Diaries from scratch.',
    },
    'ip8u8cjz': {
      'es':
          'Te recomendamos que antes de continuar, descargues en pdf tus últimos reportes.',
      'en':
          'We recommend that you download your latest reports in PDF format before continuing.',
    },
    'yamfso29': {
      'es':
          'Una vez que comiences el proceso de cambio, ya no podrás volver atrás.',
      'en': 'Once you start the process of change, you can\'t go back.',
    },
    'h733606o': {
      'es': 'Continuar',
      'en': 'Continue',
    },
  },
  // modal_add_opcion
  {
    'w4u3rb0p': {
      'es': 'Añadir nueva opción al desplegable de respuesta',
      'en': 'Add new option to the response dropdown',
    },
    'gc0wck27': {
      'es': 'Texto Español',
      'en': 'Spanish Text',
    },
    'bv3934is': {
      'es': 'Texto Inglés',
      'en': 'English Text',
    },
    'yhnhjw0o': {
      'es': 'Guardar',
      'en': 'Save',
    },
  },
  // modal_fin_encuesta
  {
    'mn8pcrkp': {
      'es': 'La encuesta se ha enviado a validar',
      'en': 'The survey has been sent to be validated',
    },
    'rm591gte': {
      'es':
          'En cuanto el Administrador la apruebe, recibirás un email para poder hacerla visible a los usuarios y empezar a obtener respuestas.',
      'en':
          'Once the Administrator approves it, you will receive an email so you can make it visible to users and start getting responses.',
    },
    'pu039jbb': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_noticia_creada
  {
    'yhh0n5yd': {
      'es': 'Tu publicación está pendiente de aprobación',
      'en': 'Your post is pending approval',
    },
    'di6yfpa5': {
      'es':
          'La publicación se ha creado correctamente pero no se verá hasta que el Administrador la apruebe.',
      'en':
          'The post has been created successfully but will not be visible until the Administrator approves it.',
    },
    'sh37broz': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_aviso_idioma
  {
    'x9ngtpyw': {
      'es': 'Ten en cuenta los idiomas',
      'en': 'Keep in mind the languages',
    },
    'uf7qfeva': {
      'es':
          'En Defenergy tenemos usuarios que solo hablan en inglés, por lo que es necesario que tus publicaciones estén en ambos idiomas.\n\nImportante: NO uses comillas dobles \nen tus textos \"',
      'en':
          'At Defenergy we have users who only speak English, so it is necessary that your posts are in both languages.',
    },
    'l3go3537': {
      'es': 'No volver a mostrar',
      'en': 'Don\'t show again',
    },
    'bs573c1s': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_cierre_sesion
  {
    '2y12ka2g': {
      'es': '¡Seguridad a la orden del día!',
      'en': 'Security is the order of the day!',
    },
    'xuh9zl1q': {
      'es':
          'Hace aproximadamente 7 días que accediste a Defenergy con tu contraseña, así que para cuidar la seguridad de tus datos, te vamos pedir que inicies sesión nuevamente.',
      'en':
          'It\'s been approximately 7 days since you accessed Defenergy with your password, so to protect the security of your data, we will ask you to log in again.',
    },
    'gtz050of': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_update
  {
    '04s037l5': {
      'es': 'Es hora de actualizar Defenergy...',
      'en': 'It\'s time to update Defenergy...',
    },
    '2d4nqs5w': {
      'es':
          'Hemos detectado que tienes una versión antigua de la aplicación y ya es hora de actualizar para que todo funcione correctamente.',
      'en':
          'We have detected that you have an old version of the application and it is time to update so that everything works correctly.',
    },
    'gfsub4gz': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_info_encuesta
  {
    'rkjbhxmw': {
      'es': 'Encuestas',
      'en': 'Surveys',
    },
    '88t3ez0s': {
      'es':
          'En esta sección, podrás diseñar encuestas personalizadas según la enfermedad de los pacientes. Esto te permitirá recopilar información valiosa sobre sus experiencias y necesidades, contribuyendo a la mejora de tratamientos y recursos específicos para su atención.',
      'en':
          'In this section, you will be able to design customized surveys based on the patients\' illness. This will allow you to gather valuable information about their experiences and needs, contributing to the improvement of specific treatments and resources for their care.',
    },
    'zvnfte39': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_info_comunidad_e
  {
    'wgem86l6': {
      'es': 'Comunidad',
      'en': 'Community',
    },
    '62srbuzg': {
      'es':
          'En este espacio, tendrás la oportunidad de interactuar directamente con los pacientes. Podrás participar en conversaciones, plantear preguntas y acceder a información relevante, promoviendo un ambiente de empatía que beneficiará a todos.',
      'en':
          'In this space, you will have the opportunity to interact directly with patients. You will be able to participate in conversations, ask questions and access relevant information, promoting an environment of empathy that will benefit everyone.',
    },
    'g8u1baro': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_comillas
  {
    'uuu622gw': {
      'es': 'Debes revisar el texto',
      'en': 'You must review the text',
    },
    'zv7uj4pn': {
      'es': 'Revisa el texto y asegúrate que no contiene comillas dobles \"',
      'en': 'Check the text and make sure it does not contain double quotes \"',
    },
    '5aacyqxq': {
      'es': 'Entendido',
      'en': 'Understood',
    },
  },
  // modal_push_noticia
  {
    'vsjomw0f': {
      'es': 'Noticia creada correctamente',
      'en': 'News created successfully',
    },
    'dkesktvv': {
      'es':
          'La publicación se ha creado correctamente pero no se verá hasta que el Administrador la apruebe.',
      'en':
          'The post has been created successfully but will not be visible until the Administrator approves it.',
    },
    'hjuqf95a': {
      'es':
          'Activa las notificaciones para estar al día de todo lo que ocurre en Defenergy',
      'en':
          'Activate notifications to stay up to date with everything that happens at Defenergy',
    },
    'bu91f8ms': {
      'es': 'SI, Activar',
      'en': 'YES, Activate',
    },
    'jp3wve0a': {
      'es': 'No volver a mostrar este mensaje',
      'en': 'Do not show this message again',
    },
  },
  // Miscellaneous
  {
    'kqz45rle': {
      'es':
          'Para poder tomar fotos o publicar imágenes la app te pedirá permiso para usar la cámara.',
      'en':
          'In order to take pictures or post images the app will ask for permission to use the camera.',
    },
    'iilnmmqq': {
      'es':
          'Para poder tomar fotos o publicar imágenes la app te pedirá permiso para acceder a tus imágenes.',
      'en':
          'In order to take pictures or post images the app will ask for permission to access your images.',
    },
    '3b16l1mp': {
      'es': 'Accede a Defenergy con autenticación biométrica',
      'en': 'Access Defenergy with biometric authentication',
    },
    '0eyisszg': {
      'es': 'Error. Tu usuario o contraseña son incorrectos',
      'en': 'Error. Your username or password is incorrect',
    },
    'uves1ldh': {
      'es': 'Se ha enviado un correo con las instrucciones.',
      'en': 'An email with instructions has been sent.',
    },
    '83aqh5aw': {
      'es': 'El email es obligatorio',
      'en': 'Email required',
    },
    'pwwxdvc2': {
      'es': '',
      'en': '',
    },
    'bp52xls7': {
      'es': '',
      'en': '',
    },
    'q6yqa8k0': {
      'es': '',
      'en': '',
    },
    'jbc63ndn': {
      'es': '',
      'en': '',
    },
    '9mj1tm51': {
      'es': '',
      'en': '',
    },
    'r6y8ohfa': {
      'es': '',
      'en': '',
    },
    'j1pu37wb': {
      'es': 'Este email ya se encuentra en uso.',
      'en': 'This email is already in use.',
    },
    'o6sch49e': {
      'es': 'Error. Tu usuario o contraseña son incorrectos',
      'en': 'Error. Your username or password is incorrect',
    },
    '8ykcpmof': {
      'es': 'Formato de archivo incorrecto',
      'en': 'Invalid file format',
    },
    'pry6ce3i': {
      'es': 'Subiendo archivo...',
      'en': 'Uploading file...',
    },
    'tgw7v4c8': {
      'es': 'Subido!',
      'en': 'Success!',
    },
    '13xddfp4': {
      'es': 'Error al subir la info',
      'en': 'Failed to upload data',
    },
    'onkkp0u6': {
      'es': '',
      'en': '',
    },
    '7uzuvmxl': {
      'es': 'Selecciona el origen',
      'en': 'Choose Source',
    },
    'ay06sts5': {
      'es': 'Galería',
      'en': 'Gallery',
    },
    'el72q7yt': {
      'es': 'Galería de Fotos',
      'en': 'Gallery (Photo)',
    },
    '83ow2df9': {
      'es': 'Galería de Fotos',
      'en': 'Gallery (Video)',
    },
    'yehfjdtx': {
      'es': 'Cámara',
      'en': 'Camera',
    },
    'pf0uxka5': {
      'es': '',
      'en': '',
    },
    'd86fn111': {
      'es': '',
      'en': '',
    },
    'dhxv18q8': {
      'es': '',
      'en': '',
    },
    'r7kyh4d6': {
      'es': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
