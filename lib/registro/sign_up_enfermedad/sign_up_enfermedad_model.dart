import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_enfermedad_widget.dart' show SignUpEnfermedadWidget;
import 'package:flutter/material.dart';

class SignUpEnfermedadModel extends FlutterFlowModel<SignUpEnfermedadWidget> {
  ///  Local state fields for this page.

  String covid = 'no';

  String em = 'no';

  String fibro = 'no';

  String otras = 'no';

  String into = 'no';

  int? contador = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (signUp crea enfermedad)] action in Button widget.
  ApiCallResponse? apiCreaEnfermedadCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
