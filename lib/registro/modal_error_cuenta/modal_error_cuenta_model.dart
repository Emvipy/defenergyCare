import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'modal_error_cuenta_widget.dart' show ModalErrorCuentaWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalErrorCuentaModel extends FlutterFlowModel<ModalErrorCuentaWidget> {
  ///  Local state fields for this component.

  String? mensaje = 'no';

  String mensajePass = 'no';

  ///  State fields for stateful widgets in this component.

  // State field(s) for pass widget.
  FocusNode? passFocusNode;
  TextEditingController? passTextController;
  late bool passVisibility;
  String? Function(BuildContext, String?)? passTextControllerValidator;
  // Stores action output result for [Backend Call - API (signUp cancela alta)] action in Button widget.
  ApiCallResponse? apiResultq0nCopy;

  @override
  void initState(BuildContext context) {
    passVisibility = false;
  }

  @override
  void dispose() {
    passFocusNode?.dispose();
    passTextController?.dispose();
  }
}
