import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'emp_detalle_encuesta_widget.dart' show EmpDetalleEncuestaWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EmpDetalleEncuestaModel
    extends FlutterFlowModel<EmpDetalleEncuestaWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (empresa encuesta visibilidad)] action in Icon widget.
  ApiCallResponse? apiResultz8yOculta;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (empresa encuesta visibilidad)] action in Icon widget.
  ApiCallResponse? apiResultz8y;
  // Stores action output result for [Backend Call - API (empresa encuesta finaliza)] action in Button widget.
  ApiCallResponse? apiFinalizaEncuesta;
  // Stores action output result for [Backend Call - API (empresa exporta encuesta)] action in Button widget.
  ApiCallResponse? apiExportaEncuesta;
  // Model for menu_usuario component.
  late MenuUsuarioModel menuUsuarioModel;

  @override
  void initState(BuildContext context) {
    menuUsuarioModel = createModel(context, () => MenuUsuarioModel());
  }

  @override
  void dispose() {
    menuUsuarioModel.dispose();
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