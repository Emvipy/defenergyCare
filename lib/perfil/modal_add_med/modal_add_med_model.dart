import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'modal_add_med_widget.dart' show ModalAddMedWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalAddMedModel extends FlutterFlowModel<ModalAddMedWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for dosis widget.
  FocusNode? dosisFocusNode;
  TextEditingController? dosisTextController;
  String? Function(BuildContext, String?)? dosisTextControllerValidator;
  // State field(s) for posologia widget.
  FocusNode? posologiaFocusNode;
  TextEditingController? posologiaTextController;
  String? Function(BuildContext, String?)? posologiaTextControllerValidator;
  // Stores action output result for [Backend Call - API (perfil edita medicamento)] action in Button widget.
  ApiCallResponse? apiResult960;
  // Stores action output result for [Backend Call - API (perfil edita medicamento)] action in Button widget.
  ApiCallResponse? apiResult960Copy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    dosisFocusNode?.dispose();
    dosisTextController?.dispose();

    posologiaFocusNode?.dispose();
    posologiaTextController?.dispose();
  }
}
