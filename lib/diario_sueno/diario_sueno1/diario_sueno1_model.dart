import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'diario_sueno1_widget.dart' show DiarioSueno1Widget;
import 'package:flutter/material.dart';

class DiarioSueno1Model extends FlutterFlowModel<DiarioSueno1Widget> {
  ///  Local state fields for this page.

  double horas = 0.0;

  String? conciliar;

  int? contadorConciliar = 0;

  String? mantener;

  int? contadorMantener = 0;

  String? calidadSuenoTxt;

  int calidadSuenoNum = 0;

  int contadorCalidad = 0;

  String? fatiga;

  int contadorFatiga = 0;

  String cuartoOscuro = 'no';

  String antifaz = 'no';

  String tapones = 'no';

  String movil = 'no';

  String cena = 'no';

  String medicacion = 'no';

  String suplementos = 'no';

  String otras = 'no';

  String nada = 'no';

  int? contadorEstategias = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Slider widget.
  double? sliderValue;
  // Stores action output result for [Backend Call - API (diario sueno Uno)] action in Button widget.
  ApiCallResponse? apiSueno1;
  // Stores action output result for [Backend Call - API (diario ultimos meds)] action in Button widget.
  ApiCallResponse? ultMeds;
  // Stores action output result for [Backend Call - API (diario ultimos meds)] action in Button widget.
  ApiCallResponse? ultMeds2;
  // Stores action output result for [Backend Call - API (diario sueno finaliza)] action in Button widget.
  ApiCallResponse? apiResulthcs;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
