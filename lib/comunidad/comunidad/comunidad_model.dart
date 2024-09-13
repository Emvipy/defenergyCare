import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'comunidad_widget.dart' show ComunidadWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class ComunidadModel extends FlutterFlowModel<ComunidadWidget> {
  ///  State fields for stateful widgets in this page.

  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (comunidad likes)] action in Icon_like widget.
  ApiCallResponse? apiLikes;
  // Stores action output result for [Backend Call - API (comunidad likes)] action in Icon_dlike widget.
  ApiCallResponse? apiLikesDelete;
  // Stores action output result for [Backend Call - API (comunidad crea post)] action in Button widget.
  ApiCallResponse? apiCreaPost;
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
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
