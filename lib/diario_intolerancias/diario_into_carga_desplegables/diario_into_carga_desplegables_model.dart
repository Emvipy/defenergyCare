import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'diario_into_carga_desplegables_widget.dart'
    show DiarioIntoCargaDesplegablesWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DiarioIntoCargaDesplegablesModel
    extends FlutterFlowModel<DiarioIntoCargaDesplegablesWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (desp comida pescado)] action in diarioIntoCargaDesplegables widget.
  ApiCallResponse? apiPescado;
  // Stores action output result for [Backend Call - API (desp comida carne)] action in diarioIntoCargaDesplegables widget.
  ApiCallResponse? apiDespCarne;
  // Stores action output result for [Backend Call - API (desp comida mariscos)] action in diarioIntoCargaDesplegables widget.
  ApiCallResponse? apiDespMarisco;
  // Stores action output result for [Backend Call - API (desp comida lacteos)] action in diarioIntoCargaDesplegables widget.
  ApiCallResponse? apiLacteos;
  // Stores action output result for [Backend Call - API (desp comida huevos)] action in diarioIntoCargaDesplegables widget.
  ApiCallResponse? apiHuevos;
  // Stores action output result for [Backend Call - API (desp comida cereales)] action in diarioIntoCargaDesplegables widget.
  ApiCallResponse? apiCereales;
  // Stores action output result for [Backend Call - API (desp comida frutas)] action in diarioIntoCargaDesplegables widget.
  ApiCallResponse? apiFrutas;
  // Stores action output result for [Backend Call - API (desp comida verduras)] action in diarioIntoCargaDesplegables widget.
  ApiCallResponse? apiVerduras;
  // Stores action output result for [Backend Call - API (desp comida legumbres)] action in diarioIntoCargaDesplegables widget.
  ApiCallResponse? apiLegumbres;
  // Stores action output result for [Backend Call - API (desp comida frutos secos)] action in diarioIntoCargaDesplegables widget.
  ApiCallResponse? apiSecos;
  // Stores action output result for [Backend Call - API (desp comidas  condimentos)] action in diarioIntoCargaDesplegables widget.
  ApiCallResponse? apiSalsas;
  // Stores action output result for [Backend Call - API (desp comida bebidas)] action in diarioIntoCargaDesplegables widget.
  ApiCallResponse? apiBebidas;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
