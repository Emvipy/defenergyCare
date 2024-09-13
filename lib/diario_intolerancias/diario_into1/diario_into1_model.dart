import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'diario_into1_widget.dart' show DiarioInto1Widget;
import 'package:flutter/material.dart';

class DiarioInto1Model extends FlutterFlowModel<DiarioInto1Widget> {
  ///  Local state fields for this page.

  String? malestarAyer;

  int? comidaId = 0;

  int contadorComida = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (diario intolerancia Uno Carga)] action in diario_Into1 widget.
  ApiCallResponse? cargaUnoInto;
  // Stores action output result for [Backend Call - API (diario into ayer)] action in Button widget.
  ApiCallResponse? apiResultozv;
  // Stores action output result for [Backend Call - API (diario intolerancia Uno)] action in Button widget.
  ApiCallResponse? apiIntoP1;
  // Stores action output result for [Backend Call - API (diario intolerancia Uno)] action in Button widget.
  ApiCallResponse? apiIntoP1F;
  // Stores action output result for [Backend Call - API (diario intolerancia Uno)] action in Button widget.
  ApiCallResponse? apiIntoP1FCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
