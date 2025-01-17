import '/backend/api_requests/api_calls.dart';
import '/diario_sueno/modal_cancela_sueno/modal_cancela_sueno_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'dart:ui';
import 'diario_sueno1_widget.dart' show DiarioSueno1Widget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class DiarioSueno1Model extends FlutterFlowModel<DiarioSueno1Widget> {
  ///  Local state fields for this page.

  double horas = 0.0;

  String? conciliar;

  int? contadorConciliar = 0;

  String? mantener;

  int? contadorMantener = 0;

  String? calidadSuenoTxt;

  int calidadSuenoNum = 0;

  int contadorCalidad = 0;

  String? fatiga;

  int contadorFatiga = 0;

  String cuartoOscuro = 'no';

  String antifaz = 'no';

  String tapones = 'no';

  String movil = 'no';

  String cena = 'no';

  String medicacion = 'no';

  String suplementos = 'no';

  String otras = 'no';

  String nada = 'no';

  int? contadorEstategias = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Slider widget.
  double? sliderValue;
  // Stores action output result for [Backend Call - API (diario sueno Uno)] action in Button widget.
  ApiCallResponse? apiSueno1;
  // Stores action output result for [Backend Call - API (diario ultimos meds)] action in Button widget.
  ApiCallResponse? ultMeds;
  // Stores action output result for [Backend Call - API (diario ultimos meds)] action in Button widget.
  ApiCallResponse? ultMeds2;
  // Stores action output result for [Backend Call - API (diario sueno finaliza)] action in Button widget.
  ApiCallResponse? apiResulthcs;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
