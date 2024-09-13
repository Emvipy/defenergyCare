import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'diario3_widget.dart' show Diario3Widget;
import 'package:flutter/material.dart';

class Diario3Model extends FlutterFlowModel<Diario3Widget> {
  ///  Local state fields for this page.

  String cabeza = 'no';

  String garganta = 'no';

  int contador = 0;

  String hombroIzq = 'no';

  String hombroDer = 'no';

  String corazon = 'no';

  String codoIzq = 'no';

  String codoDer = 'no';

  String abdomen = 'no';

  String munecaIzq = 'no';

  String munecaDer = 'no';

  String musloIzq = 'no';

  String musloDer = 'no';

  String rodillaIzq = 'no';

  String rodillaDer = 'no';

  String tobilloIzq = 'no';

  String tobilloDer = 'no';

  String cervical = 'no';

  String espalda = 'no';

  String lumbar = 'no';

  String munIz = 'no';

  String munDer = 'no';

  String gluteoIzq = 'no';

  String gluteoDer = 'no';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (diario Tres carga)] action in diario3 widget.
  ApiCallResponse? apiCarga3Dolor;
  // Stores action output result for [Backend Call - API (diario Tres)] action in Button widget.
  ApiCallResponse? apiDiario3DolorOtro;
  // Stores action output result for [Backend Call - API (diario Tres)] action in Button widget.
  ApiCallResponse? apiDiario3Dolor;
  // Stores action output result for [Backend Call - API (diario Tres)] action in Button widget.
  ApiCallResponse? apiDiario3DolorF;
  // Stores action output result for [Backend Call - API (diario Tres)] action in Button widget.
  ApiCallResponse? apiDiario3DolorF2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
