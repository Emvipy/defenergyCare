import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SignUpCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? nombre = '',
    String? apellidos = '',
    int? perfilId,
    String? fecha = '',
    String? dispositivo = '',
    String? firebase = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}",
  "nombre": "${nombre}",
  "apellidos": "${apellidos}",
  "perfil": ${perfilId},
  "date": "${fecha}",
  "dispositivo": "${dispositivo}",
  "firebase": "${firebase}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signUp',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/auth/signup',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user1.id''',
      ));
  static int? tmCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user1.tmp_code''',
      ));
  static String? avatar(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user1.avatar.url''',
      ));
  static int? sessionId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user1.session_id''',
      ));
}

class SignUpCancelaAltaCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'signUp cancela alta',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:1KdJYapv/user/cancela_alta',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LegalCall {
  static Future<ApiCallResponse> call({
    int? tycId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'legal',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/tyc/${tycId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'tyc_id': tycId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? p1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.p1''',
      ));
  static String? p2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.p2''',
      ));
  static String? p3(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.p3''',
      ));
  static String? p4(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.p4''',
      ));
  static String? p5(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.p5''',
      ));
}

class SignUpReenviaCodeCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'signUp reenvia code',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:1KdJYapv/user/reenvia_code',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SignUpCreaEnfermedadCall {
  static Future<ApiCallResponse> call({
    String? covid = '',
    String? fibro = '',
    String? em = '',
    String? otras = '',
    String? into = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "covid": "${covid}",
  "fibro": "${fibro}",
  "em": "${em}",
  "otras": "${otras}",
  "into": "${into}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signUp crea enfermedad',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/user/crea_enfermedad',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? enfermedad(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.enfermedad_usuario''',
      ));
  static int? enfermedadId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id_enfermedad''',
      ));
}

class SignUpCreaMixEnfermedadCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    int? idEnfemedad,
    String? enfermedad = '',
    int? sessionId,
    String? leido = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "id_enfermedad": ${idEnfemedad},
  "enfermedad": "${enfermedad}",
  "session_id": ${sessionId},
  "leido": "${leido}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signUp crea mix enfermedad',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/mix_enfermedad',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? idMix(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class SignUpBorraMixEnfermedadCall {
  static Future<ApiCallResponse> call({
    int? mixEnfermedadId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'signUp borra mix enfermedad',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/mix_enfermedad/${mixEnfermedadId}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {
        'mix_enfermedad_id': mixEnfermedadId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SignUpBorraMixEnfermedadAtrasCall {
  static Future<ApiCallResponse> call({
    int? sessionId,
    int? userId,
  }) async {
    final ffApiRequestBody = '''
{
  "session_id": ${sessionId},
  "user_id": ${userId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signUp borra mix enfermedad atras',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:1KdJYapv/user/borra_mix_enfermedad',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DespPesoCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'desp peso',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/desp_peso',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? txt(dynamic response) => (getJsonField(
        response,
        r'''$[:].peso_desp''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? num(dynamic response) => (getJsonField(
        response,
        r'''$[:].peso''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class DespAlturaCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'desp altura',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/desp_altura',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? txt(dynamic response) => (getJsonField(
        response,
        r'''$[:].altura_desp''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? num(dynamic response) => (getJsonField(
        response,
        r'''$[:].altura''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class EditaDatosMedicosCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? yearCovid = '',
    String? vecesCovid = '',
    String? familiarCovid = '',
    String? gradoCovid = '',
    String? otrasEnfermedades = '',
    String? eventoFibro = '',
    String? tiempoFibro = '',
    String? empeoraSintomaFibro = '',
    String? familiarFibro = '',
    String? gradoFibro = '',
    String? tiempoEm = '',
    String? criteriosEm = '',
    String? familiarEm = '',
    String? gradoEm = '',
    String? nombreAuto = '',
    String? tiempoAuto = '',
    String? familiarAuto = '',
    String? gradoAuto = '',
    String? eventoEm = '',
    String? intestino = '',
    String? tiempoIntestino = '',
    String? familiarInto = '',
    String? gradoFamInto = '',
    String? into1 = '',
    String? tiempoInto1 = '',
    String? into2 = '',
    String? tiempoInto2 = '',
    String? into3 = '',
    String? tiempoInto3 = '',
    String? into4 = '',
    String? tiempoInto4 = '',
    String? tieneAuto = '',
  }) async {
    final ffApiRequestBody = '''
{
  "year_covid": "${yearCovid}",
  "veces_covid": "${vecesCovid}",
  "familiar_covid": "${familiarCovid}",
  "grado_covid": "${gradoCovid}",
  "otras_enfermedades": "${otrasEnfermedades}",
  "evento_fibro": "${eventoFibro}",
  "tiempo_fibro": "${tiempoFibro}",
  "empeora_sintoma_fibro": "${empeoraSintomaFibro}",
  "familiar_fibro": "${familiarFibro}",
  "grado_fibro": "${gradoFibro}",
  "tiempo_em": "${tiempoEm}",
  "criterios_em": "${criteriosEm}",
  "evento_em": "${eventoEm}",
  "familiar_em": "${familiarEm}",
  "grado_em": "${gradoEm}",
  "nombre_auto": "${nombreAuto}",
  "tiempo_auto": "${tiempoAuto}",
  "familiar_auto": "${familiarAuto}",
  "grado_auto": "${gradoAuto}",
  "intestino": "${intestino}",
  "tiempo_intestino": "${tiempoIntestino}",
  "familiar_into": "${familiarInto}",
  "grado_fam_into": "${gradoFamInto}",
  "into1": "${into1}",
  "tiempo_into1": "${tiempoInto1}",
  "into2": "${into2}",
  "tiempo_into2": "${tiempoInto2}",
  "into3": "${into3}",
  "tiempo_into3": "${tiempoInto3}",
  "into4": "${into4}",
  "tiempo_into4": "${tiempoInto4}",
  "tiene_auto": "${tieneAuto}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'edita datos medicos',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/perfil/edita_info_medica',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SignUpFinalizaCopyCall {
  static Future<ApiCallResponse> call({
    int? userId,
    String? genero = '',
    String? fumador = '',
    String? alcohol = '',
    int? peso,
    int? altura,
    String? yearCovid = '',
    String? vecesCovid = '',
    String? familiarCovid = '',
    String? gradoCovid = '',
    String? otrasEnfermedades = '',
    String? eventoFibro = '',
    String? tiempoFibro = '',
    String? empeoraSintomaFibro = '',
    String? familiarFibro = '',
    String? gradoFibro = '',
    String? tiempoEm = '',
    String? criteriosEm = '',
    String? familiarEm = '',
    String? gradoEm = '',
    String? nombreAuto = '',
    String? tiempoAuto = '',
    String? familiarAuto = '',
    String? gradoAuto = '',
    String? eventoEm = '',
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": ${userId},
  "genero": "${genero}",
  "fumador": "${fumador}",
  "alcohol": "${alcohol}",
  "peso": ${peso},
  "altura": ${altura},
  "year_covid": "${yearCovid}",
  "veces_covid": "${vecesCovid}",
  "familiar_covid": "${familiarCovid}",
  "grado_covid": "${gradoCovid}",
  "otras_enfermedades": "${otrasEnfermedades}",
  "evento_fibro": "${eventoFibro}",
  "tiempo_fibro": "${tiempoFibro}",
  "empeora_sintoma_fibro": "${empeoraSintomaFibro}",
  "familiar_fibro": "${familiarFibro}",
  "grado_fibro": "${gradoFibro}",
  "tiempo_em": "${tiempoEm}",
  "criterios_em": "${criteriosEm}",
  "evento_em": "${eventoEm}",
  "familiar_em": "${familiarEm}",
  "grado_em": "${gradoEm}",
  "nombre_auto": "${nombreAuto}",
  "tiempo_auto": "${tiempoAuto}",
  "familiar_auto": "${familiarAuto}",
  "grado_auto": "${gradoAuto}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signUp finaliza Copy',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/user/finaliza_signup',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DespEnfermedadesAutoinmunesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'desp enfermedades autoinmunes',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/desp_enfer_autoinmune',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? es(dynamic response) => (getJsonField(
        response,
        r'''$[:].enfermedad''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? en(dynamic response) => (getJsonField(
        response,
        r'''$[:].enfermedad_ingles''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DespProfesionCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'desp profesion',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/desp_profesion',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? es(dynamic response) => (getJsonField(
        response,
        r'''$[:].profesion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? en(dynamic response) => (getJsonField(
        response,
        r'''$[:].profesion_ingles''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SignUpFinalizaEmpresaCall {
  static Future<ApiCallResponse> call({
    int? userId,
    String? nifCif = '',
    String? profesion = '',
    String? numColegiado = '',
    String? direccion = '',
    String? cp = '',
    String? ciudad = '',
    String? tipoProfesional = '',
    String? nombreEmpresa = '',
    String? emailCorporativo = '',
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": ${userId},
  "nif_cif": "${nifCif}",
  "profesion": "${profesion}",
  "num_colegiado": "${numColegiado}",
  "direccion": "${direccion}",
  "cp": "${cp}",
  "ciudad": "${ciudad}",
  "tipo_profesional": "${tipoProfesional}",
  "nombre_empresa": "${nombreEmpresa}",
  "email_corporativo": "${emailCorporativo}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signUp finaliza empresa',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/user/pro_insignia',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? firebase = '',
    int? version,
    String? so = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}",
  "firebase": "${firebase}",
  "version": ${version},
  "so": "${so}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user1.id''',
      ));
  static String? nombre(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user1.nombre''',
      ));
  static String? apellidos(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user1.apellidos''',
      ));
  static String? tipoUsuario(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user1.tipo_usuario''',
      ));
  static int? perfilId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user1.perfil_id''',
      ));
  static bool? admin(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user1.admin''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user1.email''',
      ));
  static String? creadoOk(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user1.creado_ok''',
      ));
  static String? enfermedadTxt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user1.enfermedad_usuario''',
      ));
  static int? enfermedadId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user1.id_enfermedad''',
      ));
  static String? avatar(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user1.avatar.url''',
      ));
  static String? validado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user1.user_empresa_validado''',
      ));
  static int? verAcual(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user1.ver_actual''',
      ));
  static int? verNueva(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user1.ver_nueva''',
      ));
  static String? nombreEmpresa(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user1.nombre_empresa''',
      ));
}

class UserIndividualCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'user individual',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/user/individual',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? versionActual(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.ver_actual''',
      ));
  static int? versionNueva(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.ver_nueva''',
      ));
  static String? primerDiario(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.primer_diario''',
      ));
  static String? finalizoSetup(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.finalizo_setup''',
      ));
  static int? enfermedadId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id_enfermedad''',
      ));
  static String? diarioHecho(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.diario_hoy_hecho''',
      ));
  static String? suenoHecho(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.diario_sueno_hecho''',
      ));
  static String? intoHecho(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.into_hecho_hoy''',
      ));
  static String? finalizoIntolerancias(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.setup_intolerancias''',
      ));
  static String? primerInto(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.primer_diario_into''',
      ));
  static String? intoFinalizar(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.diario_into_finalizar''',
      ));
  static int? idIntoFinalizar(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id_diario_into_finalizar''',
      ));
  static String? intoEditar(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.diario_into_editar''',
      ));
  static int? idIntoEditar(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id_diario_into_editar''',
      ));
  static String? visibleBannerNews(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$._banner_home.news_visible''',
      ));
  static String? visibleBannerFriends(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$._banner_home.friends_visible''',
      ));
  static String? visibleSintomas(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$._banner_home.sintomas_visible''',
      ));
  static String? visibleInto(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$._banner_home.into_visible''',
      ));
  static String? visibleSueno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$._banner_home.sueno_visible''',
      ));
  static String? visibleResumen(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$._banner_home.resume_visible''',
      ));
  static String? visibleSalud(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$._banner_home.salud_visible''',
      ));
  static String? newsEs(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$._banner_home.banner_news_es.url''',
      ));
  static String? newsEn(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$._banner_home.banner_news_en.url''',
      ));
  static String? friendsEs(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$._banner_home.banner_friends_es.url''',
      ));
  static String? friendsEn(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$._banner_home.banner_friends_en.url''',
      ));
  static String? nombre(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nombre''',
      ));
  static String? apellidos(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.apellidos''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  static String? ranking(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ranking''',
      ));
  static String? avatar(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.avatar.url''',
      ));
  static bool? notificaciones(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.notificaciones_push''',
      ));
  static String? genero(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.genero''',
      ));
  static String? fechaNacimiento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.fecha_nacimiento_txt''',
      ));
  static String? enfermedad(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.enfermedad_usuario''',
      ));
  static int? peso(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.peso''',
      ));
  static int? altura(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.altura''',
      ));
  static String? fumador(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.fumador''',
      ));
  static String? alcohol(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.alcohol''',
      ));
  static String? nifCif(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nif_cif''',
      ));
  static String? profesion(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.profesion''',
      ));
  static String? numColegiado(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.num_colegiado''',
      ));
  static String? direccion(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.direccion''',
      ));
  static String? cp(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cp''',
      ));
  static String? ciudad(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ciudad''',
      ));
  static String? nombreEmpresa(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.nombre_empresa''',
      ));
  static String? emailEmpresa(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.email_empresa''',
      ));
  static int? diarioCuenta(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$._diario_cuenta''',
      ));
  static int? notificacionesCant(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$._notificaciones_cuenta''',
      ));
  static String? encuestasPendientes(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.encuestas_pendientes''',
      ));
  static String? chatsPendientes(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.chat_pendientes''',
      ));
}

class DiarioCreaCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'diario Crea',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/crea',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? diarioId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class DiarioUnoCall {
  static Future<ApiCallResponse> call({
    int? diarioId,
    double? nivelEnergia,
    String? manana = '',
    String? tarde = '',
    String? noche = '',
    int? fatiga,
    String? authToken = '',
    String? editando = '',
  }) async {
    final ffApiRequestBody = '''
{
  "diario_id": ${diarioId},
  "nivel_energia": ${nivelEnergia},
  "manana": "${manana}",
  "tarde": "${tarde}",
  "noche": "${noche}",
  "fatiga": ${fatiga},
  "editando": "${editando}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario Uno',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/p1',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiarioUnoCargaCall {
  static Future<ApiCallResponse> call({
    int? diarioId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'diario Uno carga',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/p1_carga',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'diario_id': diarioId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static double? nivel(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.nivel_energia''',
      ));
  static String? manana(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.menos_energia_manana''',
      ));
  static String? tarde(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.menos_energia_tarde''',
      ));
  static String? noche(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.menos_energia_noche''',
      ));
  static int? fatiga(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.nivel_fatiga_energia''',
      ));
}

class DiarioDosCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? diarioId,
    int? dolor,
    int? migrana,
    int? afectacion,
    String? editando = '',
    String? dolorTxt = '',
    String? migranaTxt = '',
  }) async {
    final ffApiRequestBody = '''
{
  "diario_id": ${diarioId},
  "dolor": ${dolor},
  "migrana": ${migrana},
  "afectacion": ${afectacion},
  "editando": "${editando}",
  "dolor_txt": "${dolorTxt}",
  "migrana_txt": "${migranaTxt}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario Dos',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/p2',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiarioDosCargaCall {
  static Future<ApiCallResponse> call({
    int? diarioId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'diario Dos carga',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/p2_carga',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'diario_id': diarioId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? dolor(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.intensidad_dolor_num''',
      ));
  static int? migrana(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.intensidad_migrana_num''',
      ));
  static int? afecta(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.afectacion_dolor_diarias''',
      ));
  static String? dolorTxt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dolor_txt''',
      ));
  static String? migranaTxt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.migrana_txt''',
      ));
}

class DiarioCuatroCall {
  static Future<ApiCallResponse> call({
    int? diarioId,
    String? authToken = '',
    String? trabajo = '',
    String? estudios = '',
    String? familia = '',
    String? hogar = '',
    String? social = '',
    String? ejercicio = '',
    String? caminar = '',
    String? leer = '',
    String? higiene = '',
    String? otros = '',
    int? contador,
    String? editando = '',
    String? cama = '',
  }) async {
    final ffApiRequestBody = '''
{
  "diario_id": ${diarioId},
  "trabajo": "${trabajo}",
  "estudios": "${estudios}",
  "familia": "${familia}",
  "hogar": "${hogar}",
  "social": "${social}",
  "ejercicio": "${ejercicio}",
  "caminar": "${caminar}",
  "leer": "${leer}",
  "higiene": "${higiene}",
  "otros": "${otros}",
  "contador": ${contador},
  "editando": "${editando}",
  "cama": "${cama}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario Cuatro',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/p3',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiarioCuatroCargaCall {
  static Future<ApiCallResponse> call({
    int? diarioId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'diario Cuatro carga',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/p3_carga',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'diario_id': diarioId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? trabajo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.act_realizada_trabajo''',
      ));
  static String? estudios(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.act_realizada_estudios''',
      ));
  static String? familia(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.act_realizada_familia''',
      ));
  static String? hogar(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.act_realizada_hogar''',
      ));
  static String? social(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.act_realizada_social''',
      ));
  static String? ejercicio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.act_realizada_ejercicio''',
      ));
  static String? caminar(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.act_realizada_caminar''',
      ));
  static String? leer(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.act_realizada_leer''',
      ));
  static String? higiene(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.act_realizada_higiene''',
      ));
  static String? otro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.act_realizada_otro''',
      ));
  static int? contadorP3(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.contador_p3''',
      ));
}

class DiarioTresCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? diarioId,
    String? cefalea = '',
    String? garganta = '',
    String? hombroIzq = '',
    String? hombroDer = '',
    String? pecho = '',
    String? codoIzq = '',
    String? codoDer = '',
    String? abdomen = '',
    String? munecaIzqF = '',
    String? munecaDerF = '',
    String? musloIzq = '',
    String? musloDer = '',
    String? rodillaIzq = '',
    String? rodillaDer = '',
    String? tobilloIzq = '',
    String? tobilloDer = '',
    String? cervical = '',
    String? espalda = '',
    String? lumbar = '',
    String? munecaIzqB = '',
    String? munecaDerB = '',
    String? gluteoIzq = '',
    String? gluteoDer = '',
    int? contador,
    String? editando = '',
    String? otro = '',
  }) async {
    final ffApiRequestBody = '''
{
  "diario_id": ${diarioId},
  "cefalea": "${cefalea}",
  "garganta": "${garganta}",
  "hombroIzq": "${hombroIzq}",
  "hombroDer": "${hombroDer}",
  "pecho": "${pecho}",
  "codoIzq": "${codoIzq}",
  "codoDer": "${codoDer}",
  "abdomen": "${abdomen}",
  "munecaIzqF": "${munecaIzqF}",
  "munecaDerF": "${munecaDerF}",
  "musloIzq": "${musloIzq}",
  "musloDer": "${musloDer}",
  "rodillaIzq": "${rodillaIzq}",
  "rodillaDer": "${rodillaDer}",
  "tobilloIzq": "${tobilloIzq}",
  "tobilloDer": "${tobilloDer}",
  "cervical": "${cervical}",
  "espalda": "${espalda}",
  "lumbar": "${lumbar}",
  "munecaIzqB": "${munecaIzqB}",
  "munecaDerB": "${munecaDerB}",
  "gluteoIzq": "${gluteoIzq}",
  "gluteoDer": "${gluteoDer}",
  "contador": ${contador},
  "editando": "${editando}",
  "otro": "${otro}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario Tres',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/p3_dolores',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiarioTresCargaCall {
  static Future<ApiCallResponse> call({
    int? diarioId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'diario Tres carga',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/p3_dolores_carga',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'diario_id': diarioId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? garganta(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dolor_garganta''',
      ));
  static String? hombroIzq(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dolor_de_hombro_izquierdo''',
      ));
  static String? ombroDer(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dolor_de_hombro_derecho''',
      ));
  static String? pecho(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dolor_de_pecho_del_lado_izquierdo''',
      ));
  static String? codoIzq(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dolor_de_codo_izquierdo''',
      ));
  static String? codoDer(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dolor_de_codo_derecho''',
      ));
  static String? abdomen(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dolor_abdominal''',
      ));
  static String? munIzq(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dolor_de_muneca_izquierda''',
      ));
  static String? munDer(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dolor_de_muneca_derecha''',
      ));
  static String? musloIzq(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dolor_del_muslo_izquierdo''',
      ));
  static String? musloDer(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dolor_del_muslo_derecho''',
      ));
  static String? rodillaIz(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dolor_de_rodilla_derecha''',
      ));
  static String? rodillaDer(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dolor_de_rodilla_izquierda''',
      ));
  static String? tobilloIz(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dolor_de_tobillo_izquierdo''',
      ));
  static String? tobilloDer(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dolor_de_tobillo_derecho''',
      ));
  static String? cervica(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dolor_cervical''',
      ));
  static String? espalda(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dolor_de_espalda_toracico''',
      ));
  static String? lumbar(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dolor_lumbar''',
      ));
  static String? munecaIzq(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dolor_de_muneca_izquierda_espalda''',
      ));
  static String? munecaDer(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dolor_de_muneca_derecha_espalda''',
      ));
  static String? gluteoIzq(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dolor_en_la_region_glutea_superior_izquierda''',
      ));
  static String? gluteoDer(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dolor_en_la_region_glutea_superior_derecha''',
      ));
  static String? otrosFrente(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dolor_otros_frente''',
      ));
  static String? otrosEspalda(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dolor_otros_espalda''',
      ));
  static int? contadorP3(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.contador_p3_dolor''',
      ));
  static String? cabeza(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cefalea''',
      ));
}

class DiarioCincoCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? diarioId,
    int? insomnio,
    int? nauseas,
    int? vomitos,
    int? diarrea,
    int? fiebre,
    int? frio,
    int? tos,
    int? difRespirar,
    int? luz,
    int? ruido,
    int? olores,
    int? cognitiva,
    int? nieblaMental,
    int? visionBorrosa,
    int? debMuscular,
    int? espasmosMusc,
    int? ortostatica,
    int? postEsfuerzo,
    int? palpitaciones,
    int? olfato,
    int? gusto,
    int? tristeza,
    int? ansiedad,
    int? cefalea,
    int? articular,
    String? editando = '',
  }) async {
    final ffApiRequestBody = '''
{
  "diario_id": ${diarioId},
  "insomnio": ${insomnio},
  "nauseas": ${nauseas},
  "vomitos": ${vomitos},
  "diarrea": ${diarrea},
  "fiebre": ${fiebre},
  "frio": ${frio},
  "tos": ${tos},
  "dif_respirar": ${difRespirar},
  "luz": ${luz},
  "ruido": ${ruido},
  "olores": ${olores},
  "cognitiva": ${cognitiva},
  "niebla_mental": ${nieblaMental},
  "vision_borrosa": ${visionBorrosa},
  "deb_muscular": ${debMuscular},
  "espasmos_musc": ${espasmosMusc},
  "ortostatica": ${ortostatica},
  "post_esfuerzo": ${postEsfuerzo},
  "palpitaciones": ${palpitaciones},
  "olfato": ${olfato},
  "gusto": ${gusto},
  "tristeza": ${tristeza},
  "ansiedad": ${ansiedad},
  "cefalea": ${cefalea},
  "articular": ${articular},
  "editando": "${editando}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario Cinco',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/p5',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiarioCincoCargaCall {
  static Future<ApiCallResponse> call({
    int? diarioId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'diario Cinco carga',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/p5_carga',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'diario_id': diarioId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? cefalea(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_dolor_cabeza''',
      ));
  static int? insomnio(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_insomnio''',
      ));
  static int? nauseas(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_nauseas''',
      ));
  static int? vomitos(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_vomitos''',
      ));
  static int? luz(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_sensible_luz''',
      ));
  static int? ruido(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_sensible_ruido''',
      ));
  static int? olores(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_sensible_olores''',
      ));
  static int? diarrea(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_diarrea''',
      ));
  static int? fiebre(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_fiebre''',
      ));
  static int? frio(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_frio''',
      ));
  static int? tristeza(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_depresion''',
      ));
  static int? ansiedad(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_ansiedad''',
      ));
  static int? cognitiva(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_d_cognitiva''',
      ));
  static int? mental(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_niebla_mental''',
      ));
  static int? borrosa(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_vision_borrosa''',
      ));
  static int? orto(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_int_ortostatica''',
      ));
  static int? olfato(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_perdida_olfato''',
      ));
  static int? muscular(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_deb_muscular''',
      ));
  static int? espasmos(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_espasmo_musc''',
      ));
  static int? palpitaciones(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_palpitaciones''',
      ));
  static int? gusto(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_perdida_gusto''',
      ));
  static int? articular(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_dolor_articular''',
      ));
  static int? tos(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_tos''',
      ));
  static int? respirar(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_dif_respirar''',
      ));
  static int? esfuerzo(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_esfuerzo''',
      ));
}

class DespDesencadenantesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'despDesencadenantes',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/desp_desencadenantes',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? es(dynamic response) => (getJsonField(
        response,
        r'''$[:].es''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? en(dynamic response) => (getJsonField(
        response,
        r'''$[:].en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DespSolucionesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'desp soluciones',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/desp_soluciones',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? es(dynamic response) => (getJsonField(
        response,
        r'''$[:].solucion_es''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? en(dynamic response) => (getJsonField(
        response,
        r'''$[:].solucion_en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DiarioSeisCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? diarioId,
    String? desencadenante = '',
    String? solucion = '',
    String? med1 = '',
    String? med2 = '',
    String? vit = '',
    int? contador,
    String? editando = '',
  }) async {
    final ffApiRequestBody = '''
{
  "diario_id": ${diarioId},
  "desencadenante": "${desencadenante}",
  "solucion": "${solucion}",
  "med1": "${med1}",
  "med2": "${med2}",
  "vit": "${vit}",
  "contador": ${contador},
  "editando": "${editando}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario Seis',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/p6',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiarioSeisCargaCall {
  static Future<ApiCallResponse> call({
    int? diarioId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'diario Seis carga',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/p6_carga',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'diario_id': diarioId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? desencadenante(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.desencadenante''',
      ));
  static String? solucion(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.solucion''',
      ));
  static String? med1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.medicamento''',
      ));
  static String? med2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.medicamento_2''',
      ));
  static String? vit(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.vitamina''',
      ));
  static int? contador(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.contador_p6''',
      ));
}

class DiarioBuscadorMedicamentoCall {
  static Future<ApiCallResponse> call({
    String? idioma = '',
    String? nombre = '',
  }) async {
    final ffApiRequestBody = '''
{
  "idioma": "${idioma}",
  "nombre": "${nombre}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario buscador medicamento',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/busca_medicamento',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nombreEs(dynamic response) => (getJsonField(
        response,
        r'''$[:].nombre''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? nombreEn(dynamic response) => (getJsonField(
        response,
        r'''$[:].nombre_en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DiarioUltimosMedsCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'diario ultimos meds',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/ultimos_meds',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? med1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.med1''',
      ));
  static String? med2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.med2''',
      ));
  static String? sup1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sup''',
      ));
  static String? sup2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sup2''',
      ));
  static String? sup3(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sup3''',
      ));
  static String? medSueno(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.med_sueno''',
      ));
  static String? supSueno(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sup_sueno''',
      ));
}

class DespMejoraSintomasCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'desp mejora sintomas',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/desp_mejora_sintomas',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? mejora(dynamic response) => (getJsonField(
        response,
        r'''$[:].mejora''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DespEmpeoraSintomasCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'desp empeora sintomas',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/desp_empeora_sintomas',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? empeora(dynamic response) => (getJsonField(
        response,
        r'''$[:].mejora''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DiarioSieteCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? diarioId,
    String? med1 = '',
    String? conAlivio = '',
    String? sinAlivio = '',
    String? mejora1 = '',
    String? mejora2 = '',
    String? mejora3 = '',
    String? mejora4 = '',
    String? mejora5 = '',
    String? empeora1 = '',
    String? empeora2 = '',
    String? empeora3 = '',
    String? empeora4 = '',
    String? empeora5 = '',
    String? notas = '',
    String? editando = '',
  }) async {
    final ffApiRequestBody = '''
{
  "diario_id": ${diarioId},
  "med1": "${med1}",
  "con_alivio": "${conAlivio}",
  "sin_alivio": "${sinAlivio}",
  "mejora1": "${mejora1}",
  "mejora2": "${mejora2}",
  "mejora3": "${mejora3}",
  "mejora4": "${mejora4}",
  "mejora5": "${mejora5}",
  "empeora1": "${empeora1}",
  "empeora2": "${empeora2}",
  "empeora3": "${empeora3}",
  "empeora4": "${empeora4}",
  "empeora5": "${empeora5}",
  "notas": "${notas}",
  "editando": "${editando}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario Siete',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/p7',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiarioOchoCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? diarioId,
    String? med1 = '',
    String? conAlivio = '',
    String? sinAlivio = '',
    String? mejora1 = '',
    String? mejora2 = '',
    String? mejora3 = '',
    String? mejora4 = '',
    String? mejora5 = '',
    String? empeora1 = '',
    String? empeora2 = '',
    String? empeora3 = '',
    String? empeora4 = '',
    String? empeora5 = '',
    String? notas = '',
    String? editando = '',
  }) async {
    final ffApiRequestBody = '''
{
  "diario_id": ${diarioId},
  "med1": "${med1}",
  "con_alivio": "${conAlivio}",
  "sin_alivio": "${sinAlivio}",
  "mejora1": "${mejora1}",
  "mejora2": "${mejora2}",
  "mejora3": "${mejora3}",
  "mejora4": "${mejora4}",
  "mejora5": "${mejora5}",
  "empeora1": "${empeora1}",
  "empeora2": "${empeora2}",
  "empeora3": "${empeora3}",
  "empeora4": "${empeora4}",
  "empeora5": "${empeora5}",
  "notas": "${notas}",
  "editando": "${editando}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario Ocho',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/p8',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiarioNueveCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? diarioId,
    String? med1 = '',
    String? conAlivio = '',
    String? sinAlivio = '',
    String? mejora1 = '',
    String? mejora2 = '',
    String? mejora3 = '',
    String? mejora4 = '',
    String? mejora5 = '',
    String? empeora1 = '',
    String? empeora2 = '',
    String? empeora3 = '',
    String? empeora4 = '',
    String? empeora5 = '',
    String? notas = '',
    int? numSuplemento,
  }) async {
    final ffApiRequestBody = '''
{
  "diario_id": ${diarioId},
  "med1": "${med1}",
  "con_alivio": "${conAlivio}",
  "sin_alivio": "${sinAlivio}",
  "mejora1": "${mejora1}",
  "mejora2": "${mejora2}",
  "mejora3": "${mejora3}",
  "mejora4": "${mejora4}",
  "mejora5": "${mejora5}",
  "empeora1": "${empeora1}",
  "empeora2": "${empeora2}",
  "empeora3": "${empeora3}",
  "empeora4": "${empeora4}",
  "empeora5": "${empeora5}",
  "notas": "${notas}",
  "num_suplemento": ${numSuplemento}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario Nueve',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/p9',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiarioBuscadorSuplementosCall {
  static Future<ApiCallResponse> call({
    String? idioma = '',
    String? nombre = '',
  }) async {
    final ffApiRequestBody = '''
{
  "idioma": "${idioma}",
  "nombre": "${nombre}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario buscador suplementos',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/busca_suplemento',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  static String? es(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nombre''',
      ));
  static String? en(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nombre_en''',
      ));
}

class DiarioFinalizaCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? idDiario,
  }) async {
    final ffApiRequestBody = '''
{
  "id_diario": ${idDiario}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario finaliza',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/finaliza',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiarioPantallaFinalCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'diario pantalla final',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/pantalla_fin',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? push(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.push_notification_txt''',
      ));
  static String? ranking(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ranking''',
      ));
  static String? mensajePush(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mensaje_notificaciones_diarios''',
      ));
}

class DiarioInfoSelectorCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'diario info selector',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/info_selector',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? ultimaPantalla(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.ult_pantalla_diario_sintoma''',
      ));
  static String? diarioParaEditar(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.diarios_para_editar''',
      ));
  static String? diarioFinalizar(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.diarios_para_finalizar''',
      ));
  static String? diarioHoyHecho(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.diario_hoy_hecho''',
      ));
  static int? idDiarioFinalizar(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.tmp_id_diario_finalizar''',
      ));
  static int? idDiarioEditar(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.tmp_id_diario_editar''',
      ));
  static String? intoDiarioHechoHoy(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.into_hecho_hoy''',
      ));
  static String? intoFinalizar(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.diario_into_finalizar''',
      ));
  static int? idIntoFinalizar(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id_diario_into_finalizar''',
      ));
  static int? momentoIntoFinalizar(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.comida_into_finalizar''',
      ));
  static String? intoEditar(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.diario_into_editar''',
      ));
  static int? idIntoEditar(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id_diario_into_editar''',
      ));
  static String? pantallIntoFinalizar(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pantalla_into_finalizar''',
      ));
}

class DiarioInfoPushCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'diario info push',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/mensaje_push',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? mensaje(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.mensaje_notificaciones_diarios''',
      ));
}

class DiarioActivaPushCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? accion = '',
  }) async {
    final ffApiRequestBody = '''
{
  "accion": "${accion}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario activa push',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/user/activa_push',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiarioDuplicaCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'diario duplica',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/user_duplica',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DespIntoleranciasCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'desp intolerancias',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/despelgables/intolerancias',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? es(dynamic response) => (getJsonField(
        response,
        r'''$[:].intolerancias''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? en(dynamic response) => (getJsonField(
        response,
        r'''$[:].en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DiarioFinalizaSetupCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? autoinmune = '',
    String? nombreAuto = '',
    String? tiempoAuto = '',
    String? familiarAuto = '',
    String? gradoAuto = '',
    String? intestino = '',
    String? tiempoIntestino = '',
    String? familiarInto = '',
    String? gradoInto = '',
    String? into1 = '',
    String? tiempoInto1 = '',
    String? into2 = '',
    String? tiempoInto2 = '',
    String? into3 = '',
    String? tiempoInto3 = '',
    String? into4 = '',
    String? tiempoInto4 = '',
  }) async {
    final ffApiRequestBody = '''
{
  "autoinmune": "${autoinmune}",
  "nombre_auto": "${nombreAuto}",
  "tiempo_auto": "${tiempoAuto}",
  "familiar_auto": "${familiarAuto}",
  "grado_auto": "${gradoAuto}",
  "intestino": "${intestino}",
  "tiempo_intestino": "${tiempoIntestino}",
  "familiar_into": "${familiarInto}",
  "grado_into": "${gradoInto}",
  "into1": "${into1}",
  "tiempo_into1": "${tiempoInto1}",
  "into2": "${into2}",
  "tiempo_into2": "${tiempoInto2}",
  "into3": "${into3}",
  "tiempo_into3": "${tiempoInto3}",
  "into4": "${into4}",
  "tiempo_into4": "${tiempoInto4}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario finaliza setup',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/setup',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiarioFinalizaSetupIntoCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? autoinmune = '',
    String? nombreAuto = '',
    String? tiempoAuto = '',
    String? familiarAuto = '',
    String? gradoAuto = '',
    String? intestino = '',
    String? tiempoIntestino = '',
    String? familiarInto = '',
    String? gradoInto = '',
    String? into1 = '',
    String? tiempoInto1 = '',
    String? into2 = '',
    String? tiempoInto2 = '',
    String? into3 = '',
    String? tiempoInto3 = '',
    String? into4 = '',
    String? tiempoInto4 = '',
  }) async {
    final ffApiRequestBody = '''
{
  "autoinmune": "${autoinmune}",
  "nombre_auto": "${nombreAuto}",
  "tiempo_auto": "${tiempoAuto}",
  "familiar_auto": "${familiarAuto}",
  "grado_auto": "${gradoAuto}",
  "intestino": "${intestino}",
  "tiempo_intestino": "${tiempoIntestino}",
  "familiar_into": "${familiarInto}",
  "grado_into": "${gradoInto}",
  "into1": "${into1}",
  "tiempo_into1": "${tiempoInto1}",
  "into2": "${into2}",
  "tiempo_into2": "${tiempoInto2}",
  "into3": "${into3}",
  "tiempo_into3": "${tiempoInto3}",
  "into4": "${into4}",
  "tiempo_into4": "${tiempoInto4}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario finaliza setup Into',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diario/setup_into',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SuenoCreaDiarioCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'sueno crea diario',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diarioSueno/crea',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sueno.id''',
      ));
}

class DiarioSuenoUnoCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? diarioId,
    double? horas,
    String? conciliar = '',
    String? mantener = '',
    String? calidadTxt = '',
    String? fatiga = '',
    String? medicamento = '',
    String? suplemento = '',
    int? calidadNum,
    String? oscuro = '',
    String? antifaz = '',
    String? tapones = '',
    String? movil = '',
    String? cena = '',
    String? medicacion = '',
    String? suplementos = '',
    String? otras = '',
    String? nada = '',
    int? contadorConciliar,
    int? contadorMantener,
    int? contadorCalidad,
    int? contadorFatiga,
    int? contadorEstrategia,
  }) async {
    final ffApiRequestBody = '''
{
  "diario_id": ${diarioId},
  "horas": ${horas},
  "conciliar": "${conciliar}",
  "mantener": "${mantener}",
  "calidad_txt": "${calidadTxt}",
  "fatiga": "${fatiga}",
  "medicamento": "${medicamento}",
  "suplemento": "${suplemento}",
  "calidad_num": ${calidadNum},
  "oscuro": "${oscuro}",
  "antifaz": "${antifaz}",
  "tapones": "${tapones}",
  "movil": "${movil}",
  "cena": "${cena}",
  "medicacion": "${medicacion}",
  "suplementos": "${suplementos}",
  "otras": "${otras}",
  "nada": "${nada}",
  "contador_conciliar": ${contadorConciliar},
  "contador_mantener": ${contadorMantener},
  "contador_calidad": ${contadorCalidad},
  "contador_fatiga": ${contadorFatiga},
  "contador_estrategia": ${contadorEstrategia}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario sueno Uno',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diarioSueno/p1',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiarioSuenoUnoCargaCall {
  static Future<ApiCallResponse> call({
    int? diarioId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'diario sueno Uno carga',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diarioSueno/p1_carga',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'diario_id': diarioId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? horas(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.horas_sueno''',
      ));
  static String? conciliar(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tardo_conciliar''',
      ));
  static String? mantener(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dif_dormir''',
      ));
  static int? calidadNum(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.calidad_sueno_num''',
      ));
  static String? calidadTxt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.calidad_sueno_txt''',
      ));
  static String? fatiga(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.despertar_con_fatiga''',
      ));
  static String? oscuro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.est_descanso_cuarto_oscuro''',
      ));
  static String? antifaz(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.est_antifaz''',
      ));
  static String? tapones(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.est_tapones''',
      ));
  static String? movil(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.est_no_movil''',
      ));
  static String? cena(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.est_no_cena''',
      ));
  static String? suplemento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.est_suplementos''',
      ));
  static String? medicacion(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.est_medicacion''',
      ));
  static String? otras(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.est_otras''',
      ));
  static String? nada(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.est_sin_prueba''',
      ));
  static String? med(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.med_para_dormir''',
      ));
  static String? sup(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sup_para_dormir''',
      ));
  static int? contadorConcilia(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.contador_conciliar''',
      ));
  static int? contadorMantener(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.contador_mantener''',
      ));
  static int? contadorCalidad(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.contador_calidad''',
      ));
  static int? contadorFatiga(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.contador_fatiga''',
      ));
  static int? contadorEstrategia(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.contador_estrategias''',
      ));
}

class DiarioSuenoFinalizaCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? diarioId,
  }) async {
    final ffApiRequestBody = '''
{
  "diario_id": ${diarioId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario sueno finaliza',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diarioSueno/finaliza',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiarioSuenoDosCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? diarioId,
    String? med1 = '',
    String? mejora = '',
  }) async {
    final ffApiRequestBody = '''
{
  "diario_id": ${diarioId},
  "med1": "${med1}",
  "mejora": "${mejora}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario sueno Dos',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diarioSueno/p2',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiarioSuenoTresCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? diarioId,
    String? med1 = '',
    String? mejora = '',
  }) async {
    final ffApiRequestBody = '''
{
  "diario_id": ${diarioId},
  "med1": "${med1}",
  "mejora": "${mejora}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario sueno Tres',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diarioSueno/p3',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiarioIntoCreaCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'diario into crea',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diarioIntolerancias/crea',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class DiarioIntoAyerCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? respuesta = '',
    int? diarioAnterior,
  }) async {
    final ffApiRequestBody = '''
{
  "respuesta": "${respuesta}",
  "diario_anterior": ${diarioAnterior}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario into ayer',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diarioIntolerancias/ayer',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DespComidaCarneCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'desp comida carne',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/desp_comida_carne',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? es(dynamic response) => (getJsonField(
        response,
        r'''$[:].comida''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? en(dynamic response) => (getJsonField(
        response,
        r'''$[:].comida_en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DiarioIntoleranciaUnoCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? diarioId,
    int? momento,
    int? contadorComida,
    String? carne = '',
    String? pescado = '',
    String? marisco = '',
    String? lacteos = '',
    String? huevos = '',
    String? cereales = '',
    String? frutas = '',
    String? verduras = '',
    String? legumbres = '',
    String? frutoSecos = '',
    String? salsas = '',
    String? bebidas = '',
    String? editandoDiario = '',
  }) async {
    final ffApiRequestBody = '''
{
  "diario_id": ${diarioId},
  "momento": ${momento},
  "contador_comida": ${contadorComida},
  "carne": "${carne}",
  "pescado": "${pescado}",
  "marisco": "${marisco}",
  "lacteos": "${lacteos}",
  "huevos": "${huevos}",
  "cereales": "${cereales}",
  "frutas": "${frutas}",
  "verduras": "${verduras}",
  "legumbres": "${legumbres}",
  "fruto_secos": "${frutoSecos}",
  "salsas": "${salsas}",
  "bebidas": "${bebidas}",
  "editandoDiario": "${editandoDiario}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario intolerancia Uno',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diarioIntolerancias/p1',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiarioIntoleranciaUnoCargaCall {
  static Future<ApiCallResponse> call({
    int? diarioId,
    int? momento,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'diario intolerancia Uno Carga',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diarioIntolerancias/p1_carga',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'diario_id': diarioId,
        'momento': momento,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? carneD(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.carne_desayuno''',
      ));
  static String? pescadoD(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.pescado_desayuno''',
      ));
  static String? mariscoD(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.marisco_desayuno''',
      ));
  static String? lacteoD(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.lacteo_desayuno''',
      ));
  static String? huevosD(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.huevos_desayuno''',
      ));
  static String? cerealesD(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cereales_desayuno''',
      ));
  static String? frutasD(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.frutas_desayuno''',
      ));
  static String? verdurasD(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.verduras_desayuno''',
      ));
  static String? legumbresD(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_desayuno''',
      ));
  static String? secosD(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_desayuno''',
      ));
  static String? salsasD(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_desayuno''',
      ));
  static String? bebidasD(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bebidas_desayuno''',
      ));
  static int? contadorD(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.contador_desayuno''',
      ));
  static String? carneC(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.carne_comida''',
      ));
  static String? pescadoC(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.pescado_comida''',
      ));
  static String? mariscoC(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.marisco_comida''',
      ));
  static String? lacteoC(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.lacteo_comida''',
      ));
  static String? huevosC(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.huevos_comida''',
      ));
  static String? cerealesC(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cereales_comida''',
      ));
  static String? frutasC(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.frutas_comida''',
      ));
  static String? verdurasC(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.verduras_comida''',
      ));
  static String? legumbresC(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_comida''',
      ));
  static String? secosC(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_comida''',
      ));
  static String? salsaC(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_comida''',
      ));
  static String? bebidasC(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bebidas_comida''',
      ));
  static int? contadorC(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.contador_comida''',
      ));
  static String? carneCena(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.carne_cena''',
      ));
  static String? pescadoCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_cena''',
      ));
  static String? mariscoCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_cena''',
      ));
  static String? lacteoCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_cena''',
      ));
  static String? huevosCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.huevos_cena''',
      ));
  static String? cerealesCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_cena''',
      ));
  static String? frutasCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_cena''',
      ));
  static String? verdurasCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_cena''',
      ));
  static String? legumbresCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_cena''',
      ));
  static String? secosCena(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_cena''',
      ));
  static String? salsasCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_cena''',
      ));
  static String? bebidasCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_cena''',
      ));
  static int? contadorCena(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.contador_cena''',
      ));
}

class DespComidaPescadoCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'desp comida pescado',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/desp_comida_pescado',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? es(dynamic response) => (getJsonField(
        response,
        r'''$[:].comida''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? en(dynamic response) => (getJsonField(
        response,
        r'''$[:].comida_en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DespComidaMariscosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'desp comida mariscos',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/desp_comida_mariscos',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? es(dynamic response) => (getJsonField(
        response,
        r'''$[:].comida''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? en(dynamic response) => (getJsonField(
        response,
        r'''$[:].en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DespComidaLacteosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'desp comida lacteos',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/desp_comida_lacteos',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? es(dynamic response) => (getJsonField(
        response,
        r'''$[:].comida''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? en(dynamic response) => (getJsonField(
        response,
        r'''$[:].en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DespComidaHuevosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'desp comida huevos',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/desp_comida_huevos',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? es(dynamic response) => (getJsonField(
        response,
        r'''$[:].comida''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? en(dynamic response) => (getJsonField(
        response,
        r'''$[:].en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DespComidaCerealesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'desp comida cereales',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/desp_comida_cereales',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? es(dynamic response) => (getJsonField(
        response,
        r'''$[:].comida''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? en(dynamic response) => (getJsonField(
        response,
        r'''$[:].en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DespComidaFrutasCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'desp comida frutas',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/desp_comida_frutas',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? es(dynamic response) => (getJsonField(
        response,
        r'''$[:].comida''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? en(dynamic response) => (getJsonField(
        response,
        r'''$[:].en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class DespComidaVerdurasCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'desp comida verduras',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/desp_comida_verduras',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? es(dynamic response) => (getJsonField(
        response,
        r'''$[:].comida''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? en(dynamic response) => (getJsonField(
        response,
        r'''$[:].en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DespComidaLegumbresCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'desp comida legumbres',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/desp_comida_legumbres',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? es(dynamic response) => (getJsonField(
        response,
        r'''$[:].comida''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? en(dynamic response) => (getJsonField(
        response,
        r'''$[:].en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DespComidaFrutosSecosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'desp comida frutos secos',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/desp_comida_frutos_secos',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? es(dynamic response) => (getJsonField(
        response,
        r'''$[:].comida''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? en(dynamic response) => (getJsonField(
        response,
        r'''$[:].en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DespComidasCondimentosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'desp comidas  condimentos',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/desp_comida_condimento',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? es(dynamic response) => (getJsonField(
        response,
        r'''$[:].comida''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? en(dynamic response) => (getJsonField(
        response,
        r'''$[:].en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DespComidaBebidasCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'desp comida bebidas',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/desp_comida_bebidas',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? es(dynamic response) => (getJsonField(
        response,
        r'''$[:].comida''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? en(dynamic response) => (getJsonField(
        response,
        r'''$[:].en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DiarioIntoleranciaDosCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? diarioId,
    int? momento,
    String? carne1 = '',
    String? carne2 = '',
    String? carne3 = '',
    String? carne4 = '',
    String? carne5 = '',
    String? carne6 = '',
    String? carne7 = '',
    String? pescado1 = '',
    String? pescado2 = '',
    String? pescado3 = '',
    String? pescado4 = '',
    String? pescado5 = '',
    String? pescado6 = '',
    String? pescado7 = '',
    String? marisco1 = '',
    String? marisco2 = '',
    String? marisco3 = '',
    String? marisco4 = '',
    String? marisco5 = '',
    String? marisco6 = '',
    String? marisco7 = '',
    String? lacteos1 = '',
    String? lacteos2 = '',
    String? lacteos3 = '',
    String? lacteos4 = '',
    String? lacteos5 = '',
    String? lacteos6 = '',
    String? lacteos7 = '',
    String? huevos1 = '',
    String? cereales1 = '',
    String? cereales2 = '',
    String? cereales3 = '',
    String? cereales4 = '',
    String? cereales5 = '',
    String? cereales6 = '',
    String? cereales7 = '',
    String? frutas1 = '',
    String? frutas2 = '',
    String? frutas3 = '',
    String? frutas4 = '',
    String? frutas5 = '',
    String? frutas6 = '',
    String? frutas7 = '',
    String? verduras1 = '',
    String? verduras2 = '',
    String? verduras3 = '',
    String? verduras4 = '',
    String? verduras5 = '',
    String? verduras6 = '',
    String? verduras7 = '',
    String? legumbres1 = '',
    String? legumbres2 = '',
    String? legumbres3 = '',
    String? legumbres4 = '',
    String? legumbres5 = '',
    String? legumbres6 = '',
    String? legumbres7 = '',
    String? secos1 = '',
    String? secos2 = '',
    String? secos3 = '',
    String? secos4 = '',
    String? secos5 = '',
    String? secos6 = '',
    String? secos7 = '',
    String? salsas1 = '',
    String? salsas2 = '',
    String? salsas3 = '',
    String? salsas4 = '',
    String? salsas5 = '',
    String? salsas6 = '',
    String? salsas7 = '',
    String? bebidas1 = '',
    String? bebidas2 = '',
    String? bebidas3 = '',
    String? bebidas4 = '',
    String? bebidas5 = '',
    String? bebidas6 = '',
    String? bebidas7 = '',
    String? sintoma = '',
    String? editandoDiario = '',
  }) async {
    final ffApiRequestBody = '''
{
  "diario_id": ${diarioId},
  "momento": ${momento},
  "carne1": "${carne1}",
  "carne2": "${carne2}",
  "carne3": "${carne3}",
  "carne4": "${carne4}",
  "carne5": "${carne5}",
  "carne6": "${carne6}",
  "carne7": "${carne7}",
  "pescado1": "${pescado1}",
  "pescado2": "${pescado2}",
  "pescado3": "${pescado3}",
  "pescado4": "${pescado4}",
  "pescado5": "${pescado5}",
  "pescado6": "${pescado6}",
  "pescado7": "${pescado7}",
  "marisco1": "${marisco1}",
  "marisco2": "${marisco2}",
  "marisco3": "${marisco3}",
  "marisco4": "${marisco4}",
  "marisco5": "${marisco5}",
  "marisco6": "${marisco6}",
  "marisco7": "${marisco7}",
  "lacteos1": "${lacteos1}",
  "lacteos2": "${lacteos2}",
  "lacteos3": "${lacteos3}",
  "lacteos4": "${lacteos4}",
  "lacteos5": "${lacteos5}",
  "lacteos6": "${lacteos6}",
  "lacteos7": "${lacteos7}",
  "huevos1": "${huevos1}",
  "cereales1": "${cereales1}",
  "cereales2": "${cereales2}",
  "cereales3": "${cereales3}",
  "cereales4": "${cereales4}",
  "cereales5": "${cereales5}",
  "cereales6": "${cereales6}",
  "cereales7": "${cereales7}",
  "frutas1": "${frutas1}",
  "frutas2": "${frutas2}",
  "frutas3": "${frutas3}",
  "frutas4": "${frutas4}",
  "frutas5": "${frutas5}",
  "frutas6": "${frutas6}",
  "frutas7": "${frutas7}",
  "verduras1": "${verduras1}",
  "verduras2": "${verduras2}",
  "verduras3": "${verduras3}",
  "verduras4": "${verduras4}",
  "verduras5": "${verduras5}",
  "verduras6": "${verduras6}",
  "verduras7": "${verduras7}",
  "legumbres1": "${legumbres1}",
  "legumbres2": "${legumbres2}",
  "legumbres3": "${legumbres3}",
  "legumbres4": "${legumbres4}",
  "legumbres5": "${legumbres5}",
  "legumbres6": "${legumbres6}",
  "legumbres7": "${legumbres7}",
  "secos1": "${secos1}",
  "secos2": "${secos2}",
  "secos3": "${secos3}",
  "secos4": "${secos4}",
  "secos5": "${secos5}",
  "secos6": "${secos6}",
  "secos7": "${secos7}",
  "salsas1": "${salsas1}",
  "salsas2": "${salsas2}",
  "salsas3": "${salsas3}",
  "salsas4": "${salsas4}",
  "salsas5": "${salsas5}",
  "salsas6": "${salsas6}",
  "salsas7": "${salsas7}",
  "bebidas1": "${bebidas1}",
  "bebidas2": "${bebidas2}",
  "bebidas3": "${bebidas3}",
  "bebidas4": "${bebidas4}",
  "bebidas5": "${bebidas5}",
  "bebidas6": "${bebidas6}",
  "bebidas7": "${bebidas7}",
  "sintoma": "${sintoma}",
  "editandoDiario": "${editandoDiario}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario intolerancia Dos',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diarioIntolerancias/p2',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiarioIntoleranciaDosCargaCall {
  static Future<ApiCallResponse> call({
    int? diarioId,
    int? momento,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'diario intolerancia Dos Carga',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diarioIntolerancias/p2_carga',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'diario_id': diarioId,
        'momento': momento,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? carneDesayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carne_desayuno''',
      ));
  static String? carneDesayuno1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carne_desayuno1''',
      ));
  static String? carneDesayuno2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carne_desayuno2''',
      ));
  static String? carneDesayuno3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carne_desayuno3''',
      ));
  static String? pescadoDesayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_desayuno''',
      ));
  static String? pescadoDesayuno1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_desayuno1''',
      ));
  static String? pescadoDesayuno2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_desayuno2''',
      ));
  static String? pescadoDesayuno3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_desayuno3''',
      ));
  static String? mariscoDesayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_desayuno''',
      ));
  static String? mariscoDesayuno1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_desayuno1''',
      ));
  static String? mariscoDesayuno2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_desayuno2''',
      ));
  static String? mariscoDesayuno3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_desayun3''',
      ));
  static String? lacteoDesayuno1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_desayuno1''',
      ));
  static String? lacteoDesayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_desayuno''',
      ));
  static String? lacteoDesayuno2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_desayuno2''',
      ));
  static String? lacteoDesayuno3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_desayuno3''',
      ));
  static String? huevosDesayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.huevos_desayuno''',
      ));
  static String? huevosDesayuno1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.huevos_desayuno_tipo''',
      ));
  static String? cerealesDesayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_desayuno''',
      ));
  static String? cerealesDesayuno1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_desayuno_tipo''',
      ));
  static String? cerealesDesayuno2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_desayuno_tipo2''',
      ));
  static String? frutasDesayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_desayuno''',
      ));
  static String? frutasDesayuno1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_desayuno1''',
      ));
  static String? frutasDesayuno2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_desayuno2''',
      ));
  static String? frutasDesayuno3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_desayuno3''',
      ));
  static String? verdurasDesayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_desayuno''',
      ));
  static String? verdurasDesayuno1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_desayuno1''',
      ));
  static String? verdurasDesayuno2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_desayuno2''',
      ));
  static String? verdurasDesayuno3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_desayuno3''',
      ));
  static String? legumbresDesayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_desayuno''',
      ));
  static String? legumbresDesayuno1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_desayuno1''',
      ));
  static String? legumbresDesayuno2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_desayuno2''',
      ));
  static String? legumbresDesayuno3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_desayuno3''',
      ));
  static String? secosDesayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_desayuno''',
      ));
  static String? secosDesayuno1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_desayuno1''',
      ));
  static String? secosDesayuno2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_desayuno2''',
      ));
  static String? secosDesayuno3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_desayuno3''',
      ));
  static String? salsas(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_desayuno''',
      ));
  static String? salsas1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_desayuno1''',
      ));
  static String? salsas2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_desayuno2''',
      ));
  static String? salsas3(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_desayuno3''',
      ));
  static String? bebidas(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bebidas_desayuno''',
      ));
  static String? bebidas1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bebidas_desayuno1''',
      ));
  static String? bebidas2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bebidas_desayuno2''',
      ));
  static String? bebidas3(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bebidas_desayuno3''',
      ));
  static String? sintomaDesayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sintoma_tras_ingesta_desayuno''',
      ));
  static String? pescadoDesayuno4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_desayuno4''',
      ));
  static String? pescadoDesayuno5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_desayuno5''',
      ));
  static String? pescadoDesayuno6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_desayuno6''',
      ));
  static String? pescadoDesayuno7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_desayuno7''',
      ));
  static String? mariscoDesayuno4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_desayuno4''',
      ));
  static String? mariscoDesayuno5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_desayuno5''',
      ));
  static String? mariscoDesayuno6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_desayuno6''',
      ));
  static String? mariscoDesayuno7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_desayuno7''',
      ));
  static String? lacteoDesayuno4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_desayuno4''',
      ));
  static String? lacteoDesayuno5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_desayuno5''',
      ));
  static String? lacteoDesayuno6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_desayuno6''',
      ));
  static String? lacteoDesayuno7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_desayuno7''',
      ));
  static String? cerealesDesayuno4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_desayuno4''',
      ));
  static String? cerealesDesayuno5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_desayuno5''',
      ));
  static String? cerealesDesayuno6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_desayuno6''',
      ));
  static String? cerealesDesayuno7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_desayuno7''',
      ));
  static String? frutasDesayuno4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_desayuno4''',
      ));
  static String? frutasDesayuno5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_desayuno5''',
      ));
  static String? frutasDesayuno6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_desayuno6''',
      ));
  static String? frutasDesayuno7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_desayuno7''',
      ));
  static String? verdurasDesayuno4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_desayuno4''',
      ));
  static String? verdurasDesayuno5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_desayuno5''',
      ));
  static String? verdurasDesayuno6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_desayuno6''',
      ));
  static String? verdurasDesayuno7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_desayuno7''',
      ));
  static String? legumbresDesayuno4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_desayuno4''',
      ));
  static String? legumbresDesayuno5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_desayuno5''',
      ));
  static String? legumbresDesayuno6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_desayuno6''',
      ));
  static String? legumbresDesayuno7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_desayuno7''',
      ));
  static String? secosDesayuno4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_desayuno4''',
      ));
  static String? secosDesayuno5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_desayuno5''',
      ));
  static String? secosDesayuno6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_desayuno6''',
      ));
  static String? secosDesayuno7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_desayuno7''',
      ));
  static String? salsas4(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_desayuno4''',
      ));
  static String? salsas5(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_desayuno5''',
      ));
  static String? salsas6(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_desayuno6''',
      ));
  static String? salsas7(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_desayuno7''',
      ));
  static String? bebidas4(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bebidas_desayuno4''',
      ));
  static String? bebidas5(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bebidas_desayuno5''',
      ));
  static String? bebidas6(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bebidas_desayuno6''',
      ));
  static String? bebidas7(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bebidas_desayuno7''',
      ));
  static String? carneDesayuno4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_desayuno4''',
      ));
  static String? carneDesayuno5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_desayuno5''',
      ));
  static String? carneDesayuno6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_desayuno6''',
      ));
  static String? carneDesayuno7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_desayuno7''',
      ));
  static String? cerealesDesayuno3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_desayuno3''',
      ));
  static String? carneComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carne_comida''',
      ));
  static String? carneComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carne_comida1''',
      ));
  static String? carneComida2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carne_comida2''',
      ));
  static String? carneComida3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carne_comida3''',
      ));
  static String? carneComida4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_comida4''',
      ));
  static String? carneComida5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_comida5''',
      ));
  static String? carneComida6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_comida6''',
      ));
  static String? carneComida7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_comida7''',
      ));
  static String? pescadoComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_comida''',
      ));
  static String? pescadoComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_comida1''',
      ));
  static String? pescadoComida2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_comida2''',
      ));
  static String? pescadoComida3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_comida3''',
      ));
  static String? pescadoComida4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_comida4''',
      ));
  static String? pescadoComida5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_comida5''',
      ));
  static String? pescadoComida6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_comida6''',
      ));
  static String? pescadoComida7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_comida7''',
      ));
  static String? mariscoComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_comida''',
      ));
  static String? mariscoComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_comida1''',
      ));
  static String? mariscoComida2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_comida2''',
      ));
  static String? mariscoComida3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_comida3''',
      ));
  static String? mariscoComida4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_comida4''',
      ));
  static String? mariscoComida5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_comida5''',
      ));
  static String? mariscoComida6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_comida6''',
      ));
  static String? mariscoComida7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_comida7''',
      ));
  static String? lacteoComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_comida''',
      ));
  static String? lacteoComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_comida1''',
      ));
  static String? lacteoComida2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_comida2''',
      ));
  static String? lacteoComida3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_comida3''',
      ));
  static String? lacteoComida4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_comida4''',
      ));
  static String? lacteoComida5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_comida5''',
      ));
  static String? lacteoComida6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_comida6''',
      ));
  static String? lacteoComida7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_comida7''',
      ));
  static String? huevosComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.huevos_comida''',
      ));
  static String? huevosComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.huevos_comida_tipo''',
      ));
  static String? cerealesComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_comida''',
      ));
  static String? cerealesComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_comida_tipo''',
      ));
  static String? cerealesComida2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_comida_tipo2''',
      ));
  static String? cerealesComida3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_comida3''',
      ));
  static String? cerealesComida4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_comida4''',
      ));
  static String? cerealesComida5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_comida5''',
      ));
  static String? cerealesComida6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_comida6''',
      ));
  static String? cerealesComida7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_comida7''',
      ));
  static String? frutasComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_comida''',
      ));
  static String? frutasComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_comida1''',
      ));
  static String? frutasComida2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_comida2''',
      ));
  static String? frutasComida3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_comida3''',
      ));
  static String? frutasComida4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_comida4''',
      ));
  static String? frutasComida5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_comida5''',
      ));
  static String? frutasComida6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_comida6''',
      ));
  static String? frutasComida7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_comida7''',
      ));
  static String? verdurasComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_comida''',
      ));
  static String? verdurasComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_comida1''',
      ));
  static String? verdurasComida2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_comida2''',
      ));
  static String? verdurasComida3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_comida3''',
      ));
  static String? verdurasComida4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_comida4''',
      ));
  static String? verdurasComida5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_comida5''',
      ));
  static String? verdurasComida6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_comida6''',
      ));
  static String? verdurasComida7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_comida7''',
      ));
  static String? legumbresComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_comida''',
      ));
  static String? legumbresComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_comida1''',
      ));
  static String? legumbresComida2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_comida2''',
      ));
  static String? legumbresComida3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_comida3''',
      ));
  static String? legumbresComida4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_comida4''',
      ));
  static String? legumbresComida5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_comida5''',
      ));
  static String? legumbresComida6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_comida6''',
      ));
  static String? legumbresComida7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_comida7''',
      ));
  static String? secosComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_comida''',
      ));
  static String? secosComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_comida1''',
      ));
  static String? secosComida2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_comida2''',
      ));
  static String? secosComida3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_comida3''',
      ));
  static String? secosComida4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_comida4''',
      ));
  static String? secosComida5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_comida5''',
      ));
  static String? secosComida6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_comida6''',
      ));
  static String? secosComida7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_comida7''',
      ));
  static String? salsasComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_comida''',
      ));
  static String? salsasComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_comida1''',
      ));
  static String? salsasComida2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_comida2''',
      ));
  static String? salsasComida3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_comida3''',
      ));
  static String? salsasComida4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_comida4''',
      ));
  static String? salsasComida5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_comida5''',
      ));
  static String? salsasComida6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_comida6''',
      ));
  static String? salsasComida7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_comida7''',
      ));
  static String? bebidasComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_comida''',
      ));
  static String? bebidasComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_comida1''',
      ));
  static String? bebidasComida2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_comida2''',
      ));
  static String? bebidasComida3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_comida3''',
      ));
  static String? bebidasComida4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_comida4''',
      ));
  static String? bebidasComida5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_comida5''',
      ));
  static String? bebidasComida6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_comida6''',
      ));
  static String? bebidasComida7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_comida7''',
      ));
  static String? sintomasComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sintoma_tras_ingesta_comida''',
      ));
  static String? carneCena(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.carne_cena''',
      ));
  static String? carneCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carne_cena1''',
      ));
  static String? carneCena2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carne_cena2''',
      ));
  static String? carneCena3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carne_cena3''',
      ));
  static String? carneCena4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_cena4''',
      ));
  static String? carneCena5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_cena5''',
      ));
  static String? carneCena6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_cena6''',
      ));
  static String? carneCena7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_cena7''',
      ));
  static String? pescadoCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_cena''',
      ));
  static String? pescadoCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_cena1''',
      ));
  static String? pescadoCena2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_cena2''',
      ));
  static String? pescadoCena3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_cena3''',
      ));
  static String? pescadoCena4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_cena4''',
      ));
  static String? pescadoCena5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_cena5''',
      ));
  static String? pescadoCena6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_cena6''',
      ));
  static String? pescadoCena7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_cena7''',
      ));
  static String? mariscoCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_cena''',
      ));
  static String? mariscoCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_cena1''',
      ));
  static String? mariscoCena2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_cena2''',
      ));
  static String? mariscoCena3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_cena3''',
      ));
  static String? mariscoCena4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_cena4''',
      ));
  static String? mariscoCena5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_cena5''',
      ));
  static String? mariscoCena6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_cena6''',
      ));
  static String? mariscoCena7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_cena7''',
      ));
  static String? lacteoCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_cena''',
      ));
  static String? lacteoCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_cena1''',
      ));
  static String? lacteoCena2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_cena2''',
      ));
  static String? lacteoCena3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_cena3''',
      ));
  static String? lacteoCena4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_cena4''',
      ));
  static String? lacteoCena5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_cena5''',
      ));
  static String? lacteoCena6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_cena6''',
      ));
  static String? lacteoCena7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_cena7''',
      ));
  static String? huevosCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.huevos_cena''',
      ));
  static String? huevosCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.huevos_cena_tipo''',
      ));
  static String? cerealesCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_cena''',
      ));
  static String? cerealesCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_cena_tipo''',
      ));
  static String? cerealesCena2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_cena_tipo2''',
      ));
  static String? cerealesCena3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_cena3''',
      ));
  static String? cerealesCena4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_cena4''',
      ));
  static String? cerealesCena5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_cena5''',
      ));
  static String? cerealesCena6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_cena6''',
      ));
  static String? cerealesCena7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_cena7''',
      ));
  static String? frutasCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_cena''',
      ));
  static String? frutasCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_cena1''',
      ));
  static String? frutasCena2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_cena2''',
      ));
  static String? frutasCena3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_cena3''',
      ));
  static String? frutasCena4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_cena4''',
      ));
  static String? frutasCena5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_cena5''',
      ));
  static String? frutasCena6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_cena6''',
      ));
  static String? frutasCena7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_cena7''',
      ));
  static String? verdurasCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_cena''',
      ));
  static String? verdurasCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_cena1''',
      ));
  static String? verdurasCena2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_cena2''',
      ));
  static String? verdurasCena3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_cena3''',
      ));
  static String? verdurasCena4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_cena4''',
      ));
  static String? verdurasCena5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_cena5''',
      ));
  static String? verdurasCena6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_cena6''',
      ));
  static String? verdurasCena7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_cena7''',
      ));
  static String? legumbresCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_cena''',
      ));
  static String? legumbresCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_cena1''',
      ));
  static String? legumbresCena2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_cena2''',
      ));
  static String? legumbresCena3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_cena3''',
      ));
  static String? legumbresCena4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_cena4''',
      ));
  static String? legumbresCena5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_cena5''',
      ));
  static String? legumbresCena6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_cena6''',
      ));
  static String? legumbresCena7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_cena7''',
      ));
  static String? secosCena(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_cena''',
      ));
  static String? secosCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_cena1''',
      ));
  static String? secosCena2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_cena2''',
      ));
  static String? secosCena3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_cena3''',
      ));
  static String? secosCena4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_cena4''',
      ));
  static String? secosCena5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_cena5''',
      ));
  static String? secosCena6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_cena6''',
      ));
  static String? secosCena7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_cena7''',
      ));
  static String? salsasCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_cena''',
      ));
  static String? salsasCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_cena1''',
      ));
  static String? salsasCena2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_cena2''',
      ));
  static String? salsasCena3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_cena3''',
      ));
  static String? salsasCena4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_cena4''',
      ));
  static String? salsasCena5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_cena5''',
      ));
  static String? salsasCena6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_cena6''',
      ));
  static String? salsasCena7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_cena7''',
      ));
  static String? bebidasCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_cena''',
      ));
  static String? bebidasCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_cena1''',
      ));
  static String? bebidasCena2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_cena2''',
      ));
  static String? bebidasCena3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_cena3''',
      ));
  static String? bebidasCena4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_cena4''',
      ));
  static String? bebidasCena5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_cena5''',
      ));
  static String? bebidasCena6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_cena6''',
      ));
  static String? bebidasCena7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_cena7''',
      ));
  static String? sintomasCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sintoma_tras_ingesta_cena''',
      ));
}

class DiarioIntoleranciasTresCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? diarioId,
    int? momento,
    int? cefalea,
    int? abdominal,
    int? nauseas,
    int? vomitos,
    int? diarrea,
    int? respirar,
    int? niebla,
    int? vision,
    int? debilidad,
    int? palpitaciones,
    int? sudor,
    int? picor,
    int? hinchazon,
    int? gases,
    int? ardor,
    int? reflujo,
    int? digestion,
    int? calambres,
    int? mareos,
    String? editando = '',
  }) async {
    final ffApiRequestBody = '''
{
  "diario_id": ${diarioId},
  "momento": ${momento},
  "cefalea": ${cefalea},
  "abdominal": ${abdominal},
  "nauseas": ${nauseas},
  "vomitos": ${vomitos},
  "diarrea": ${diarrea},
  "respirar": ${respirar},
  "niebla": ${niebla},
  "vision": ${vision},
  "debilidad": ${debilidad},
  "palpitaciones": ${palpitaciones},
  "sudor": ${sudor},
  "picor": ${picor},
  "hinchazon": ${hinchazon},
  "gases": ${gases},
  "ardor": ${ardor},
  "reflujo": ${reflujo},
  "digestion": ${digestion},
  "calambres": ${calambres},
  "mareos": ${mareos},
  "editando": "${editando}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario Intolerancias Tres',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diarioIntolerancias/p3',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiarioIntoleranciasTresCargaCall {
  static Future<ApiCallResponse> call({
    int? diarioId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'diario intolerancias Tres Carga',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diarioIntolerancias/p3_carga',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'diario_id': diarioId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? desayunoCefalea(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_desayuno_dolor_cabeza''',
      ));
  static int? desayunoAbdominal(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.sintoma_desayuno_dolor_abdominal''',
      ));
  static int? desayunoNauseas(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_desayuno_nauseas''',
      ));
  static int? desayunoVomitos(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_desayuno_vomitos''',
      ));
  static int? desayunoDiarrea(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_desayuno_diarrea''',
      ));
  static int? desayunoRespirar(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.sintoma_desayuno_dif_respirar''',
      ));
  static int? desayunoNiebla(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_desayuno_niebla_mental''',
      ));
  static int? desayunoVIsion(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_desayuno_vision_borrosa''',
      ));
  static int? desayunoDebilidad(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.sintoma_desayuno_debilidad''',
      ));
  static int? desayunoPalpitaciones(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.sintoma_desayuno_palpitaciones''',
      ));
  static int? desayunoSudor(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_desayuno_sudoracion''',
      ));
  static int? desayunoPicor(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_desayuno_picores''',
      ));
  static int? desayunoHinchazon(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.sintoma_desayuno_hinchazon''',
      ));
  static int? desayunoGases(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_desayuno_gases''',
      ));
  static int? desayunoArdor(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_desayuno_ardor''',
      ));
  static int? desayunoReflujo(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_desayuno_reflujo''',
      ));
  static int? desayunoDigestion(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.sintoma_desayuno_digestion''',
      ));
  static int? desayunoCalambre(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.sintoma_desayuno_calambres''',
      ));
  static int? desayunoMareos(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_desayuno_mareos''',
      ));
  static int? comidaCefalea(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_comida_dolor_cabeza''',
      ));
  static int? comidaAbdominal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_comida_dolor_abdominal''',
      ));
  static int? comidaNauseas(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_comida_nauseas''',
      ));
  static int? comidaVomitos(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_comida_vomitos''',
      ));
  static int? comidaDiarrea(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_comida_diarrea''',
      ));
  static int? comidaRespidar(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_comida_dif_respirar''',
      ));
  static int? comidaNiebla(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_comida_niebla_mental''',
      ));
  static int? comidaVision(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_comida_vision_borrosa''',
      ));
  static int? comidaDebilidad(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_comida_debilidad''',
      ));
  static int? comidaPalpitaciones(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.sintoma_comida_palpitaciones''',
      ));
  static int? comidaSudor(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_comida_sudoracion''',
      ));
  static int? comidaPicor(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.picores''',
      ));
  static int? comidaHinchazon(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_comida_hinchazon''',
      ));
  static int? comidaGases(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_comida_gases''',
      ));
  static int? comidaArdor(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_comida_ardor''',
      ));
  static int? comidaReflujo(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_comida_reflujo''',
      ));
  static int? comidaDigestion(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_comida_digestion''',
      ));
  static int? comidaCalambres(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_comida_calambres''',
      ));
  static int? comidaMareos(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_comida_mareos''',
      ));
  static int? cenaCefalea(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_cena_dolor_cabeza''',
      ));
  static int? cenaAbdominal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_cena_dolor_abdominal''',
      ));
  static int? cenaNauseas(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_cena_nauseas''',
      ));
  static int? cenaVomitos(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.vomitos''',
      ));
  static int? cenaDiarrea(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.diarrea''',
      ));
  static int? cenaRespirar(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_cena_dif_respirar''',
      ));
  static int? cenaNiebla(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_cena_niebla_mental''',
      ));
  static int? cenaVision(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_cena_vision_borrosa''',
      ));
  static int? cenaDebilidad(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_cena_debilidad''',
      ));
  static int? cenaPalpitaciones(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.sintoma_cena_palpitaciones''',
      ));
  static int? cenaSudoracion(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_cena_sudoracion''',
      ));
  static int? cenaPicores(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_cena_picores''',
      ));
  static int? cenaHinchazon(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_cena_hinchazon''',
      ));
  static int? cenaGases(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_cena_gases''',
      ));
  static int? cenaArdor(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_cena_ardor''',
      ));
  static int? cenaReflujo(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_cena_reflujo''',
      ));
  static int? cenaDigestion(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_cena_digestion''',
      ));
  static int? cenaCalambre(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_cena_calambres''',
      ));
  static int? cenaMareo(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sintoma_cena_mareos''',
      ));
}

class DiarioIntoleranciasCuatroCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? diarioId,
    int? momento,
    String? dolor1 = '',
    String? dolor2 = '',
    String? dolor3 = '',
    String? dolor4 = '',
    String? dolor5 = '',
    String? dolor6 = '',
    String? dolor7 = '',
    String? dolor8 = '',
    String? dolor9 = '',
    String? editando = '',
    int? contador,
  }) async {
    final ffApiRequestBody = '''
{
  "diario_id": ${diarioId},
  "momento": ${momento},
  "dolor1": "${dolor1}",
  "dolor2": "${dolor2}",
  "dolor3": "${dolor3}",
  "dolor4": "${dolor4}",
  "dolor5": "${dolor5}",
  "dolor6": "${dolor6}",
  "dolor7": "${dolor7}",
  "dolor8": "${dolor8}",
  "dolor9": "${dolor9}",
  "editando": "${editando}",
  "contador": ${contador}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'diario intolerancias Cuatro',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diarioIntolerancias/p4',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiarioIntoleranciasCuatroCargaCall {
  static Future<ApiCallResponse> call({
    int? diarioId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'diario intolerancias Cuatro Carga',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diarioIntolerancias/p4_carga',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'diario_id': diarioId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? desayunoDolor1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.desayuno_dolor1''',
      ));
  static String? desayunoDolor2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.desayuno_dolor2''',
      ));
  static String? desayunoDolor3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.desayuno_dolor3''',
      ));
  static String? desayunoDolor4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.desayuno_dolor4''',
      ));
  static String? desayunoDolor5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.desayuno_dolor5''',
      ));
  static String? desayunoDolor6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.desayuno_dolor6''',
      ));
  static String? desayunoDolor7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.desayuno_dolor7''',
      ));
  static String? desayunoDolor8(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.desayuno_dolor8''',
      ));
  static String? desayunoDolor9(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.desayuno_dolor9''',
      ));
  static String? comidaDolor1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.comida_dolor1''',
      ));
  static String? comidaDolor2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.comida_dolor2''',
      ));
  static String? comidaDolor3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.comida_dolor3''',
      ));
  static String? comidaDolor4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.comida_dolor4''',
      ));
  static String? comidaDolor5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.comida_dolor5''',
      ));
  static String? comidaDolor6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.comida_dolor6''',
      ));
  static String? comidaDolor7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.comida_dolor7''',
      ));
  static String? comidaDolor8(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.comida_dolor8''',
      ));
  static String? comidaDolor9(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.comida_dolor9''',
      ));
  static String? cenaDolor1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cena_dolor1''',
      ));
  static String? cenaDolor2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cena_dolor2''',
      ));
  static String? cenaDolor3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cena_dolor3''',
      ));
  static String? cenaDolor4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cena_dolor4''',
      ));
  static String? cenaDolor5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cena_dolor5''',
      ));
  static String? cenaDolor6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cena_dolor6''',
      ));
  static String? cenaDolor7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cena_dolor7''',
      ));
  static String? cenaDolor8(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cena_dolor8''',
      ));
  static String? cenaDolor9(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cena_dolor9''',
      ));
  static int? contadorDesayuno(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.contador_abdominal_desayuno''',
      ));
  static int? contadorComida(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.contador_abdominal_comida''',
      ));
  static int? contadorCena(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.contador_abdominal_cena''',
      ));
}

class IntoleranciaFinalizaDiarioCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? diarioId,
  }) async {
    final ffApiRequestBody = '''
{
  "diario_id": ${diarioId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'intolerancia finaliza diario',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/diarioIntolerancias/finaliza',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ResumenListadoDiariosCall {
  static Future<ApiCallResponse> call({
    int? mes,
    int? year,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'resumen listado diarios',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/resumen/listado_diarios',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'mes': mes,
        'year': year,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? fecha(dynamic response) => (getJsonField(
        response,
        r'''$[:].fecha_txt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ResumenListadoDiariosCalendarCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? fecha = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'resumen listado diariosCalendar',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/resumen/listado_diarios_date',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'fecha': fecha,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? fecha(dynamic response) => (getJsonField(
        response,
        r'''$[:].fecha_txt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ResumenVariableMesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'resumen variable mes',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/resumen/variables_mes',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? mes(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.mes''',
      ));
  static int? year(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.year''',
      ));
}

class ResumenDiarioCall {
  static Future<ApiCallResponse> call({
    int? diarioId,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'resumen diario',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/resumen/diario',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'diario_id': diarioId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? nivelEnergia(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.nivel_energia''',
      ));
  static String? manana(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.menos_energia_manana''',
      ));
  static String? tarde(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.menos_energia_tarde''',
      ));
  static String? noche(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.menos_energia_noche''',
      ));
  static String? dolorTxt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dolor_txt''',
      ));
  static String? intensidadDolorTxt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.intensidad_dolor_txt''',
      ));
  static int? intensidadDolorNum(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.intensidad_dolor_num''',
      ));
  static String? med1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.medicamento''',
      ));
  static String? med2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.medicamento_2''',
      ));
  static String? vit1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.vitamina''',
      ));
  static String? vit2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.vitamina2''',
      ));
  static String? vit3(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.vitamina3''',
      ));
  static String? nombreMed1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.nombre_medicamento1''',
      ));
  static String? alivioSintomasMed1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.alivio_sintomas''',
      ));
  static String? sinAlivioMed1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sin_alivio''',
      ));
  static String? mejora1Med1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint_med_1''',
      ));
  static String? mejora2Med1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint_med_2''',
      ));
  static String? mejora3Med1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint_med_3''',
      ));
  static String? mejora4Med1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint_med_4''',
      ));
  static String? mejora5Med1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint_med_5''',
      ));
  static String? nombreMed2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.nombre_medicamento_2''',
      ));
  static String? alivioSintomasMed2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.med2_alivio_sintomas''',
      ));
  static String? sinAlivioMed2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.med2_sin_alivio''',
      ));
  static String? mejora1Med2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint1_med_2''',
      ));
  static String? mejora2Med2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint2_med_2''',
      ));
  static String? mejora3Med2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint3_med_2''',
      ));
  static String? mejora4Med2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint4_med_2''',
      ));
  static String? mejora5Med2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint5_med_2''',
      ));
  static String? nombreVit1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.nombre_vitamina''',
      ));
  static String? alivioSintomasVit1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.vitamina_alivio_sint''',
      ));
  static String? sinAlivioVit1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.vitamina_sin_mejora''',
      ));
  static String? mejora1Vit1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint_vit_1''',
      ));
  static String? mejora2Vit1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint_vit_2''',
      ));
  static String? mejora3Vit1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint_vit_3''',
      ));
  static String? mejora4Vit1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint_vit_4''',
      ));
  static String? mejora5Vit1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint_vit_5''',
      ));
  static String? nombreVit2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.nombre_vitamina2''',
      ));
  static String? alivioSintomasVit2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.vitamina2_mejora_sint''',
      ));
  static String? sinAlivioVit2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.vitamina2_sin_mejora''',
      ));
  static String? mejora1Vit2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint_vit_1_vitamina2''',
      ));
  static String? mejora2Vit2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint_vit_2_vitamina2''',
      ));
  static String? mejora3Vit2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint_vit_3_vitamina2''',
      ));
  static String? mejora4Vit2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint_vit_4_vitamina2''',
      ));
  static String? mejora5Vit2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint_vit_5_vitamina2''',
      ));
  static String? nombreVit3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.nombre_vitamina3''',
      ));
  static String? alivioSintomasVit3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.vitamina3_mejora_sint''',
      ));
  static String? sinAlivioVit3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.vitamina3_sin_mejora''',
      ));
  static String? mejora1Vit3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint_vit_1_vitamina3''',
      ));
  static String? mejora2Vit3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint_vit_2_vitamina3''',
      ));
  static String? mejora3Vit3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint_vit_3_vitamina3''',
      ));
  static String? mejora4Vit3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint_vit_4_vitamina3''',
      ));
  static String? mejora5Vit3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejora_sint_vit_5_vitamina3''',
      ));
  static int? suenoId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sueno_id''',
      ));
  static int? intoId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.intolerancias_id''',
      ));
  static String? imagenBateria(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$._imagen_bateria.imagen.url''',
      ));
  static String? calidadSuenoTxt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$._sueno.calidad_sueno_txt''',
      ));
  static String? imagenSueno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$._sueno._caras_sueno.cara.url''',
      ));
  static String? imagenDolor(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$._caras_dolor.imagen_cara.url''',
      ));
}

class ResumenActividadesRealizadasCall {
  static Future<ApiCallResponse> call({
    int? diarioId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'resumen actividades realizadas',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/resumen/actividades',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'diario_id': diarioId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? actividad(dynamic response) => (getJsonField(
        response,
        r'''$[:].actividad''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? url(dynamic response) => (getJsonField(
        response,
        r'''$[:].icon.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ResumenSintomasCall {
  static Future<ApiCallResponse> call({
    int? diarioId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'resumen sintomas',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/resumen/sintomas',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'diario_id': diarioId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? sintoma(dynamic response) => (getJsonField(
        response,
        r'''$[:].sintoma''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? intensidad(dynamic response) => (getJsonField(
        response,
        r'''$[:].intensidad''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class ResumenCargaAlimentosCall {
  static Future<ApiCallResponse> call({
    int? diarioId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'resumen carga alimentos',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/resumen/carga_alimentos',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'diario_id': diarioId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? carneDesayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carne_desayuno''',
      ));
  static String? pescadoDesayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_desayuno''',
      ));
  static String? mariscoDesayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_desayuno''',
      ));
  static String? lacteoDesayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_desayuno''',
      ));
  static String? huevosDesayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.huevos_desayuno''',
      ));
  static String? cerealesDesayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_desayuno''',
      ));
  static String? frutasDesayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_desayuno''',
      ));
  static String? verdurasDesayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_desayuno''',
      ));
  static String? legumbresDesayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_desayuno''',
      ));
  static String? secosDesayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_desayuno''',
      ));
  static String? salsasDesayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_desayuno''',
      ));
  static String? bebidasDesayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_desayuno''',
      ));
  static String? carneDesayuno1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carne_desayuno1''',
      ));
  static String? carneDesayuno2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carne_desayuno2''',
      ));
  static String? carneDesayuno3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carne_desayuno3''',
      ));
  static String? carneDesayuno4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_desayuno4''',
      ));
  static String? carneDesayuno5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_desayuno5''',
      ));
  static String? carneDesayuno6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_desayuno6''',
      ));
  static String? carneDesayuno7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_desayuno7''',
      ));
  static String? pescadoDesayuno1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_desayuno1''',
      ));
  static String? pescadoDesayuno2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_desayuno2''',
      ));
  static String? pescadoDesayuno3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_desayuno3''',
      ));
  static String? pescadoDesayuno4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_desayuno4''',
      ));
  static String? pescadoDesayuno5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_desayuno5''',
      ));
  static String? pescadoDesayuno6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_desayuno6''',
      ));
  static String? pescadoDesayuno7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_desayuno7''',
      ));
  static String? mariscoDesayuno1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_desayuno1''',
      ));
  static String? mariscoDesayuno2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_desayuno2''',
      ));
  static String? mariscoDesayuno3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_desayun3''',
      ));
  static String? mariscoDesayuno4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_desayuno4''',
      ));
  static String? mariscoDesayuno5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_desayuno5''',
      ));
  static String? mariscoDesayuno6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_desayuno6''',
      ));
  static String? mariscoDesayuno7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_desayuno7''',
      ));
  static String? lacteoDesayuno1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_desayuno1''',
      ));
  static String? lacteoDesayuno2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_desayuno2''',
      ));
  static String? lacteoDesayuno3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_desayuno3''',
      ));
  static String? lacteoDesayuno4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_desayuno4''',
      ));
  static String? lacteoDesayuno5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_desayuno5''',
      ));
  static String? lacteoDesayuno6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_desayuno6''',
      ));
  static String? lacteoDesayuno7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_desayuno7''',
      ));
  static String? huevosDesayuno1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.huevos_desayuno_tipo''',
      ));
  static String? cerealesDesayuno1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_desayuno_tipo''',
      ));
  static String? cerealesDesayuno2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_desayuno_tipo2''',
      ));
  static String? cerealesDesayuno3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_desayuno3''',
      ));
  static String? cerealesDesayuno4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_desayuno4''',
      ));
  static String? cerealesDesayuno5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_desayuno5''',
      ));
  static String? cerealesDesayuno6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_desayuno6''',
      ));
  static String? cerealesDesayuno7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_desayuno7''',
      ));
  static String? frutasDesayuno1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_desayuno1''',
      ));
  static String? frutasDesayuno2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_desayuno2''',
      ));
  static String? frutasDesayuno3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_desayuno3''',
      ));
  static String? frutasDesayuno4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_desayuno4''',
      ));
  static String? frutasDesayuno5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_desayuno5''',
      ));
  static String? frutasDesayuno6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_desayuno6''',
      ));
  static String? frutasDesayuno7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_desayuno7''',
      ));
  static String? verdurasDesayuno1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_desayuno1''',
      ));
  static String? verdurasDesayuno2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_desayuno2''',
      ));
  static String? verdurasDesayuno3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_desayuno3''',
      ));
  static String? verdurasDesayuno4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_desayuno4''',
      ));
  static String? verdurasDesayuno5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_desayuno5''',
      ));
  static String? verdurasDesayuno6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_desayuno6''',
      ));
  static String? verdurasDesayuno7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_desayuno7''',
      ));
  static String? legumbresDesayuno1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_desayuno1''',
      ));
  static String? legumbresDesayuno2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_desayuno2''',
      ));
  static String? legumbresDesayuno3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_desayuno3''',
      ));
  static String? legumbresDesayuno4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_desayuno4''',
      ));
  static String? legumbresDesayuno5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_desayuno5''',
      ));
  static String? legumbresDesayuno6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_desayuno6''',
      ));
  static String? legumbresDesayuno7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_desayuno7''',
      ));
  static String? secosDesayuno1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_desayuno1''',
      ));
  static String? secosDesayuno2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_desayuno2''',
      ));
  static String? secosDesayuno3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_desayuno3''',
      ));
  static String? secosDesayuno4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_desayuno4''',
      ));
  static String? secosDesayuno5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_desayuno5''',
      ));
  static String? secosDesayuno6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_desayuno6''',
      ));
  static String? secosDesayuno7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_desayuno7''',
      ));
  static String? salsasDesayuno1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_desayuno1''',
      ));
  static String? salsasDesayuno2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_desayuno2''',
      ));
  static String? salsasDesayuno3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_desayuno3''',
      ));
  static String? salsasDesayuno4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_desayuno4''',
      ));
  static String? salsasDesayuno5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_desayuno5''',
      ));
  static String? salsasDesayuno6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_desayuno6''',
      ));
  static String? salsasDesayuno7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_desayuno7''',
      ));
  static String? bebidasDesayuno1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_desayuno1''',
      ));
  static String? bebidasDesayuno2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_desayuno2''',
      ));
  static String? bebidasDesayuno3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_desayuno3''',
      ));
  static String? bebidasDesayuno4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_desayuno4''',
      ));
  static String? bebidasDesayuno5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_desayuno5''',
      ));
  static String? bebidasDesayuno6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_desayuno6''',
      ));
  static String? bebidasDesayuno7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_desayuno7''',
      ));
  static String? carneComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carne_comida''',
      ));
  static String? pescadoComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_comida''',
      ));
  static String? mariscoComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_comida''',
      ));
  static String? lacteoComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_comida''',
      ));
  static String? huevoComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.huevos_comida''',
      ));
  static String? cerealesComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_comida''',
      ));
  static String? frutasComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_comida''',
      ));
  static String? verdurasComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_comida''',
      ));
  static String? legumbresComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_comida''',
      ));
  static String? secosComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_comida''',
      ));
  static String? salsaComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_comida''',
      ));
  static String? bebidasComida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_comida''',
      ));
  static String? carneComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carne_comida1''',
      ));
  static String? carneComida2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carne_comida2''',
      ));
  static String? carneComida3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carne_comida3''',
      ));
  static String? carneComida4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_comida4''',
      ));
  static String? carneComida5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_comida5''',
      ));
  static String? carneComida6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_comida6''',
      ));
  static String? carneComida7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_comida7''',
      ));
  static String? pescadoComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_comida1''',
      ));
  static String? pescadoComida2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_comida2''',
      ));
  static String? pescadoComida3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_comida3''',
      ));
  static String? pescadoComida4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_comida4''',
      ));
  static String? pescadoComida5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_comida5''',
      ));
  static String? pescadoComida6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_comida6''',
      ));
  static String? pescadoComida7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_comida7''',
      ));
  static String? mariscoComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_comida1''',
      ));
  static String? mariscoComida2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_comida2''',
      ));
  static String? mariscoComida3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_comida3''',
      ));
  static String? mariscoComida4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_comida4''',
      ));
  static String? mariscoComida5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_comida5''',
      ));
  static String? mariscoComida6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_comida6''',
      ));
  static String? mariscoComida7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_comida7''',
      ));
  static String? lacteoComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_comida1''',
      ));
  static String? lacteoComida2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_comida2''',
      ));
  static String? lacteoComida3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_comida3''',
      ));
  static String? lacteoComida4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_comida4''',
      ));
  static String? lacteoComida5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_comida5''',
      ));
  static String? lacteoComida6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_comida6''',
      ));
  static String? lacteoComida7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_comida7''',
      ));
  static String? huevoComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.huevos_comida_tipo''',
      ));
  static String? cerealesComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_comida_tipo''',
      ));
  static String? cerealesComida2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_comida_tipo2''',
      ));
  static String? cerealesComida3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_comida3''',
      ));
  static String? cerealesComida4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_comida4''',
      ));
  static String? cerealesComida5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_comida5''',
      ));
  static String? cerealesComida6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_comida6''',
      ));
  static String? cerealesComida7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_comida7''',
      ));
  static String? frutasComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_comida1''',
      ));
  static String? frutasComida2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_comida2''',
      ));
  static String? frutasComida3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_comida3''',
      ));
  static String? frutasComida4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_comida4''',
      ));
  static String? frutasComida5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_comida5''',
      ));
  static String? frutasComida6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_comida6''',
      ));
  static String? frutasComida7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_comida7''',
      ));
  static String? verdurasComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_comida1''',
      ));
  static String? verdurasComida2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_comida2''',
      ));
  static String? verdurasComida3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_comida3''',
      ));
  static String? verdurasComida4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_comida4''',
      ));
  static String? verdurasComida5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_comida5''',
      ));
  static String? verdurasComida6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_comida6''',
      ));
  static String? verdurasComida7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_comida7''',
      ));
  static String? legumbresComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_comida1''',
      ));
  static String? legumbresComida2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_comida2''',
      ));
  static String? legumbresComida3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_comida3''',
      ));
  static String? legumbresComida4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_comida4''',
      ));
  static String? legumbresComida5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_comida5''',
      ));
  static String? legumbresComida6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_comida6''',
      ));
  static String? legumbresComida7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_comida7''',
      ));
  static String? secosComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_comida1''',
      ));
  static String? secosComida2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_comida2''',
      ));
  static String? secosComida3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_comida3''',
      ));
  static String? secosComida4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_comida4''',
      ));
  static String? secosComida5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_comida5''',
      ));
  static String? secosComida6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_comida6''',
      ));
  static String? secosComida7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_comida7''',
      ));
  static String? salsaComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_comida1''',
      ));
  static String? salsaComida2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_comida2''',
      ));
  static String? salsaComida3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_comida3''',
      ));
  static String? salsaComida4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_comida4''',
      ));
  static String? salsaComida5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_comida5''',
      ));
  static String? salsaComida6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_comida6''',
      ));
  static String? salsaComida7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_comida7''',
      ));
  static String? bebidasComida1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_comida1''',
      ));
  static String? bebidasComida2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_comida2''',
      ));
  static String? bebidasComida3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_comida3''',
      ));
  static String? bebidasComida4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_comida4''',
      ));
  static String? bebidasComida5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_comida5''',
      ));
  static String? bebidasComida6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_comida6''',
      ));
  static String? bebidasComida7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_comida7''',
      ));
  static String? carneCena(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.carne_cena''',
      ));
  static String? pescadoCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_cena''',
      ));
  static String? mariscoCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_cena''',
      ));
  static String? lacteoCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_cena''',
      ));
  static String? huevosCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.huevos_cena''',
      ));
  static String? cerealesCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_cena''',
      ));
  static String? frutasCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_cena''',
      ));
  static String? verdurasCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_cena''',
      ));
  static String? legumbresCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_cena''',
      ));
  static String? secosCena(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_cena''',
      ));
  static String? salsasCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_cena''',
      ));
  static String? bebidasCena(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_cena''',
      ));
  static String? carneCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carne_cena1''',
      ));
  static String? carneCena2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carne_cena2''',
      ));
  static String? carneCena3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carne_cena3''',
      ));
  static String? carneCena4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_cena4''',
      ));
  static String? carneCena5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_cena5''',
      ));
  static String? carneCena6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_cena6''',
      ));
  static String? carneCena7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carnes_cena7''',
      ));
  static String? pescadoCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_cena1''',
      ));
  static String? pescadoCena2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_cena2''',
      ));
  static String? pescadoCena3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_cena3''',
      ));
  static String? pescadoCena4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_cena4''',
      ));
  static String? pescadoCena5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_cena5''',
      ));
  static String? pescadoCena6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_cena6''',
      ));
  static String? pescadoCena7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pescado_cena7''',
      ));
  static String? mariscoCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_cena1''',
      ));
  static String? mariscoCena2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_cena2''',
      ));
  static String? mariscoCena3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_cena3''',
      ));
  static String? mariscoCena4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_cena4''',
      ));
  static String? mariscoCena5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_cena5''',
      ));
  static String? mariscoCena6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_cena6''',
      ));
  static String? mariscoCena7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marisco_cena7''',
      ));
  static String? lacteoCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_cena1''',
      ));
  static String? lacteoCena2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_cena2''',
      ));
  static String? lacteoCena3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_cena3''',
      ));
  static String? lacteoCena4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_cena4''',
      ));
  static String? lacteoCena5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_cena5''',
      ));
  static String? lacteoCena6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_cena6''',
      ));
  static String? lacteoCena7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.lacteo_cena7''',
      ));
  static String? huevosCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.huevos_cena_tipo''',
      ));
  static String? cerealesCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_cena_tipo''',
      ));
  static String? cerealesCena2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_cena_tipo2''',
      ));
  static String? cerealesCena3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_cena3''',
      ));
  static String? cerealesCena4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_cena4''',
      ));
  static String? cerealesCena5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_cena5''',
      ));
  static String? cerealesCena6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_cena6''',
      ));
  static String? cerealesCena7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cereales_cena7''',
      ));
  static String? frutasCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_cena1''',
      ));
  static String? frutasCena2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_cena2''',
      ));
  static String? frutasCena3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_cena3''',
      ));
  static String? frutasCena4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_cena4''',
      ));
  static String? frutasCena5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_cena5''',
      ));
  static String? frutasCena6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_cena6''',
      ));
  static String? frutasCena7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutas_cena7''',
      ));
  static String? verdurasCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_cena1''',
      ));
  static String? verdurasCena2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_cena2''',
      ));
  static String? verdurasCena3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_cena3''',
      ));
  static String? verdurasCena4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_cena4''',
      ));
  static String? verdurasCena5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_cena5''',
      ));
  static String? verdurasCena6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_cena6''',
      ));
  static String? verdurasCena7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verduras_cena7''',
      ));
  static String? legumbresCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_cena1''',
      ));
  static String? legumbresCena2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_cena2''',
      ));
  static String? legumbresCena3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_cena3''',
      ));
  static String? legumbresCena4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_cena4''',
      ));
  static String? legumbresCena5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_cena5''',
      ));
  static String? legumbresCena6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_cena6''',
      ));
  static String? legumbresCena7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.legumbres_cena7''',
      ));
  static String? secosCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_cena1''',
      ));
  static String? secosCena2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_cena2''',
      ));
  static String? secosCena3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_cena3''',
      ));
  static String? secosCena4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_cena4''',
      ));
  static String? secosCena5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_cena5''',
      ));
  static String? secosCena6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_cena6''',
      ));
  static String? secosCena7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frutos_secos_cena7''',
      ));
  static String? salsasCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_cena1''',
      ));
  static String? salsasCena2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_cena2''',
      ));
  static String? salsasCena3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_cena3''',
      ));
  static String? salsasCena4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_cena4''',
      ));
  static String? salsasCena5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_cena5''',
      ));
  static String? salsasCena6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_cena6''',
      ));
  static String? salsasCena7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.condimentos_y_salsas_cena7''',
      ));
  static String? bebidasCena1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_cena1''',
      ));
  static String? bebidasCena2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_cena2''',
      ));
  static String? bebidasCena3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_cena3''',
      ));
  static String? bebidasCena4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_cena4''',
      ));
  static String? bebidasCena5(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_cena5''',
      ));
  static String? bebidasCena6(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_cena6''',
      ));
  static String? bebidasCena7(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bebidas_cena7''',
      ));
  static String? sint1Desayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sintoma_int_desayuno1''',
      ));
  static String? sint2Desayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sintoma_int_desayuno2''',
      ));
  static String? sint3Desayuno(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sintoma_int_desayuno3''',
      ));
  static String? sint1Comida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sintoma_int_comida1''',
      ));
  static String? sint2Comida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sintoma_int_comida2''',
      ));
  static String? sint3Comida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sintoma_int_comida3''',
      ));
  static String? sint1Cena(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sintoma_int_cena1''',
      ));
  static String? sint2Cena(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sintoma_int_cena2''',
      ));
  static String? sint3Cena(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sintoma_int_cena3''',
      ));
}

