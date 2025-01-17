import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'dart:ui';
import 'diario_into3_widget.dart' show DiarioInto3Widget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class DiarioInto3Model extends FlutterFlowModel<DiarioInto3Widget> {
  ///  Local state fields for this page.

  int cefalea = 0;

  int abdominal = 0;

  int nauseas = 0;

  int vomitos = 0;

  int diarrea = 0;

  int respirar = 0;

  int niebla = 0;

  int vision = 0;

  int debilidad = 0;

  int palpitaciones = 0;

  int sudor = 0;

  int picor = 0;

  int hinchazon = 0;

  int gases = 0;

  int ardor = 0;

  int reflujo = 0;

  int digestion = 0;

  int calambres = 0;

  int mareos = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (diario intolerancias Tres Carga)] action in diario_Into3 widget.
  ApiCallResponse? apiP3Carga;
  // Stores action output result for [Backend Call - API (diario Intolerancias Tres)] action in Button widget.
  ApiCallResponse? apiP3;
  // Stores action output result for [Backend Call - API (intolerancia finaliza diario)] action in Button widget.
  ApiCallResponse? apiFIn2;
  // Stores action output result for [Backend Call - API (diario Intolerancias Tres)] action in Button widget.
  ApiCallResponse? apiP3b;
  // Stores action output result for [Backend Call - API (diario Intolerancias Tres)] action in Button widget.
  ApiCallResponse? apiP3b2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
