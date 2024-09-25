import '/backend/api_requests/api_calls.dart';
import '/diario_sintomas/modal_info_crear/modal_info_crear_widget.dart';
import '/diario_sintomas/modal_info_duplicar/modal_info_duplicar_widget.dart';
import '/diario_sintomas/modal_info_editar/modal_info_editar_widget.dart';
import '/diario_sintomas/modal_info_finalizar/modal_info_finalizar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'menu_diario_widget.dart' show MenuDiarioWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
