import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'diario4_widget.dart' show Diario4Widget;
import 'package:flutter/material.dart';

class Diario4Model extends FlutterFlowModel<Diario4Widget> {
  ///  Local state fields for this page.

  int contador = 0;

  String trabajo = 'no';

  String estudios = 'no';

  String familia = 'no';

  String hogar = 'no';

  String social = 'no';

  String ejercicio = 'no';

  String caminar = 'no';

  String leer = 'no';

  String higiene = 'no';

  String otros = 'no';

  String cama = 'no';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (diario Cuatro carga)] action in diario4 widget.
  ApiCallResponse? apiCarga4;
  // Stores action output result for [Backend Call - API (diario Cuatro)] action in Button widget.
  ApiCallResponse? apiP3;
  // Stores action output result for [Backend Call - API (diario Cuatro)] action in Button widget.
  ApiCallResponse? apiP3F;
  // Stores action output result for [Backend Call - API (diario Cuatro)] action in Button widget.
  ApiCallResponse? apiP3F2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
