import '/backend/api_requests/api_calls.dart';
import '/diario_intolerancias/modal_sin_comida/modal_sin_comida_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'dart:ui';
import 'diario_into1_copy_widget.dart' show DiarioInto1CopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class DiarioInto1CopyModel extends FlutterFlowModel<DiarioInto1CopyWidget> {
  ///  Local state fields for this page.

  String? malestarAyer;

  int? comidaId = 0;

  int contadorComida = 0;

  String mostrarContenido = 'no';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (diario intolerancia Uno Carga)] action in diario_Into1Copy widget.
  ApiCallResponse? cargaUnoInto;
  // Stores action output result for [Backend Call - API (diario into ayer)] action in Button widget.
  ApiCallResponse? apiResultozv;
  // Stores action output result for [Backend Call - API (diario intolerancia Uno)] action in Button widget.
  ApiCallResponse? apiIntoP1;
  // Stores action output result for [Backend Call - API (diario intolerancia Uno)] action in Button widget.
  ApiCallResponse? apiIntoP1F;
  // Stores action output result for [Backend Call - API (diario intolerancia Uno)] action in Button widget.
  ApiCallResponse? apiIntoP1FCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
