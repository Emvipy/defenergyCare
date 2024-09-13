import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'menu_diario_widget.dart' show MenuDiarioWidget;
import 'package:flutter/material.dart';

class MenuDiarioModel extends FlutterFlowModel<MenuDiarioWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (diario Crea)] action in Row widget.
  ApiCallResponse? apiResultNew1;
  // Stores action output result for [Backend Call - API (diario duplica)] action in Row widget.
  ApiCallResponse? apiResult2lr;
  Completer<ApiCallResponse>? apiRequestCompleter;
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
