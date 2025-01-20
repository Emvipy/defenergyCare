import '/backend/api_requests/api_calls.dart';
import '/diario_intolerancias/modal_comida_guardada/modal_comida_guardada_widget.dart';
import '/diario_intolerancias/modal_sin_comida/modal_sin_comida_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'diario_into1_widget.dart' show DiarioInto1Widget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:shake/shake.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class DiarioInto1Model extends FlutterFlowModel<DiarioInto1Widget> {
  ///  Local state fields for this page.

  String? malestarAyer;

  int? comidaId = 0;

  int contadorComida = 0;

  String mostrarContenido = 'no';

  String buscador = 'todos';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (diario intolerancia Uno Carga)] action in diario_Into1 widget.
  ApiCallResponse? cargaUnoIntoOld;
  // Stores action output result for [Backend Call - API (diario into ayer)] action in Button widget.
  ApiCallResponse? apiResultozvPlatos;
  // State field(s) for buscador_plato widget.
  FocusNode? buscadorPlatoFocusNode;
  TextEditingController? buscadorPlatoTextController;
  String? Function(BuildContext, String?)? buscadorPlatoTextControllerValidator;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (intolerancias Uno New)] action in Button widget.
  ApiCallResponse? apipasa1No;
  // Stores action output result for [Backend Call - API (intolerancia finaliza diario)] action in Button widget.
  ApiCallResponse? apiFIn2Copy;
  // Stores action output result for [Backend Call - API (intolerancias Uno New)] action in Button widget.
  ApiCallResponse? apipasa1NoEn;
  // Stores action output result for [Backend Call - API (intolerancia finaliza diario)] action in Button widget.
  ApiCallResponse? apiFIn2Copy2;
  // Stores action output result for [Backend Call - API (intolerancias Uno New)] action in Container_Si widget.
  ApiCallResponse? apiPasaSintoma;
  // Stores action output result for [Backend Call - API (intolerancias Uno New)] action in Container_no widget.
  ApiCallResponse? apipasa1;
  // Stores action output result for [Backend Call - API (intolerancia finaliza diario)] action in Container_no widget.
  ApiCallResponse? apiFIn2;
  // Stores action output result for [Backend Call - API (intolerancias Uno New)] action in Button widget.
  ApiCallResponse? apiIntoP1FPlatos;
  // Stores action output result for [Backend Call - API (intolerancias Uno New)] action in Button widget.
  ApiCallResponse? apiIntoP1FCopyPlatos;
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
  void dispose() {
    buscadorPlatoFocusNode?.dispose();
    buscadorPlatoTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
