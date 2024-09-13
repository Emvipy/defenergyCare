import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_crea_comentario_widget.dart' show ModalCreaComentarioWidget;
import 'package:flutter/material.dart';

class ModalCreaComentarioModel
    extends FlutterFlowModel<ModalCreaComentarioWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (noticia crea comentario)] action in Button widget.
  ApiCallResponse? apiResulteis;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
