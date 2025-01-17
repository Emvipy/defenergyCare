import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'dart:ui';
import 'diario1_widget.dart' show Diario1Widget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class Diario1Model extends FlutterFlowModel<Diario1Widget> {
  ///  Local state fields for this page.

  double porcent = 0.0;

  String manana = 'no';

  String tarde = 'no';

  String noche = 'no';

  int fatiga = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (diario Uno carga)] action in diario1 widget.
  ApiCallResponse? apiResulte2z;
  // State field(s) for Slider widget.
  double? sliderValue;
  // Stores action output result for [Backend Call - API (diario Uno)] action in Button widget.
  ApiCallResponse? apiP1;
  // Stores action output result for [Backend Call - API (diario Uno)] action in Button widget.
  ApiCallResponse? apiP1F1;
  // Stores action output result for [Backend Call - API (diario Uno)] action in Button widget.
  ApiCallResponse? apiP1F;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
