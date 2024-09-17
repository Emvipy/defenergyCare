import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/noticias/modal_crea_comentario/modal_crea_comentario_widget.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'noticias_detalle_widget.dart' show NoticiasDetalleWidget;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class NoticiasDetalleModel extends FlutterFlowModel<NoticiasDetalleWidget> {
  ///  Local state fields for this page.

  bool fav = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (noticias like)] action in Icon widget.
  ApiCallResponse? apiResult67b;
  Completer<ApiCallResponse>? apiRequestCompleter2;
  // Stores action output result for [Backend Call - API (noticias like)] action in Icon widget.
  ApiCallResponse? apiResult67bCopy;
  Completer<ApiCallResponse>? apiRequestCompleter1;
  // Stores action output result for [Backend Call - API (comentario noticia borra)] action in Icon widget.
  ApiCallResponse? apiResult6ht;
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
  Future waitForApiRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
