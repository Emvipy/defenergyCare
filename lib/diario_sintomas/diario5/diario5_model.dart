import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'diario5_widget.dart' show Diario5Widget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class Diario5Model extends FlutterFlowModel<Diario5Widget> {
  ///  Local state fields for this page.

  int insomnio = 0;

  int nauseas = 0;

  int? vomitos = 0;

  int diarrea = 0;

  int fiebre = 0;

  int frio = 0;

  int tos = 0;

  int respirar = 0;

  int luz = 0;

  int ruido = 0;

  int olores = 0;

  int cognitiva = 0;

  int mental = 0;

  int borrosa = 0;

  int muscular = 0;

  int espasmo = 0;

  int ortostatica = 0;

  int postesfuerzo = 0;

  int palpitaciones = 0;

  int olfato = 0;

  int gusto = 0;

  int tristez = 0;

  int ansiedad = 0;

  int cabeza = 0;

  int articular = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (diario Cinco carga)] action in diario5 widget.
  ApiCallResponse? apiCarga5;
  // Stores action output result for [Backend Call - API (diario Cinco)] action in Button widget.
  ApiCallResponse? apiDiario5;
  // Stores action output result for [Backend Call - API (diario Cinco)] action in Button widget.
  ApiCallResponse? apiDiario5F;
  // Stores action output result for [Backend Call - API (diario Cinco)] action in Button widget.
  ApiCallResponse? apiDiario5F2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
