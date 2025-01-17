import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:ui';
import 'resumen_into_widget.dart' show ResumenIntoWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ResumenIntoModel extends FlutterFlowModel<ResumenIntoWidget> {
  ///  Local state fields for this page.

  String? manana;

  String? tarde;

  String? noche;

  int? momento;

  String carnes = 'no';

  String pescado = 'no';

  String marisco = 'no';

  String lacteos = 'no';

  String huevos = 'no';

  String cereales = 'no';

  String frutas = 'no';

  String verduras = 'no';

  String legumbres = 'no';

  String secos = 'no';

  String salsas = 'no';

  String bebidas = 'no';

  String mostrarCarne = 'no';

  String mostrarPescado = 'no';

  String mostrarMarisco = 'no';

  String mostrarLacteos = 'no';

  String mostrarHuevos = 'no';

  String mostrarCereales = 'no';

  String mostrarFrutas = 'no';

  String mostrarVerduras = 'no';

  String? mostrarLegumbres = 'no';

  String mostrarSecos = 'no';

  String mostrarSalsas = 'no';

  String mostrarBebidas = 'no';

  String? carne1;

  String? carne2;

  String? carne3;

  String? carne4;

  String? carne5;

  String? carne6;

  String? carne7;

  String? pescado1;

  String? pescado2;

  String? pescado3;

  String? pescado4;

  String? pescado5;

  String? pescado6;

  String? pescado7;

  String? marisco1;

  String? marisco2;

  String? marisco3;

  String? marisco4;

  String? marisco5;

  String? marisco6;

  String? marisco7;

  String? lacteos1;

  String? lacteos2;

  String? lacteos3;

  String? lacteos4;

  String? lacteos5;

  String? lacteos6;

  String? lacteos7;

  String? huevos1;

  String? cereales1;

  String? cereales2;

  String? cereales3;

  String? cereales4;

  String? cereales5;

  String? cereales6;

  String? cereales7;

  String? frutas1;

  String? frutas2;

  String? frutas3;

  String? frutas4;

  String? frutas5;

  String? frutas6;

  String? frutas7;

  String? verduras1;

  String? verduras2;

  String? verduras3;

  String? verduras4;

  String? verduras5;

  String? verduras6;

  String? verduras7;

  String? legumbres1;

  String? legumbres2;

  String? legumbres3;

  String? legumbres4;

  String? legumbres5;

  String? legumbres6;

  String? legumbres7;

  String? secos1;

  String? secos2;

  String? secos3;

  String? secos4;

  String? secos5;

  String? secos6;

  String? secos7;

  String? salsa1;

  String? salsa2;

  String? salsa3;

  String? salsa4;

  String? salsa5;

  String? salsa6;

  String? salsa7;

  String? bebidas1;

  String? bebidas2;

  String? bebidas3;

  String? bebidas4;

  String? bebidas5;

  String? bebidas6;

  String? bebidas7;

  String? sintoma1;

  String? sintoma2;

  String? sintoma3;

  ///  State fields for stateful widgets in this page.

  // Model for menu_usuario component.
  late MenuUsuarioModel menuUsuarioModel;
  // Stores action output result for [Backend Call - API (resumen carga alimentos)] action in Container_desayuno widget.
  ApiCallResponse? apiDesayuno;
  // Stores action output result for [Backend Call - API (resumen carga alimentos)] action in Container_comida widget.
  ApiCallResponse? apiComida;
  // Stores action output result for [Backend Call - API (resumen carga alimentos)] action in Container_cena widget.
  ApiCallResponse? apiCena;

  @override
  void initState(BuildContext context) {
    menuUsuarioModel = createModel(context, () => MenuUsuarioModel());
  }

  @override
  void dispose() {
    menuUsuarioModel.dispose();
  }
}
