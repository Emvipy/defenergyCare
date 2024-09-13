import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'diario2_widget.dart' show Diario2Widget;
import 'package:flutter/material.dart';

class Diario2Model extends FlutterFlowModel<Diario2Widget> {
  ///  Local state fields for this page.

  String dolores = 'no';

  String migrana = 'no';

  int? intensidadDolor = 0;

  int? intensidadMigrana = 0;

  int? afectaDolor = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (diario Dos carga)] action in diario2 widget.
  ApiCallResponse? apiCarga2;
  // Stores action output result for [Backend Call - API (diario Dos)] action in Button widget.
  ApiCallResponse? apiP2;
  // Stores action output result for [Backend Call - API (diario Dos)] action in Button widget.
  ApiCallResponse? apiP2F1;
  // Stores action output result for [Backend Call - API (diario Dos)] action in Button widget.
  ApiCallResponse? apiP2F;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
