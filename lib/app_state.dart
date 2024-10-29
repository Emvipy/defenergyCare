import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _authToken = await secureStorage.getString('ff_authToken') ?? _authToken;
    });
    await _safeInitAsync(() async {
      _xUserId = await secureStorage.getInt('ff_xUserId') ?? _xUserId;
    });
    await _safeInitAsync(() async {
      _email = await secureStorage.getString('ff_email') ?? _email;
    });
    await _safeInitAsync(() async {
      _nombre = await secureStorage.getString('ff_nombre') ?? _nombre;
    });
    await _safeInitAsync(() async {
      _apellidos = await secureStorage.getString('ff_apellidos') ?? _apellidos;
    });
    await _safeInitAsync(() async {
      _avatar = await secureStorage.getString('ff_avatar') ?? _avatar;
    });
    await _safeInitAsync(() async {
      _perfil = await secureStorage.getString('ff_perfil') ?? _perfil;
    });
    await _safeInitAsync(() async {
      _tmpCode = await secureStorage.getString('ff_tmpCode') ?? _tmpCode;
    });
    await _safeInitAsync(() async {
      _sessionId = await secureStorage.getInt('ff_sessionId') ?? _sessionId;
    });
    await _safeInitAsync(() async {
      _enfermedadId =
          await secureStorage.getInt('ff_enfermedadId') ?? _enfermedadId;
    });
    await _safeInitAsync(() async {
      _enfermedadTxt =
          await secureStorage.getString('ff_enfermedadTxt') ?? _enfermedadTxt;
    });
    await _safeInitAsync(() async {
      _perfilId = await secureStorage.getInt('ff_perfilId') ?? _perfilId;
    });
    await _safeInitAsync(() async {
      _creadoOk = await secureStorage.getString('ff_creadoOk') ?? _creadoOk;
    });
    await _safeInitAsync(() async {
      _diarioId = await secureStorage.getInt('ff_diarioId') ?? _diarioId;
    });
    await _safeInitAsync(() async {
      _diarioDolor =
          await secureStorage.getString('ff_diarioDolor') ?? _diarioDolor;
    });
    await _safeInitAsync(() async {
      _diarioMed1 =
          await secureStorage.getString('ff_diarioMed1') ?? _diarioMed1;
    });
    await _safeInitAsync(() async {
      _diarioMed2 =
          await secureStorage.getString('ff_diarioMed2') ?? _diarioMed2;
    });
    await _safeInitAsync(() async {
      _diarioVit = await secureStorage.getString('ff_diarioVit') ?? _diarioVit;
    });
    await _safeInitAsync(() async {
      _diarioUltimoMed1 =
          await secureStorage.getString('ff_diarioUltimoMed1') ??
              _diarioUltimoMed1;
    });
    await _safeInitAsync(() async {
      _diarioUltimoMed2 =
          await secureStorage.getString('ff_diarioUltimoMed2') ??
              _diarioUltimoMed2;
    });
    await _safeInitAsync(() async {
      _diarioUltimoSup1 =
          await secureStorage.getString('ff_diarioUltimoSup1') ??
              _diarioUltimoSup1;
    });
    await _safeInitAsync(() async {
      _diarioUltimoSup2 =
          await secureStorage.getString('ff_diarioUltimoSup2') ??
              _diarioUltimoSup2;
    });
    await _safeInitAsync(() async {
      _diarioUltimoSup3 =
          await secureStorage.getString('ff_diarioUltimoSup3') ??
              _diarioUltimoSup3;
    });
    await _safeInitAsync(() async {
      _tmpCantidadSuplementos =
          await secureStorage.getInt('ff_tmpCantidadSuplementos') ??
              _tmpCantidadSuplementos;
    });
    await _safeInitAsync(() async {
      _diarioIntoId =
          await secureStorage.getInt('ff_diarioIntoId') ?? _diarioIntoId;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_userIndividual') != null) {
        try {
          _userIndividual = jsonDecode(
              await secureStorage.getString('ff_userIndividual') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _avisoIdiomas =
          await secureStorage.getString('ff_avisoIdiomas') ?? _avisoIdiomas;
    });
    await _safeInitAsync(() async {
      _nombreEmpresa =
          await secureStorage.getString('ff_nombreEmpresa') ?? _nombreEmpresa;
    });
    await _safeInitAsync(() async {
      _password = await secureStorage.getString('ff_password') ?? _password;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _authToken = '';
  String get authToken => _authToken;
  set authToken(String value) {
    _authToken = value;
    secureStorage.setString('ff_authToken', value);
  }

  void deleteAuthToken() {
    secureStorage.delete(key: 'ff_authToken');
  }

  int _xUserId = 0;
  int get xUserId => _xUserId;
  set xUserId(int value) {
    _xUserId = value;
    secureStorage.setInt('ff_xUserId', value);
  }

  void deleteXUserId() {
    secureStorage.delete(key: 'ff_xUserId');
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
    secureStorage.setString('ff_email', value);
  }

  void deleteEmail() {
    secureStorage.delete(key: 'ff_email');
  }

  String _nombre = '';
  String get nombre => _nombre;
  set nombre(String value) {
    _nombre = value;
    secureStorage.setString('ff_nombre', value);
  }

  void deleteNombre() {
    secureStorage.delete(key: 'ff_nombre');
  }

  String _apellidos = '';
  String get apellidos => _apellidos;
  set apellidos(String value) {
    _apellidos = value;
    secureStorage.setString('ff_apellidos', value);
  }

  void deleteApellidos() {
    secureStorage.delete(key: 'ff_apellidos');
  }

  String _avatar = '';
  String get avatar => _avatar;
  set avatar(String value) {
    _avatar = value;
    secureStorage.setString('ff_avatar', value);
  }

  void deleteAvatar() {
    secureStorage.delete(key: 'ff_avatar');
  }

  String _perfil = '';
  String get perfil => _perfil;
  set perfil(String value) {
    _perfil = value;
    secureStorage.setString('ff_perfil', value);
  }

  void deletePerfil() {
    secureStorage.delete(key: 'ff_perfil');
  }

  String _tmpCode = '';
  String get tmpCode => _tmpCode;
  set tmpCode(String value) {
    _tmpCode = value;
    secureStorage.setString('ff_tmpCode', value);
  }

  void deleteTmpCode() {
    secureStorage.delete(key: 'ff_tmpCode');
  }

  int _sessionId = 0;
  int get sessionId => _sessionId;
  set sessionId(int value) {
    _sessionId = value;
    secureStorage.setInt('ff_sessionId', value);
  }

  void deleteSessionId() {
    secureStorage.delete(key: 'ff_sessionId');
  }

  int _enfermedadId = 0;
  int get enfermedadId => _enfermedadId;
  set enfermedadId(int value) {
    _enfermedadId = value;
    secureStorage.setInt('ff_enfermedadId', value);
  }

  void deleteEnfermedadId() {
    secureStorage.delete(key: 'ff_enfermedadId');
  }

  String _enfermedadTxt = '';
  String get enfermedadTxt => _enfermedadTxt;
  set enfermedadTxt(String value) {
    _enfermedadTxt = value;
    secureStorage.setString('ff_enfermedadTxt', value);
  }

  void deleteEnfermedadTxt() {
    secureStorage.delete(key: 'ff_enfermedadTxt');
  }

  int _perfilId = 0;
  int get perfilId => _perfilId;
  set perfilId(int value) {
    _perfilId = value;
    secureStorage.setInt('ff_perfilId', value);
  }

  void deletePerfilId() {
    secureStorage.delete(key: 'ff_perfilId');
  }

  String _creadoOk = '';
  String get creadoOk => _creadoOk;
  set creadoOk(String value) {
    _creadoOk = value;
    secureStorage.setString('ff_creadoOk', value);
  }

  void deleteCreadoOk() {
    secureStorage.delete(key: 'ff_creadoOk');
  }

  int _diarioId = 0;
  int get diarioId => _diarioId;
  set diarioId(int value) {
    _diarioId = value;
    secureStorage.setInt('ff_diarioId', value);
  }

  void deleteDiarioId() {
    secureStorage.delete(key: 'ff_diarioId');
  }

  String _diarioDolor = 'no';
  String get diarioDolor => _diarioDolor;
  set diarioDolor(String value) {
    _diarioDolor = value;
    secureStorage.setString('ff_diarioDolor', value);
  }

  void deleteDiarioDolor() {
    secureStorage.delete(key: 'ff_diarioDolor');
  }

  String _diarioMed1 = 'no';
  String get diarioMed1 => _diarioMed1;
  set diarioMed1(String value) {
    _diarioMed1 = value;
    secureStorage.setString('ff_diarioMed1', value);
  }

  void deleteDiarioMed1() {
    secureStorage.delete(key: 'ff_diarioMed1');
  }

  String _diarioMed2 = 'no';
  String get diarioMed2 => _diarioMed2;
  set diarioMed2(String value) {
    _diarioMed2 = value;
    secureStorage.setString('ff_diarioMed2', value);
  }

  void deleteDiarioMed2() {
    secureStorage.delete(key: 'ff_diarioMed2');
  }

  String _diarioVit = 'no';
  String get diarioVit => _diarioVit;
  set diarioVit(String value) {
    _diarioVit = value;
    secureStorage.setString('ff_diarioVit', value);
  }

  void deleteDiarioVit() {
    secureStorage.delete(key: 'ff_diarioVit');
  }

  String _diarioUltimoMed1 = '';
  String get diarioUltimoMed1 => _diarioUltimoMed1;
  set diarioUltimoMed1(String value) {
    _diarioUltimoMed1 = value;
    secureStorage.setString('ff_diarioUltimoMed1', value);
  }

  void deleteDiarioUltimoMed1() {
    secureStorage.delete(key: 'ff_diarioUltimoMed1');
  }

  String _diarioUltimoMed2 = '';
  String get diarioUltimoMed2 => _diarioUltimoMed2;
  set diarioUltimoMed2(String value) {
    _diarioUltimoMed2 = value;
    secureStorage.setString('ff_diarioUltimoMed2', value);
  }

  void deleteDiarioUltimoMed2() {
    secureStorage.delete(key: 'ff_diarioUltimoMed2');
  }

  String _diarioUltimoSup1 = '';
  String get diarioUltimoSup1 => _diarioUltimoSup1;
  set diarioUltimoSup1(String value) {
    _diarioUltimoSup1 = value;
    secureStorage.setString('ff_diarioUltimoSup1', value);
  }

  void deleteDiarioUltimoSup1() {
    secureStorage.delete(key: 'ff_diarioUltimoSup1');
  }

  String _diarioUltimoSup2 = '';
  String get diarioUltimoSup2 => _diarioUltimoSup2;
  set diarioUltimoSup2(String value) {
    _diarioUltimoSup2 = value;
    secureStorage.setString('ff_diarioUltimoSup2', value);
  }

  void deleteDiarioUltimoSup2() {
    secureStorage.delete(key: 'ff_diarioUltimoSup2');
  }

  String _diarioUltimoSup3 = '';
  String get diarioUltimoSup3 => _diarioUltimoSup3;
  set diarioUltimoSup3(String value) {
    _diarioUltimoSup3 = value;
    secureStorage.setString('ff_diarioUltimoSup3', value);
  }

  void deleteDiarioUltimoSup3() {
    secureStorage.delete(key: 'ff_diarioUltimoSup3');
  }

  int _tmpCantidadSuplementos = 0;
  int get tmpCantidadSuplementos => _tmpCantidadSuplementos;
  set tmpCantidadSuplementos(int value) {
    _tmpCantidadSuplementos = value;
    secureStorage.setInt('ff_tmpCantidadSuplementos', value);
  }

  void deleteTmpCantidadSuplementos() {
    secureStorage.delete(key: 'ff_tmpCantidadSuplementos');
  }

  String _modalSpam = 'si';
  String get modalSpam => _modalSpam;
  set modalSpam(String value) {
    _modalSpam = value;
  }

  String _diarioSuenoSup = 'no';
  String get diarioSuenoSup => _diarioSuenoSup;
  set diarioSuenoSup(String value) {
    _diarioSuenoSup = value;
  }

  String _diarioSuenoMed = 'no';
  String get diarioSuenoMed => _diarioSuenoMed;
  set diarioSuenoMed(String value) {
    _diarioSuenoMed = value;
  }

  int _diarioSuenoId = 0;
  int get diarioSuenoId => _diarioSuenoId;
  set diarioSuenoId(int value) {
    _diarioSuenoId = value;
  }

  String _diarioSuenoUltMed = '';
  String get diarioSuenoUltMed => _diarioSuenoUltMed;
  set diarioSuenoUltMed(String value) {
    _diarioSuenoUltMed = value;
  }

  String _diarioSuenoUltSup = '';
  String get diarioSuenoUltSup => _diarioSuenoUltSup;
  set diarioSuenoUltSup(String value) {
    _diarioSuenoUltSup = value;
  }

  String _editandoDiario = 'no';
  String get editandoDiario => _editandoDiario;
  set editandoDiario(String value) {
    _editandoDiario = value;
  }

  int _diarioIntoId = 0;
  int get diarioIntoId => _diarioIntoId;
  set diarioIntoId(int value) {
    _diarioIntoId = value;
    secureStorage.setInt('ff_diarioIntoId', value);
  }

  void deleteDiarioIntoId() {
    secureStorage.delete(key: 'ff_diarioIntoId');
  }

  String _primerDiarioInto = '';
  String get primerDiarioInto => _primerDiarioInto;
  set primerDiarioInto(String value) {
    _primerDiarioInto = value;
  }

  int _diarioIntoAnterior = 0;
  int get diarioIntoAnterior => _diarioIntoAnterior;
  set diarioIntoAnterior(int value) {
    _diarioIntoAnterior = value;
  }

  String _intoCarnes = 'no';
  String get intoCarnes => _intoCarnes;
  set intoCarnes(String value) {
    _intoCarnes = value;
  }

  String _intoMarisco = 'no';
  String get intoMarisco => _intoMarisco;
  set intoMarisco(String value) {
    _intoMarisco = value;
  }

  String _intoPescado = 'no';
  String get intoPescado => _intoPescado;
  set intoPescado(String value) {
    _intoPescado = value;
  }

  String _intoLacteos = 'no';
  String get intoLacteos => _intoLacteos;
  set intoLacteos(String value) {
    _intoLacteos = value;
  }

  String _intoHuevos = 'no';
  String get intoHuevos => _intoHuevos;
  set intoHuevos(String value) {
    _intoHuevos = value;
  }

  String _intoCereales = 'no';
  String get intoCereales => _intoCereales;
  set intoCereales(String value) {
    _intoCereales = value;
  }

  String _intoFrutas = 'no';
  String get intoFrutas => _intoFrutas;
  set intoFrutas(String value) {
    _intoFrutas = value;
  }

  String _intoVerduras = 'no';
  String get intoVerduras => _intoVerduras;
  set intoVerduras(String value) {
    _intoVerduras = value;
  }

  String _intoLegumbres = 'no';
  String get intoLegumbres => _intoLegumbres;
  set intoLegumbres(String value) {
    _intoLegumbres = value;
  }

  String _intoFrutosSecos = 'no';
  String get intoFrutosSecos => _intoFrutosSecos;
  set intoFrutosSecos(String value) {
    _intoFrutosSecos = value;
  }

  String _intoSalsas = 'no';
  String get intoSalsas => _intoSalsas;
  set intoSalsas(String value) {
    _intoSalsas = value;
  }

  String _intoBebidas = 'no';
  String get intoBebidas => _intoBebidas;
  set intoBebidas(String value) {
    _intoBebidas = value;
  }

  String _mostrarAyer = 'si';
  String get mostrarAyer => _mostrarAyer;
  set mostrarAyer(String value) {
    _mostrarAyer = value;
  }

  int _momento = 1;
  int get momento => _momento;
  set momento(int value) {
    _momento = value;
  }

  String _filtroNoticias = '';
  String get filtroNoticias => _filtroNoticias;
  set filtroNoticias(String value) {
    _filtroNoticias = value;
  }

  int _nuevaEncuestaId = 0;
  int get nuevaEncuestaId => _nuevaEncuestaId;
  set nuevaEncuestaId(int value) {
    _nuevaEncuestaId = value;
  }

  int _nuevaPreguntaId = 0;
  int get nuevaPreguntaId => _nuevaPreguntaId;
  set nuevaPreguntaId(int value) {
    _nuevaPreguntaId = value;
  }

  int _contadorOpcionesEncuestas = 0;
  int get contadorOpcionesEncuestas => _contadorOpcionesEncuestas;
  set contadorOpcionesEncuestas(int value) {
    _contadorOpcionesEncuestas = value;
  }

  int _encuestaPreguntaActual = 0;
  int get encuestaPreguntaActual => _encuestaPreguntaActual;
  set encuestaPreguntaActual(int value) {
    _encuestaPreguntaActual = value;
  }

  int _contadorEncuesta = 0;
  int get contadorEncuesta => _contadorEncuesta;
  set contadorEncuesta(int value) {
    _contadorEncuesta = value;
  }

  int _cantPreguntasEncuesta = 0;
  int get cantPreguntasEncuesta => _cantPreguntasEncuesta;
  set cantPreguntasEncuesta(int value) {
    _cantPreguntasEncuesta = value;
  }

  String _tieneComidaDesayuno = '';
  String get tieneComidaDesayuno => _tieneComidaDesayuno;
  set tieneComidaDesayuno(String value) {
    _tieneComidaDesayuno = value;
  }

  String _tieneComidaComida = '';
  String get tieneComidaComida => _tieneComidaComida;
  set tieneComidaComida(String value) {
    _tieneComidaComida = value;
  }

  String _tieneComidaCena = '';
  String get tieneComidaCena => _tieneComidaCena;
  set tieneComidaCena(String value) {
    _tieneComidaCena = value;
  }

  dynamic _userIndividual;
  dynamic get userIndividual => _userIndividual;
  set userIndividual(dynamic value) {
    _userIndividual = value;
    secureStorage.setString('ff_userIndividual', jsonEncode(value));
  }

  void deleteUserIndividual() {
    secureStorage.delete(key: 'ff_userIndividual');
  }

  List<dynamic> _misMedicamentos = [];
  List<dynamic> get misMedicamentos => _misMedicamentos;
  set misMedicamentos(List<dynamic> value) {
    _misMedicamentos = value;
  }

  void addToMisMedicamentos(dynamic value) {
    misMedicamentos.add(value);
  }

  void removeFromMisMedicamentos(dynamic value) {
    misMedicamentos.remove(value);
  }

  void removeAtIndexFromMisMedicamentos(int index) {
    misMedicamentos.removeAt(index);
  }

  void updateMisMedicamentosAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    misMedicamentos[index] = updateFn(_misMedicamentos[index]);
  }

  void insertAtIndexInMisMedicamentos(int index, dynamic value) {
    misMedicamentos.insert(index, value);
  }

  String _avisoIdiomas = 'si';
  String get avisoIdiomas => _avisoIdiomas;
  set avisoIdiomas(String value) {
    _avisoIdiomas = value;
    secureStorage.setString('ff_avisoIdiomas', value);
  }

  void deleteAvisoIdiomas() {
    secureStorage.delete(key: 'ff_avisoIdiomas');
  }

  List<dynamic> _listadoPreguntasEncuestas = [];
  List<dynamic> get listadoPreguntasEncuestas => _listadoPreguntasEncuestas;
  set listadoPreguntasEncuestas(List<dynamic> value) {
    _listadoPreguntasEncuestas = value;
  }

  void addToListadoPreguntasEncuestas(dynamic value) {
    listadoPreguntasEncuestas.add(value);
  }

  void removeFromListadoPreguntasEncuestas(dynamic value) {
    listadoPreguntasEncuestas.remove(value);
  }

  void removeAtIndexFromListadoPreguntasEncuestas(int index) {
    listadoPreguntasEncuestas.removeAt(index);
  }

  void updateListadoPreguntasEncuestasAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    listadoPreguntasEncuestas[index] =
        updateFn(_listadoPreguntasEncuestas[index]);
  }

  void insertAtIndexInListadoPreguntasEncuestas(int index, dynamic value) {
    listadoPreguntasEncuestas.insert(index, value);
  }

  String _activarCargaChat = 'no';
  String get activarCargaChat => _activarCargaChat;
  set activarCargaChat(String value) {
    _activarCargaChat = value;
  }

  String _permiteFinalizarEncuesta = 'no';
  String get permiteFinalizarEncuesta => _permiteFinalizarEncuesta;
  set permiteFinalizarEncuesta(String value) {
    _permiteFinalizarEncuesta = value;
  }

  String _botonEncuesta = 'no';
  String get botonEncuesta => _botonEncuesta;
  set botonEncuesta(String value) {
    _botonEncuesta = value;
  }

  List<String> _imagenPreguntaEncuesta = [];
  List<String> get imagenPreguntaEncuesta => _imagenPreguntaEncuesta;
  set imagenPreguntaEncuesta(List<String> value) {
    _imagenPreguntaEncuesta = value;
  }

  void addToImagenPreguntaEncuesta(String value) {
    imagenPreguntaEncuesta.add(value);
  }

  void removeFromImagenPreguntaEncuesta(String value) {
    imagenPreguntaEncuesta.remove(value);
  }

  void removeAtIndexFromImagenPreguntaEncuesta(int index) {
    imagenPreguntaEncuesta.removeAt(index);
  }

  void updateImagenPreguntaEncuestaAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    imagenPreguntaEncuesta[index] = updateFn(_imagenPreguntaEncuesta[index]);
  }

  void insertAtIndexInImagenPreguntaEncuesta(int index, String value) {
    imagenPreguntaEncuesta.insert(index, value);
  }

  String _nombreEmpresa = '';
  String get nombreEmpresa => _nombreEmpresa;
  set nombreEmpresa(String value) {
    _nombreEmpresa = value;
    secureStorage.setString('ff_nombreEmpresa', value);
  }

  void deleteNombreEmpresa() {
    secureStorage.delete(key: 'ff_nombreEmpresa');
  }

  String _password = '';
  String get password => _password;
  set password(String value) {
    _password = value;
    secureStorage.setString('ff_password', value);
  }

  void deletePassword() {
    secureStorage.delete(key: 'ff_password');
  }

  String _enfemedadTxtEn = '';
  String get enfemedadTxtEn => _enfemedadTxtEn;
  set enfemedadTxtEn(String value) {
    _enfemedadTxtEn = value;
  }

  List<dynamic> _despBebidas = [];
  List<dynamic> get despBebidas => _despBebidas;
  set despBebidas(List<dynamic> value) {
    _despBebidas = value;
  }

  void addToDespBebidas(dynamic value) {
    despBebidas.add(value);
  }

  void removeFromDespBebidas(dynamic value) {
    despBebidas.remove(value);
  }

  void removeAtIndexFromDespBebidas(int index) {
    despBebidas.removeAt(index);
  }

  void updateDespBebidasAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    despBebidas[index] = updateFn(_despBebidas[index]);
  }

  void insertAtIndexInDespBebidas(int index, dynamic value) {
    despBebidas.insert(index, value);
  }

  List<dynamic> _despCarne = [];
  List<dynamic> get despCarne => _despCarne;
  set despCarne(List<dynamic> value) {
    _despCarne = value;
  }

  void addToDespCarne(dynamic value) {
    despCarne.add(value);
  }

  void removeFromDespCarne(dynamic value) {
    despCarne.remove(value);
  }

  void removeAtIndexFromDespCarne(int index) {
    despCarne.removeAt(index);
  }

  void updateDespCarneAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    despCarne[index] = updateFn(_despCarne[index]);
  }

  void insertAtIndexInDespCarne(int index, dynamic value) {
    despCarne.insert(index, value);
  }

  List<dynamic> _despCereales = [];
  List<dynamic> get despCereales => _despCereales;
  set despCereales(List<dynamic> value) {
    _despCereales = value;
  }

  void addToDespCereales(dynamic value) {
    despCereales.add(value);
  }

  void removeFromDespCereales(dynamic value) {
    despCereales.remove(value);
  }

  void removeAtIndexFromDespCereales(int index) {
    despCereales.removeAt(index);
  }

  void updateDespCerealesAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    despCereales[index] = updateFn(_despCereales[index]);
  }

  void insertAtIndexInDespCereales(int index, dynamic value) {
    despCereales.insert(index, value);
  }

  List<dynamic> _despSalsas = [];
  List<dynamic> get despSalsas => _despSalsas;
  set despSalsas(List<dynamic> value) {
    _despSalsas = value;
  }

  void addToDespSalsas(dynamic value) {
    despSalsas.add(value);
  }

  void removeFromDespSalsas(dynamic value) {
    despSalsas.remove(value);
  }

  void removeAtIndexFromDespSalsas(int index) {
    despSalsas.removeAt(index);
  }

  void updateDespSalsasAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    despSalsas[index] = updateFn(_despSalsas[index]);
  }

  void insertAtIndexInDespSalsas(int index, dynamic value) {
    despSalsas.insert(index, value);
  }

  List<dynamic> _despFrutas = [];
  List<dynamic> get despFrutas => _despFrutas;
  set despFrutas(List<dynamic> value) {
    _despFrutas = value;
  }

  void addToDespFrutas(dynamic value) {
    despFrutas.add(value);
  }

  void removeFromDespFrutas(dynamic value) {
    despFrutas.remove(value);
  }

  void removeAtIndexFromDespFrutas(int index) {
    despFrutas.removeAt(index);
  }

  void updateDespFrutasAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    despFrutas[index] = updateFn(_despFrutas[index]);
  }

  void insertAtIndexInDespFrutas(int index, dynamic value) {
    despFrutas.insert(index, value);
  }

  List<dynamic> _despSecos = [];
  List<dynamic> get despSecos => _despSecos;
  set despSecos(List<dynamic> value) {
    _despSecos = value;
  }

  void addToDespSecos(dynamic value) {
    despSecos.add(value);
  }

  void removeFromDespSecos(dynamic value) {
    despSecos.remove(value);
  }

  void removeAtIndexFromDespSecos(int index) {
    despSecos.removeAt(index);
  }

  void updateDespSecosAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    despSecos[index] = updateFn(_despSecos[index]);
  }

  void insertAtIndexInDespSecos(int index, dynamic value) {
    despSecos.insert(index, value);
  }

  List<dynamic> _despHuevos = [];
  List<dynamic> get despHuevos => _despHuevos;
  set despHuevos(List<dynamic> value) {
    _despHuevos = value;
  }

  void addToDespHuevos(dynamic value) {
    despHuevos.add(value);
  }

  void removeFromDespHuevos(dynamic value) {
    despHuevos.remove(value);
  }

  void removeAtIndexFromDespHuevos(int index) {
    despHuevos.removeAt(index);
  }

  void updateDespHuevosAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    despHuevos[index] = updateFn(_despHuevos[index]);
  }

  void insertAtIndexInDespHuevos(int index, dynamic value) {
    despHuevos.insert(index, value);
  }

  List<dynamic> _despLacteos = [];
  List<dynamic> get despLacteos => _despLacteos;
  set despLacteos(List<dynamic> value) {
    _despLacteos = value;
  }

  void addToDespLacteos(dynamic value) {
    despLacteos.add(value);
  }

  void removeFromDespLacteos(dynamic value) {
    despLacteos.remove(value);
  }

  void removeAtIndexFromDespLacteos(int index) {
    despLacteos.removeAt(index);
  }

  void updateDespLacteosAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    despLacteos[index] = updateFn(_despLacteos[index]);
  }

  void insertAtIndexInDespLacteos(int index, dynamic value) {
    despLacteos.insert(index, value);
  }

  List<dynamic> _despLegumbres = [];
  List<dynamic> get despLegumbres => _despLegumbres;
  set despLegumbres(List<dynamic> value) {
    _despLegumbres = value;
  }

  void addToDespLegumbres(dynamic value) {
    despLegumbres.add(value);
  }

  void removeFromDespLegumbres(dynamic value) {
    despLegumbres.remove(value);
  }

  void removeAtIndexFromDespLegumbres(int index) {
    despLegumbres.removeAt(index);
  }

  void updateDespLegumbresAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    despLegumbres[index] = updateFn(_despLegumbres[index]);
  }

  void insertAtIndexInDespLegumbres(int index, dynamic value) {
    despLegumbres.insert(index, value);
  }

  List<dynamic> _despMariscos = [];
  List<dynamic> get despMariscos => _despMariscos;
  set despMariscos(List<dynamic> value) {
    _despMariscos = value;
  }

  void addToDespMariscos(dynamic value) {
    despMariscos.add(value);
  }

  void removeFromDespMariscos(dynamic value) {
    despMariscos.remove(value);
  }

  void removeAtIndexFromDespMariscos(int index) {
    despMariscos.removeAt(index);
  }

  void updateDespMariscosAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    despMariscos[index] = updateFn(_despMariscos[index]);
  }

  void insertAtIndexInDespMariscos(int index, dynamic value) {
    despMariscos.insert(index, value);
  }

  List<dynamic> _despPescado = [];
  List<dynamic> get despPescado => _despPescado;
  set despPescado(List<dynamic> value) {
    _despPescado = value;
  }

  void addToDespPescado(dynamic value) {
    despPescado.add(value);
  }

  void removeFromDespPescado(dynamic value) {
    despPescado.remove(value);
  }

  void removeAtIndexFromDespPescado(int index) {
    despPescado.removeAt(index);
  }

  void updateDespPescadoAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    despPescado[index] = updateFn(_despPescado[index]);
  }

  void insertAtIndexInDespPescado(int index, dynamic value) {
    despPescado.insert(index, value);
  }

  List<dynamic> _despVerduras = [];
  List<dynamic> get despVerduras => _despVerduras;
  set despVerduras(List<dynamic> value) {
    _despVerduras = value;
  }

  void addToDespVerduras(dynamic value) {
    despVerduras.add(value);
  }

  void removeFromDespVerduras(dynamic value) {
    despVerduras.remove(value);
  }

  void removeAtIndexFromDespVerduras(int index) {
    despVerduras.removeAt(index);
  }

  void updateDespVerdurasAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    despVerduras[index] = updateFn(_despVerduras[index]);
  }

  void insertAtIndexInDespVerduras(int index, dynamic value) {
    despVerduras.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
