import '/backend/api_requests/api_calls.dart';
import '/comunidad/modal_reporta_post/modal_reporta_post_widget.dart';
import '/comunidad/modal_solicita_contacto/modal_solicita_contacto_widget.dart';
import '/comunidad/modal_user/modal_user_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/registro/modal_error_cuenta/modal_error_cuenta_widget.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import '/usuario/modal_cierre_sesion/modal_cierre_sesion_widget.dart';
import 'dart:async';
import '/flutter_flow/custom_functions.dart' as functions;
import 'comunidad_widget.dart' show ComunidadWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class ComunidadModel extends FlutterFlowModel<ComunidadWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (user check session)] action in comunidad widget.
  ApiCallResponse? apiCheck;
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
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
