import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/perfil/modal_elimina_user_aso/modal_elimina_user_aso_widget.dart';
import '/perfil/modal_rechaza_user_aso/modal_rechaza_user_aso_widget.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'perfil_users_aso_widget.dart' show PerfilUsersAsoWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PerfilUsersAsoModel extends FlutterFlowModel<PerfilUsersAsoWidget> {
  ///  Local state fields for this page.

  int tipo = 1;

  ///  State fields for stateful widgets in this page.

  Completer<ApiCallResponse>? apiRequestCompleter;
  // State field(s) for buscador widget.
  FocusNode? buscadorFocusNode;
  TextEditingController? buscadorTextController;
  String? Function(BuildContext, String?)? buscadorTextControllerValidator;
  // Stores action output result for [Backend Call - API (perfil gestion aso)] action in Container widget.
  ApiCallResponse? apiResult2m0;
  // Stores action output result for [Backend Call - API (perfil gestion aso)] action in Container widget.
  ApiCallResponse? apiResult2m0a;
  // Stores action output result for [Backend Call - API (aso gestiona user)] action in Icon widget.
  ApiCallResponse? apiResulths6;
  // Model for menu_usuario component.
  late MenuUsuarioModel menuUsuarioModel;

  @override
  void initState(BuildContext context) {
    menuUsuarioModel = createModel(context, () => MenuUsuarioModel());
  }

  @override
  void dispose() {
    buscadorFocusNode?.dispose();
    buscadorTextController?.dispose();

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
