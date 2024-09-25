import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'modal_add_opcion_widget.dart' show ModalAddOpcionWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalAddOpcionModel extends FlutterFlowModel<ModalAddOpcionWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for nombreEs widget.
  FocusNode? nombreEsFocusNode;
  TextEditingController? nombreEsTextController;
  String? Function(BuildContext, String?)? nombreEsTextControllerValidator;
  // State field(s) for nombreEn widget.
  FocusNode? nombreEnFocusNode;
  TextEditingController? nombreEnTextController;
  String? Function(BuildContext, String?)? nombreEnTextControllerValidator;
  // Stores action output result for [Backend Call - API (empresa crea opcion desplegable)] action in Button widget.
  ApiCallResponse? apiCreOpcion;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreEsFocusNode?.dispose();
    nombreEsTextController?.dispose();

    nombreEnFocusNode?.dispose();
    nombreEnTextController?.dispose();
  }
}