class ReporteStdCall {
  static Future<ApiCallResponse> call({
    int? dias,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'reporte std',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:uRynCvzY/reporte/carga_std',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'dias': dias,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? promedioEnergia(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.promedio_energ''',
      ));
  static int? momentoPlano(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.momento_plano''',
      ));
  static int? promedioDolor(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.promedio_dolor''',
      ));
  static String? evolActividades(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.evolucion_actividades''',
      ));
  static int? dias(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.dias''',
      ));
  static int? actInicio(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.act_inicio''',
      ));
  static int? actFin(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.act_final''',
      ));
  static String? evolucionSintomas(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.evolucion_sintomas''',
      ));
  static int? sintInicio(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sint_inicio''',
      ));
  static int? sintFinal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sint_final''',
      ));
  static String? mejorSolucion(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejor_solucion''',
      ));
  static String? mejorMed(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.mejor_medicamento''',
      ));
  static String? mejorSup(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.mejor_suplemento''',
      ));
  static int? cantDiasInto(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.cant_dias_into''',
      ));
  static double? porcentajeDiasInto(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.porcentaje_dias_into''',
      ));
  static int? promedioHoras(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$._reporte_sueno.aver_horas''',
      ));
  static int? promedioCalidad(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$._reporte_sueno.aver_calidad_sueno''',
      ));
  static String? suenoEstrategia(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$._reporte_sueno.estrategia''',
      ));
  static String? suenoMed(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$._reporte_sueno.medicamento''',
      ));
  static String? suenoSup(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$._reporte_sueno.suplemento''',
      ));
  static String? momentoEnergia(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.momento_energia''',
      ));
}

