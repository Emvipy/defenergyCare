import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'modal_elimina_cuenta_widget.dart' show ModalEliminaCuentaWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalEliminaCuentaModel
    extends FlutterFlowModel<ModalEliminaCuentaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField_pass widget.
  FocusNode? textFieldPassFocusNode;
  TextEditingController? textFieldPassTextController;
  late bool textFieldPassVisibility;
  String? Function(BuildContext, String?)? textFieldPassTextControllerValidator;
  // Stores action output result for [Backend Call - API (user elimina cuenta)] action in Button widget.
  ApiCallResponse? apiResultq0n;

  @override
  void initState(BuildContext context) {
    textFieldPassVisibility = false;
  }

  @override
  void dispose() {
    textFieldPassFocusNode?.dispose();
    textFieldPassTextController?.dispose();
  }
}