class ReporteCusCargaCall {
  static Future<ApiCallResponse> call({
    int? sessionId,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'reporte cus carga',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:uRynCvzY/reporte/carga_cus',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'session_id': sessionId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? promedioEnergia(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.promedio_energ''',
      ));
  static int? momentoPlano(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.momento_plano''',
      ));
  static int? promedioDolor(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.promedio_dolor''',
      ));
  static String? evolActividades(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.evolucion_actividades''',
      ));
  static int? dias(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.dias''',
      ));
  static int? actInicio(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.act_inicio''',
      ));
  static int? actFin(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.act_final''',
      ));
  static String? evolucionSintomas(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.evolucion_sintomas''',
      ));
  static int? sintInicio(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sint_inicio''',
      ));
  static int? sintFinal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sint_final''',
      ));
  static String? mejorSolucion(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.mejor_solucion''',
      ));
  static String? mejorMed(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.mejor_medicamento''',
      ));
  static String? mejorSup(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.mejor_suplemento''',
      ));
  static int? cantDiasInto(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.cant_dias_into''',
      ));
  static int? porcentajeDiasInto(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.porcentaje_dias_into''',
      ));
  static int? promedioHoras(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$._reporte_sueno.aver_horas''',
      ));
  static int? promedioCalidad(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$._reporte_sueno.aver_calidad_sueno''',
      ));
  static String? suenoEstrategia(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$._reporte_sueno.estrategia''',
      ));
  static String? suenoMed(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$._reporte_sueno.medicamento''',
      ));
  static String? suenoSup(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$._reporte_sueno.suplemento''',
      ));
  static String? momentoEnergia(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.momento_energia''',
      ));
}

class ReporteCusCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? userId,
    int? dias,
    String? fechaInicio = '',
    String? fechaFin = '',
    int? sessionId,
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": ${userId},
  "dias": ${dias},
  "fecha_inicio": "${fechaInicio}",
  "fecha_fin": "${fechaFin}",
  "session_id": ${sessionId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'reporte cus',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:uRynCvzY/reporte',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ReporteIntoStdCargaCall {
  static Future<ApiCallResponse> call({
    int? dias,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'reporte into std carga',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:uRynCvzY/reporte_into/carga_std',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'dias': dias,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? cantRegistros(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.cant_registros''',
      ));
  static int? cantDiasInto(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.cant_dias_intolerancias''',
      ));
  static int? porcentajeDias(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.porcentaje_dias_sintomas''',
      ));
  static String? comidaMasSintomas(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.comida_con_mas_sintomas''',
      ));
  static String? des1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.alimento1_desayuno''',
      ));
  static String? des2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.alimento2_desayuno''',
      ));
  static String? des3(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.alimento3_desayuno''',
      ));
  static String? com1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.alimento1_comida''',
      ));
  static String? com2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.alimento2_comida''',
      ));
  static String? com3(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.alimento3_comida''',
      ));
  static String? cen1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.alimento1_cena''',
      ));
  static String? cen2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.alimento2_cena''',
      ));
  static String? cen3(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.alimento3_cena''',
      ));
  static int? dias(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.dias''',
      ));
}

class ReporteIntoCusCreaCall {
  static Future<ApiCallResponse> call({
    int? dias,
    int? userId,
    String? fechaInicio = '',
    String? fechaFin = '',
  }) async {
    final ffApiRequestBody = '''
{
  "dias": ${dias},
  "user_id": ${userId},
  "fecha_inicio": "${fechaInicio}",
  "fecha_fin": "${fechaFin}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'reporte into cus crea',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:uRynCvzY/reporte_into/cus',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? cantRegistros(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.cant_registros''',
      ));
  static int? cantDiasInto(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.cant_dias_intolerancias''',
      ));
  static int? porcentaje(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.porcentaje_dias_sintomas''',
      ));
  static String? comidaSintoma(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.comida_con_mas_sintomas''',
      ));
  static String? des1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.alimento1_desayuno''',
      ));
  static String? des2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.alimento2_desayuno''',
      ));
  static String? des3(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.alimento3_desayuno''',
      ));
  static String? com1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.alimento1_comida''',
      ));
  static String? com2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.alimento2_comida''',
      ));
  static String? com3(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.alimento3_comida''',
      ));
  static String? cen1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.alimento1_cena''',
      ));
  static String? cen2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.alimento2_cena''',
      ));
  static String? cen3(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.alimento3_cena''',
      ));
  static int? dias(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.dias''',
      ));
}

class NoticiasCall {
  static Future<ApiCallResponse> call({
    String? enfermedad = '',
    String? palabra = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'noticias',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/noticias',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'palabra': palabra,
        'enfermedad': enfermedad,
        'visible': "si",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? titulo(dynamic response) => (getJsonField(
        response,
        r'''$[:].titulo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? descripcion(dynamic response) => (getJsonField(
        response,
        r'''$[:].descripcion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? imagen(dynamic response) => (getJsonField(
        response,
        r'''$[:].imagen.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? tituloEn(dynamic response) => (getJsonField(
        response,
        r'''$[:].titulo_en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? descripcionEn(dynamic response) => (getJsonField(
        response,
        r'''$[:].descripcion_en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? likes(dynamic response) => (getJsonField(
        response,
        r'''$[:]._likes_noticias_of_noticias''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class NoticiaIndividualCall {
  static Future<ApiCallResponse> call({
    int? noticiasId,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'noticia individual',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/noticias/${noticiasId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'noticias_id': noticiasId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? tituloEs(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.titulo''',
      ));
  static String? texto1es(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto1''',
      ));
  static String? texto2es(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto2''',
      ));
  static String? texto3es(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto3''',
      ));
  static String? texto4es(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto4''',
      ));
  static String? texto5es(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto5''',
      ));
  static String? texto6es(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto6''',
      ));
  static String? texto7es(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto7''',
      ));
  static String? texto8es(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto8''',
      ));
  static String? texto9es(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto9''',
      ));
  static String? texto10es(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto10''',
      ));
  static String? texto11es(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto11''',
      ));
  static String? texto12es(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto12''',
      ));
  static String? urlVideoEs(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.url_video''',
      ));
  static String? autor(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.autor''',
      ));
  static String? tituloEn(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.titulo_en''',
      ));
  static String? texto1en(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto1_en''',
      ));
  static String? texto2en(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto2_en''',
      ));
  static String? texto3en(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto3_en''',
      ));
  static String? texto4en(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto4_en''',
      ));
  static String? texto5en(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto5_en''',
      ));
  static String? texto6en(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto6_en''',
      ));
  static String? texto7en(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto7_en''',
      ));
  static String? texto8en(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto8_en''',
      ));
  static String? texto9en(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto9_en''',
      ));
  static String? texto10en(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto10_en''',
      ));
  static String? texto11en(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto11_en''',
      ));
  static String? texto12en(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto12_en''',
      ));
  static String? imagen(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.imagen.url''',
      ));
  static String? botonEn(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nombre_boton_en''',
      ));
  static String? botonEs(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nombre_boton_es''',
      ));
  static int? like(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$._likes_noticias''',
      ));
  static int? creadorId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id_creador''',
      ));
  static String? ctrlImagen(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.ctrl_imagen''',
      ));
}

class ComentariosNoticiasCall {
  static Future<ApiCallResponse> call({
    int? idNoticia,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'comentarios noticias',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/comentarios_noticias',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id_noticia': idNoticia,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nombre(dynamic response) => (getJsonField(
        response,
        r'''$[:].nombre''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? comentario(dynamic response) => (getJsonField(
        response,
        r'''$[:].comentario''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? fechaTxt(dynamic response) => (getJsonField(
        response,
        r'''$[:].fecha_txt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? userId(dynamic response) => (getJsonField(
        response,
        r'''$[:].user_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class ComentarioNoticiaBorraCall {
  static Future<ApiCallResponse> call({
    int? comentariosNoticiasId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'comentario noticia borra',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/comentarios_noticias/${comentariosNoticiasId}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {
        'comentarios_noticias_id': comentariosNoticiasId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NoticiasLikeCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? noticiaId,
    String? accion = '',
  }) async {
    final ffApiRequestBody = '''
{
  "noticia_id": ${noticiaId},
  "accion": "${accion}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'noticias like',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/noticias/crea_like',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NoticiaCreaComentarioCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? texto = '',
    int? noticiaId,
  }) async {
    final ffApiRequestBody = '''
{
  "texto": "${texto}",
  "noticia_id": ${noticiaId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'noticia crea comentario',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/noticias/crea_comentario',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InvitaAmigoCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? emailAmigo = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email_amigo": "${emailAmigo}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'invita amigo',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/invitaciones',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EncuestasListadoCall {
  static Future<ApiCallResponse> call({
    int? idEnfermedad,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'encuestas listado',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/encuestas',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'id_enfermedad': idEnfermedad,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  static String? tituloEs(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].titulo''',
      ));
  static String? tituloEn(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].titulo_en''',
      ));
  static int? cantPreguntas(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].cant_preguntas''',
      ));
  static String? fechaTxt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].fecha_txt''',
      ));
  static bool? user(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:]._encuestas_realizadas_of_user''',
      ));
}

class EncuestasCancelaCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? encuestaId,
  }) async {
    final ffApiRequestBody = '''
{
  "encuesta_id": ${encuestaId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'encuestas cancela',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:fVcWMeJP/encuestaFF/cancela',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EncuestaPreguntaCall {
  static Future<ApiCallResponse> call({
    int? encuestaId,
    int? preguntaId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'encuesta pregunta',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:fVcWMeJP/encuestaFF/preguntas',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'encuesta_id': encuestaId,
        'pregunta_id': preguntaId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? pregunta(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.pregunta''',
      ));
  static int? tipoPregunta(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.tipo_pregunta''',
      ));
  static String? imagen(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.imagen.url''',
      ));
  static String? preguntaEn(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pregunta_en''',
      ));
  static String? ctrlImagen(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.ctrl_imagen''',
      ));
}

class EncuestaDesplegableOpcionesCall {
  static Future<ApiCallResponse> call({
    int? encuestaId,
    int? preguntaId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'encuesta desplegable opciones',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:fVcWMeJP/encuestaFF/desplegable_opciones',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'encuesta_id': encuestaId,
        'pregunta_id': preguntaId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? textoEs(dynamic response) => (getJsonField(
        response,
        r'''$[:].texto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? textoEn(dynamic response) => (getJsonField(
        response,
        r'''$[:].texto_en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class EncuestaGuardaRespuestaCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? encuestaId,
    int? preguntaId,
    String? textoLibre = '',
    String? despOpciones = '',
    double? desp5,
    double? desp10,
    String? pregunta = '',
    int? tipoPregunta,
  }) async {
    final ffApiRequestBody = '''
{
  "encuesta_id": ${encuestaId},
  "pregunta_id": ${preguntaId},
  "texto_libre": "${textoLibre}",
  "desp_opciones": "${despOpciones}",
  "desp5": ${desp5},
  "desp10": ${desp10},
  "pregunta": "${pregunta}",
  "tipo_pregunta": ${tipoPregunta}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'encuesta guarda respuesta',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:fVcWMeJP/encuestaFF/guarda_respuesta',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EncuestaFinalizaCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? encuestaId,
  }) async {
    final ffApiRequestBody = '''
{
  "encuesta_id": ${encuestaId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'encuesta finaliza',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:fVcWMeJP/encuestaFF/actualiza_cantidad',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MarketplaceCategoriasCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'marketplace categorias',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/marketplace/categorias',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nombre(dynamic response) => (getJsonField(
        response,
        r'''$[:].nombre''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? catId(dynamic response) => (getJsonField(
        response,
        r'''$[:].id_cat''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? imgUrl(dynamic response) => (getJsonField(
        response,
        r'''$[:].img.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? nombreEn(dynamic response) => (getJsonField(
        response,
        r'''$[:].nombre_en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class MarketplaceProductosCall {
  static Future<ApiCallResponse> call({
    int? categoriaId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'marketplace productos',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/marketplace/productos',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'categoria_id': categoriaId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nombre(dynamic response) => (getJsonField(
        response,
        r'''$[:].nombre''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? descripcion(dynamic response) => (getJsonField(
        response,
        r'''$[:].descripcion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? precio(dynamic response) => (getJsonField(
        response,
        r'''$[:].precio''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? imagen(dynamic response) => (getJsonField(
        response,
        r'''$[:].img.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? nombreEn(dynamic response) => (getJsonField(
        response,
        r'''$[:].nombre_en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? descripcionEn(dynamic response) => (getJsonField(
        response,
        r'''$[:].descipcion_en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class MarketplaceIndividualCall {
  static Future<ApiCallResponse> call({
    int? productoId,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'marketplace individual',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/marketplace/individual',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'producto_id': productoId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? nombre(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nombre''',
      ));
  static String? descripcion(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.descripcion''',
      ));
  static int? precio(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.precio''',
      ));
  static String? tituloAviso(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.tiutlo_aviso''',
      ));
  static String? aviso(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.aviso''',
      ));
  static String? imagen(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.img.url''',
      ));
  static String? nombreEn(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nombre_en''',
      ));
  static String? descripcionEn(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.descipcion_en''',
      ));
  static String? tituloAvisoEn(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.titulo_aviso_en''',
      ));
  static String? avisoEn(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.aviso_en''',
      ));
}

class MarketplaceIntentoCompraCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? porductoId,
  }) async {
    final ffApiRequestBody = '''
{
  "producto_id": ${porductoId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'marketplace intento compra',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/marketplace/intentos_compra',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ComunidadMuroCall {
  static Future<ApiCallResponse> call({
    int? userId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'comunidad muro',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/posts',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'user_id': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? texto(dynamic response) => (getJsonField(
        response,
        r'''$[:].texto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? tipoUsuario(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipo_usuario''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? comentariosPost(dynamic response) => (getJsonField(
        response,
        r'''$[:]._comentarios_post_of_posts''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? imagenPost(dynamic response) => (getJsonField(
        response,
        r'''$[:].imagen.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? nombre(dynamic response) => (getJsonField(
        response,
        r'''$[:]._user.nombre''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? apellidos(dynamic response) => (getJsonField(
        response,
        r'''$[:]._user.apellidos''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? avatar(dynamic response) => (getJsonField(
        response,
        r'''$[:]._user.avatar.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? insignia(dynamic response) => (getJsonField(
        response,
        r'''$[:]._user.insignia.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<bool>? likeUser(dynamic response) => (getJsonField(
        response,
        r'''$[:]._likes_post_of_posts_of_user''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<int>? likesPost(dynamic response) => (getJsonField(
        response,
        r'''$[:]._likes_post''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? creadorUser(dynamic response) => (getJsonField(
        response,
        r'''$[:].creador''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? userTipoUser(dynamic response) => (getJsonField(
        response,
        r'''$[:]._user.tipo_usuario''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? placeholder(dynamic response) => (getJsonField(
        response,
        r'''$[:].img_placeholder''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<bool>? conectado(dynamic response) => (getJsonField(
        response,
        r'''$[:]._conectado''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<int>? perfilId(dynamic response) => (getJsonField(
        response,
        r'''$[:]._user.perfil_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nombreEmpresa(dynamic response) => (getJsonField(
        response,
        r'''$[:]._user.nombre_empresa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ComunidadLikesCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? postId,
    String? accion = '',
  }) async {
    final ffApiRequestBody = '''
{
  "post_id": ${postId},
  "accion": "${accion}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'comunidad likes',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/comunidad/likes',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ComunidadReporaPostCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? postId,
  }) async {
    final ffApiRequestBody = '''
{
  "post_id": ${postId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'comunidad repora post',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/comunidad/reporta_post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ComunidadEliminaPostCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? postId,
  }) async {
    final ffApiRequestBody = '''
{
  "post_id": ${postId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'comunidad elimina post',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/comunidad/elimina_post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ComunidadCreaPostCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'comunidad crea post',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/comunidad/crea_post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? postId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class ComunidadPostIndividualCall {
  static Future<ApiCallResponse> call({
    int? postId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'comunidad post individual',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/comunidad/post_individual',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'post_id': postId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? texto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto''',
      ));
  static String? finalizado(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.finalizado''',
      ));
  static String? imagen(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.imagen.url''',
      ));
}

class ComunidadSubeImagenCall {
  static Future<ApiCallResponse> call({
    int? postId,
    FFUploadedFile? img,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'comunidad sube imagen',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/comunidad/sube_foto',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'post_id': postId,
        'img': img,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CamunidadGuardaDatosCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? postId,
    String? texto = '',
  }) async {
    final ffApiRequestBody = '''
{
  "post_id": ${postId},
  "texto": "${texto}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'camunidad guarda datos',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/comunidad/guarda_post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TestlogCall {
  static Future<ApiCallResponse> call({
    int? userId,
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": ${userId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'testlog',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/comunidad_log',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ComunidadComentariosCall {
  static Future<ApiCallResponse> call({
    int? postId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'comunidad comentarios',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/comentarios_post',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'post_id': postId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? comentario(dynamic response) => (getJsonField(
        response,
        r'''$[:].comentario''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? userId(dynamic response) => (getJsonField(
        response,
        r'''$[:].user_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nombre(dynamic response) => (getJsonField(
        response,
        r'''$[:]._user.nombre''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? apellidos(dynamic response) => (getJsonField(
        response,
        r'''$[:]._user.apellidos''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? avatar(dynamic response) => (getJsonField(
        response,
        r'''$[:]._user.avatar.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? fecha(dynamic response) => (getJsonField(
        response,
        r'''$[:].fecha_txt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? insigniaUrl(dynamic response) => (getJsonField(
        response,
        r'''$[:]._user.insignia.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? perfilId(dynamic response) => (getJsonField(
        response,
        r'''$[:]._user.perfil_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nombreEmpresa(dynamic response) => (getJsonField(
        response,
        r'''$[:]._user.nombre_empresa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ComunidadEliminaComentarioCall {
  static Future<ApiCallResponse> call({
    int? comentariosPostId,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'comunidad elimina comentario',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/comentarios_post/${comentariosPostId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'comentarios_post_id': comentariosPostId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ComunidadAgregaComentarioCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? comentario = '',
    int? postId,
    int? userId,
  }) async {
    final ffApiRequestBody = '''
{
  "comentario": "${comentario}",
  "posts_id": ${postId},
  "user_id": ${userId}
 }
''';
    return ApiManager.instance.makeApiCall(
      callName: 'comunidad agrega comentario',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:WxH3nXRh/comentarios_post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChatInvitaUserCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? emisorId,
    int? receptorId,
  }) async {
    final ffApiRequestBody = '''
{
  "user_id_emisor": ${emisorId},
  "user_id_receptor": ${receptorId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'chat invita user',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/chat/user_solicita_contacto',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChatGestionaInvitacionesCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? idConversacion,
    String? estado = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id_conversacion": ${idConversacion},
  "estado": "${estado}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'chat gestiona invitaciones',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/chat/acepta-rechaza_contacto',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChatListadoInvitacionesCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'chat listado invitaciones',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/chat/invitaciones_pendientes',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? creador(dynamic response) => (getJsonField(
        response,
        r'''$[:].titulo_creador''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ChatMisConversacionesCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'chat mis conversaciones',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/chat/mis_conversaciones',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? creadorId(dynamic response) => (getJsonField(
        response,
        r'''$[:].user_creador''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nombreCreador(dynamic response) => (getJsonField(
        response,
        r'''$[:].titulo_creador''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? receptorId(dynamic response) => (getJsonField(
        response,
        r'''$[:].user_receptor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nombreReceptod(dynamic response) => (getJsonField(
        response,
        r'''$[:].titulo_receptor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? avatarCreador(dynamic response) => (getJsonField(
        response,
        r'''$[:]._user_creador.avatar.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? avatarReceptor(dynamic response) => (getJsonField(
        response,
        r'''$[:]._user_receptor.avatar.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? leidosCreador(dynamic response) => (getJsonField(
        response,
        r'''$[:].leidos_creador''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? leidosReceptor(dynamic response) => (getJsonField(
        response,
        r'''$[:].leidos_receptor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? totalMensajes(dynamic response) => (getJsonField(
        response,
        r'''$[:].total_mensajes''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class ChatEliminaConversacionCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? conversacionId,
  }) async {
    final ffApiRequestBody = '''
{
  "conversacion_id": ${conversacionId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'chat elimina conversacion',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/chat/elimina_conversacion',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChatMensajesCall {
  static Future<ApiCallResponse> call({
    int? conversacionId,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'chat mensajes',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/chat/mensajes',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'conversacion_id': conversacionId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? userEmisorId(dynamic response) => (getJsonField(
        response,
        r'''$[:].user_emisor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? mensaje(dynamic response) => (getJsonField(
        response,
        r'''$[:].mensaje''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? fecha(dynamic response) => (getJsonField(
        response,
        r'''$[:].fecha_txt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? nombre(dynamic response) => (getJsonField(
        response,
        r'''$[:].nombre_emisor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ChatCreaMensajeCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? conversacionId,
    String? texto = '',
    String? nombre = '',
  }) async {
    final ffApiRequestBody = '''
{
  "conversacion_id": ${conversacionId},
  "texto": "${texto}",
  "nombre": "${nombre}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'chat crea mensaje',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/chat/crea_mensaje',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChatEliminaMensajeCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? mensajeId,
  }) async {
    final ffApiRequestBody = '''
{
  "mensaje_id": ${mensajeId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'chat elimina mensaje',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/chat/elimina_mensaje',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChatActualizaLeidosCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? conversacionId,
  }) async {
    final ffApiRequestBody = '''
{
  "conversacion_id": ${conversacionId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'chat actualiza leidos',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/chat/actualiza_leidos',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PerfilAvataresCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'perfil avatares',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/perfil/avatares',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? avatarUrl(dynamic response) => (getJsonField(
        response,
        r'''$[:].avatar.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PerfilSubeAvatarCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    FFUploadedFile? img,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'perfil sube avatar',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/perfil/sube_imagen',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'img': img,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PerfilUsaAvatarCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? avatarId,
  }) async {
    final ffApiRequestBody = '''
{
  "avatar_id": ${avatarId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'perfil usa avatar',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/profile/usa_avatar',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PerfilFaqsCall {
  static Future<ApiCallResponse> call({
    int? perfilId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'perfil faqs',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/perfil/faqs',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'perfil_id': perfilId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? preguntaEs(dynamic response) => (getJsonField(
        response,
        r'''$[:].pregunta''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? respuestaEs(dynamic response) => (getJsonField(
        response,
        r'''$[:].respuesta''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? preguntaEn(dynamic response) => (getJsonField(
        response,
        r'''$[:].pregunta_en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? respuestaEn(dynamic response) => (getJsonField(
        response,
        r'''$[:].respuesta_en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PerilContactoCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? modo = '',
    String? motivo = '',
    String? movil = '',
    String? mensaje = '',
  }) async {
    final ffApiRequestBody = '''
{
  "movil": "${movil}",
  "motivo": "${motivo}",
  "modo": "${modo}",
  "mensaje": "${mensaje}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'peril contacto',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/perfil/contacto',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PerfilActivaPushCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? accion = '',
  }) async {
    final ffApiRequestBody = '''
{
  "accion": "${accion}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'perfil activa push',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/perfil/activa_push',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PerfilNotificacionesCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'perfil notificaciones',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/perfil/notificaciones',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? titulo(dynamic response) => (getJsonField(
        response,
        r'''$[:].titulo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? mensaje(dynamic response) => (getJsonField(
        response,
        r'''$[:].mensaje''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? leido(dynamic response) => (getJsonField(
        response,
        r'''$[:].leido''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? chat(dynamic response) => (getJsonField(
        response,
        r'''$[:].chat''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? conversacionId(dynamic response) => (getJsonField(
        response,
        r'''$[:].id_conversacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? seccion(dynamic response) => (getJsonField(
        response,
        r'''$[:].seccion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? fecha(dynamic response) => (getJsonField(
        response,
        r'''$[:].fecha_txt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? tituloEn(dynamic response) => (getJsonField(
        response,
        r'''$[:].titulo_en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? mensajeEn(dynamic response) => (getJsonField(
        response,
        r'''$[:].mensaje_en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PerfilEliminaNotificacionCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? notificacionId,
  }) async {
    final ffApiRequestBody = '''
{
  "notificacion_id": ${notificacionId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'perfil elimina notificacion',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/perfil/elimina_notificacion',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PerfilMisMedicamentosCall {
  static Future<ApiCallResponse> call({
    int? userId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'perfil mis medicamentos',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/perfil/mis_medicamentos',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'user_id': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nombre(dynamic response) => (getJsonField(
        response,
        r'''$[:].nombre''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? dosis(dynamic response) => (getJsonField(
        response,
        r'''$[:].dosis''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? posologia(dynamic response) => (getJsonField(
        response,
        r'''$[:].posologia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PerfilCreaMedicamentoCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? nombre = '',
    String? dosis = '',
    String? poso = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nombre": "${nombre}",
  "dosis": "${dosis}",
  "poso": "${poso}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'perfil crea medicamento',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/perfil/crea_med',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PerfilMedicamentoIndividualCall {
  static Future<ApiCallResponse> call({
    int? medId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'perfil medicamento individual',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/perfil/med_individual',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'med_id': medId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? nombre(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nombre''',
      ));
  static String? dosis(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dosis''',
      ));
  static String? posologia(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.posologia''',
      ));
}

class PerfilEditaMedicamentoCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? medId,
    String? nombre = '',
    String? dosis = '',
    String? posologia = '',
  }) async {
    final ffApiRequestBody = '''
{
  "med_id": ${medId},
  "nombre": "${nombre}",
  "dosis": "${dosis}",
  "posologia": "${posologia}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'perfil edita medicamento',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/perfil/edita_med',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UserEliminaCuentaCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'user elimina cuenta',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/user/elimina_cuenta',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PerfilActualizaDatosPersonalesCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? nombre = '',
    String? apellidos = '',
    String? genero = '',
    String? fecha = '',
    int? peso,
    int? altura,
    String? fumador = '',
    String? alcohol = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nombre": "${nombre}",
  "apellidos": "${apellidos}",
  "genero": "${genero}",
  "fecha": "${fecha}",
  "peso": ${peso},
  "altura": ${altura},
  "fumador": "${fumador}",
  "alcohol": "${alcohol}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'perfil actualiza datos personales',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/perfil/actualiza_datos_pers',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PerfilEnfermedadIndividualCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'perfil enfermedad individual',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/perfil/user_enfermedad_individual',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? finalizoSetupDiario(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.finalizo_seutp_diario''',
      ));
  static String? finalizoSetupInto(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.finalizo_setup_into''',
      ));
  static String? anoCovid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ano_covid''',
      ));
  static String? vecesCovid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.veces_covid''',
      ));
  static String? familiarCovid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.familiar_covid''',
      ));
  static String? gtradoFamiliaCovid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.grado_familia_covid''',
      ));
  static String? eventoFibro(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.evento_fibro''',
      ));
  static String? tiempoFibro(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.tiempo_fibro''',
      ));
  static String? empeoraSintomaFibro(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.empeora_sintomas_fibro''',
      ));
  static String? familiarFibro(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.familiar_fibro''',
      ));
  static String? gradoFamFibro(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.grado_familiar_fibro''',
      ));
  static String? criterioEm(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.criterio_em''',
      ));
  static String? tiempoEm(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tiempo_em''',
      ));
  static String? eventoEm(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.evento_em''',
      ));
  static String? familiarEm(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.familiar_em''',
      ));
  static String? gradoFamEm(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.grado_familiar_em''',
      ));
  static String? auto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.autoinmune''',
      ));
  static String? nombreAuto(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.nombre_autoinmune''',
      ));
  static String? tiempoAuto(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.tiempo_autoinmune''',
      ));
  static String? familiarAuto(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.familiar_autoinmune''',
      ));
  static String? gradoFamAuto(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.grado_familiar_auto''',
      ));
  static String? intestino(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.intestino''',
      ));
  static String? tiempoIntestino(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.tiempo_intestino''',
      ));
  static String? into1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.into1''',
      ));
  static String? tiempoInto1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.tiempo_into1''',
      ));
  static String? damInto1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.familiar_into1''',
      ));
  static String? gradoFamInto1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.grado_familiar_into1''',
      ));
  static String? into2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.into2''',
      ));
  static String? tiempoInto2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.tiempo_into2''',
      ));
  static String? into3(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.into3''',
      ));
  static String? tiempoInto3(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.tiempo_into3''',
      ));
  static String? into4(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.into4''',
      ));
  static String? tiempoInto4(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.tiempo_into4''',
      ));
}

class PerfilMisAsociacionesCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'perfil mis asociaciones',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/user/mis_asociaciones',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nombre(dynamic response) => (getJsonField(
        response,
        r'''$[:].nombre''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? asoId(dynamic response) => (getJsonField(
        response,
        r'''$[:].aso_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? asociado(dynamic response) => (getJsonField(
        response,
        r'''$[:].asociado''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PerfilGestionAsoCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? asoId,
    String? accion = '',
  }) async {
    final ffApiRequestBody = '''
{
  "aso_id": ${asoId},
  "accion": "${accion}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'perfil gestion aso',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/perfil/gestiona_asos',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EmpresaListadoEncuestasCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? finalizada = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'empresa listado encuestas',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa/encuesta_listado',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'finalizada': finalizada,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? tituloEs(dynamic response) => (getJsonField(
        response,
        r'''$[:].titulo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? tituloEn(dynamic response) => (getJsonField(
        response,
        r'''$[:].titulo_en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? cantRespuestas(dynamic response) => (getJsonField(
        response,
        r'''$[:].cant_respuestas''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? fecha(dynamic response) => (getJsonField(
        response,
        r'''$[:].fecha_txt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? visible(dynamic response) => (getJsonField(
        response,
        r'''$[:].visible''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? aprobada(dynamic response) => (getJsonField(
        response,
        r'''$[:].aprobada''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pdteAprobar(dynamic response) => (getJsonField(
        response,
        r'''$[:].pdte_aprobar''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class EmpresaEncuestaIndividualCall {
  static Future<ApiCallResponse> call({
    int? encuestaId,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'empresa encuesta individual',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa/encuesta_individual',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'encuesta_id': encuestaId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? tituloEs(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.titulo''',
      ));
  static String? tituloEn(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.titulo_en''',
      ));
  static String? finalizada(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.finalizada''',
      ));
  static int? cantPreguntas(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.cant_preguntas''',
      ));
  static String? fecha(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.fecha_txt''',
      ));
  static String? visible(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.visible''',
      ));
  static int? cantRespuestas(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.cant_respuestas''',
      ));
  static String? aprobada(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.aprobada''',
      ));
  static String? pdteAprobar(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pdte_aprobar''',
      ));
  static int? cantUsuariosResp(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.cant_usuarios_respondieron''',
      ));
  static String? publicoTodos(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.publico_todos''',
      ));
  static int? publico1(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id_enf_1''',
      ));
  static int? publico2(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id_enf_2''',
      ));
  static int? publico3(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id_enf_3''',
      ));
  static int? publico4(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id_enf_4''',
      ));
  static int? publico5(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id_enf_5''',
      ));
  static int? publico6(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id_enf_6''',
      ));
  static int? publico7(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id_enf_7''',
      ));
  static int? publico8(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id_enf_8''',
      ));
  static int? publico9(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id_enf_9''',
      ));
}

class EmpresaEncuestaVisibilidadCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? encuestaId,
    String? accion = '',
  }) async {
    final ffApiRequestBody = '''
{
  "encuesta_id": ${encuestaId},
  "accion": "${accion}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'empresa encuesta visibilidad',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa/visibilidad_encuesta',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EmpresaEncuestaFinalizaCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? encuestaId,
  }) async {
    final ffApiRequestBody = '''
{
  "encuesta_id": ${encuestaId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'empresa encuesta finaliza',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa/finaliza_encuesta',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EmpresaListadoPreguntasCall {
  static Future<ApiCallResponse> call({
    int? encuestaId,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'empresa listado preguntas',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:fVcWMeJP/empresa/listado_preguntas',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'encuesta_id': encuestaId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? preguntaEs(dynamic response) => (getJsonField(
        response,
        r'''$[:].pregunta''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? preguntaEn(dynamic response) => (getJsonField(
        response,
        r'''$[:].pregunta_en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? tipoPregunta(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipo_pregunta''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? imagen(dynamic response) => (getJsonField(
        response,
        r'''$[:].imagen.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class EmpresaExportaEncuestaCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? userId,
    int? encuestaId,
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": ${userId},
  "encuesta_id": ${encuestaId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'empresa exporta encuesta',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:IZ8IN-R8/create_and_store_csv',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EmpresaCreaEncuestaCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? tituloEs = '',
    String? tituloEn = '',
    String? publicoTodos = '',
    int? enf1,
    int? enf2,
    int? enf3,
    int? enf4,
    int? enf5,
    int? enf6,
    int? enf7,
    int? enf8,
    int? enf9,
  }) async {
    final ffApiRequestBody = '''
{
  "titulo_es": "${tituloEs}",
  "titulo_en": "${tituloEn}",
  "publico_todos": "${publicoTodos}",
  "enf1": ${enf1},
  "enf2": ${enf2},
  "enf3": ${enf3},
  "enf4": ${enf4},
  "enf5": ${enf5},
  "enf6": ${enf6},
  "enf7": ${enf7},
  "enf8": ${enf8},
  "enf9": ${enf9}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'empresa crea encuesta',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa/crea_encuesta',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class EmpresaListadoPreguntasEncuestaCall {
  static Future<ApiCallResponse> call({
    int? encuestaId,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'empresa listado preguntas encuesta',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa/listado_preguntas',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'encuesta_id': encuestaId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? preguntaEs(dynamic response) => (getJsonField(
        response,
        r'''$[:].pregunta''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? preguntaEn(dynamic response) => (getJsonField(
        response,
        r'''$[:].pregunta_en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? numPregunta(dynamic response) => (getJsonField(
        response,
        r'''$[:].num_pregunta''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? tipoPregunta(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipo_pregunta''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? tipoPreguntaTxt(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipo_respuesta_txt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class EmpresaCreaPreguntaCall {
  static Future<ApiCallResponse> call({
    int? encuestaId,
  }) async {
    final ffApiRequestBody = '''
{
  "encuesta_id": ${encuestaId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'empresa crea pregunta',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa/crea_preguntas123',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? preguntaId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class EmpresaCreaOpcionDesplegableCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? preguntaId,
    String? opcion = '',
    int? encuestaId,
    String? opcionEn = '',
  }) async {
    final ffApiRequestBody = '''
{
  "pregunta_id": ${preguntaId},
  "opcion": "${opcion}",
  "encuesta_id": ${encuestaId},
  "opcion_en": "${opcionEn}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'empresa crea opcion desplegable',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa/crea_opcion_desplegable',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EmpresaListadoOpcionesCall {
  static Future<ApiCallResponse> call({
    int? encuestaId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'empresa listado opciones',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa/listado_opciones',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'encuesta_id': encuestaId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? textoEs(dynamic response) => (getJsonField(
        response,
        r'''$[:].texto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? textoEn(dynamic response) => (getJsonField(
        response,
        r'''$[:].texto_en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class EmpresaListadoOpcionesEditaCall {
  static Future<ApiCallResponse> call({
    int? preguntaId,
    int? encuestaId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'empresa listado opciones edita',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa/listado_opciones_edita',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'pregunta_id': preguntaId,
        'encuesta_id': encuestaId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? textoEs(dynamic response) => (getJsonField(
        response,
        r'''$[:].texto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? textoEn(dynamic response) => (getJsonField(
        response,
        r'''$[:].texto_en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class EmpresaBorraOpcionEncuestaCall {
  static Future<ApiCallResponse> call({
    int? opcionId,
  }) async {
    final ffApiRequestBody = '''
{
  "opcion_id": ${opcionId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'empresa borra opcion encuesta',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa/elimina_opcion_encuesta',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EmpresaEditaPreguntaCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? preguntaId,
    int? encuestaId,
    String? preguntaEs = '',
    String? preguntaEn = '',
    int? tipoRespuesta,
  }) async {
    final ffApiRequestBody = '''
{
  "pregunta_id": ${preguntaId},
  "pregunta_es": "${preguntaEs}",
  "pregunta_en": "${preguntaEn}",
  "tipo_respuesta": ${tipoRespuesta},
  "encuesta_id": ${encuestaId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'empresa edita pregunta',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa/edita_pregunta',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EmpresasubeFotoEncuestaCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? img,
    int? preguntaId,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'empresasube foto encuesta',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa/sube_foto_encuesta',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'img': img,
        'pregunta_id': preguntaId,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EmpresaImagenPreguntaCall {
  static Future<ApiCallResponse> call({
    int? preguntaId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'empresa imagen pregunta',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa/foto_encuesta',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'pregunta_id': preguntaId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? imagen(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.imagen.url''',
      ));
  static int? encustaId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.encuestas_id''',
      ));
  static String? preguntaEs(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pregunta''',
      ));
  static String? preguntaEn(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pregunta_en''',
      ));
  static int? tipoPregunta(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.tipo_pregunta''',
      ));
  static int? numPregunta(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.num_pregunta''',
      ));
}

class EmpresaBorraImagenEncuestaCall {
  static Future<ApiCallResponse> call({
    int? preguntaId,
  }) async {
    final ffApiRequestBody = '''
{
  "pregunta_id": ${preguntaId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'empresa borra imagen encuesta',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa/borra_imagen_encuesta',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EmpresaCuentaPreguntasCall {
  static Future<ApiCallResponse> call({
    int? encuestaId,
  }) async {
    final ffApiRequestBody = '''
{
  "encuesta_id": ${encuestaId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'empresa cuenta preguntas',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa/cuenta_preguntas',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? cantidad(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.cant''',
      ));
}

class EmpresaBorraPreguntaCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? preguntaId,
    int? encuestaId,
  }) async {
    final ffApiRequestBody = '''
{
  "pregunta_id": ${preguntaId},
  "encuesta_id": ${encuestaId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'empresa borra pregunta',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa/elimina_pregunta',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EmpresaFinalizaEncuestaCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? encuestaId,
  }) async {
    final ffApiRequestBody = '''
{
  "encuesta_id": ${encuestaId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'empresa finaliza encuesta',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa/fin_crea_encuesta',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EmpresaCreaNoticiaCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'empresa crea noticia',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa_news/crea_noticia',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class EmpresaNoticiaIndividualCall {
  static Future<ApiCallResponse> call({
    int? noticiaId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'empresa noticia individual',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa_news/noticia_individual',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'noticia_id': noticiaId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? tituloEs(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.titulo''',
      ));
  static String? tituloEn(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.titulo_en''',
      ));
  static String? descEs(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.descripcion''',
      ));
  static String? descEn(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.descripcion_en''',
      ));
  static String? text1Es(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto1''',
      ));
  static String? texto1En(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.texto1_en''',
      ));
  static String? tag(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tag_enfermedad''',
      ));
  static String? imagen(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.imagen.url''',
      ));
  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url_video''',
      ));
  static String? botonEs(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nombre_boton_es''',
      ));
  static String? botonEn(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nombre_boton_en''',
      ));
}

class EmpresaNoticiaSubeImagenCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? img,
    int? noticiaId,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'empresa noticia sube imagen',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa_news/sube_imagen',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'img': img,
        'noticia_id': noticiaId,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EmpresaBorraImagenNewsCall {
  static Future<ApiCallResponse> call({
    int? noticiaId,
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "noticia_id": ${noticiaId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'empresa borra imagen news',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa_news/borra_imagen',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EmpresaEditaNewsCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? noticiaId,
    String? tituloEs = '',
    String? tituloEn = '',
    String? descEs = '',
    String? descEn = '',
    String? textEs = '',
    String? textEn = '',
    String? tag = '',
    String? url = '',
    String? botonEs = '',
    String? botonEn = '',
  }) async {
    final ffApiRequestBody = '''
{
  "noticia_id": ${noticiaId},
  "titulo_es": "${tituloEs}",
  "titulo_en": "${tituloEn}",
  "desc_es": "${descEs}",
  "desc_en": "${descEn}",
  "text_es": "${textEs}",
  "text_en": "${textEn}",
  "tag": "${tag}",
  "url": "${url}",
  "boton_es": "${botonEs}",
  "boton_en": "${botonEn}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'empresa edita news',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa_news/edita',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EmpresaActualizaPerfilCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? profesion = '',
    String? numColegiado = '',
    String? nif = '',
    String? direccion = '',
    String? ciudad = '',
    String? cp = '',
    String? nombreEmp = '',
    String? emailEmp = '',
  }) async {
    final ffApiRequestBody = '''
{
  "profesion": "${profesion}",
  "num_colegiado": "${numColegiado}",
  "nif": "${nif}",
  "direccion": "${direccion}",
  "ciudad": "${ciudad}",
  "cp": "${cp}",
  "nombre_emp": "${nombreEmp}",
  "email_emp": "${emailEmp}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'empresa actualiza perfil',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/perfil/actualiza_datos_pro',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UserLogActivityCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? seccion = '',
  }) async {
    final ffApiRequestBody = '''
{
  "seccion": "${seccion}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'user log activity',
      apiUrl: 'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/user/logActivity',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PerfilEliminaMedicamentCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? medId,
  }) async {
    final ffApiRequestBody = '''
{
  "med_id": ${medId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'perfil elimina medicament',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/perfil/elimina_med',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UserGeneraReporteCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? year,
  }) async {
    final ffApiRequestBody = '''
{
  "year": ${year}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'user genera reporte',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/user/genera_reportes_pdf',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PerfilMarcaNotificacionCall {
  static Future<ApiCallResponse> call({
    int? notifId,
  }) async {
    final ffApiRequestBody = '''
{
  "notificacion_id": ${notifId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'perfil marca notificacion',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/perfil/marca_notificacion',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UserCheckSessionCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'user check session',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/user/check_session',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
}

class EmpresaCreaNewPreguntaEncuestaCall {
  static Future<ApiCallResponse> call({
    String? preguntaEs = '',
    String? preguntaEn = '',
    FFUploadedFile? img,
    int? tipoRespuesta,
    int? encuestaId,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'empresa crea new pregunta encuesta',
      apiUrl:
          'https://x7sh-lgcd-5iob.f2.xano.io/api:zq5X2Mvh/empresa/crea_new_pregunta',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'pregunta_es': preguntaEs,
        'pregunta_en': preguntaEn,
        'img': img,
        'tipo_respuesta': tipoRespuesta,
        'encuesta_id': encuestaId,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
