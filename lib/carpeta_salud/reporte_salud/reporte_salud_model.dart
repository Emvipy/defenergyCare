import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'reporte_salud_widget.dart' show ReporteSaludWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReporteSaludModel extends FlutterFlowModel<ReporteSaludWidget> {
  ///  Local state fields for this page.

  int rango = 0;

  DateTime? fechaInicio;

  DateTime? fechaFin;

  String generando = 'no';

  int? promedioEnergia;

  int? promedioDolor;

  String? actividades;

  String? actInicio;

  String? actFin;

  String? evoSintomas;

  String? evoSintInicio;

  String? evoSintomasFin;

  String? solucion;

  String? med1;

  String? sup1;

  String? diasSintomasInto;

  String? porcentajeDias;

  String? promedioHoras;

  String? promedioCalidad;

  String? estrategiaSueno;

  String? medSueno;

  String? supSueno;

  String? momentoEnergia;

  String? diasReporte;

  String mostrarDatos = 'no';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (reporte std)] action in reporteSalud widget.
  ApiCallResponse? api7diasStart;
  // Stores action output result for [Backend Call - API (reporte std)] action in Container widget.
  ApiCallResponse? api7dias;
  // Stores action output result for [Backend Call - API (reporte std)] action in Container widget.
  ApiCallResponse? api30dias;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (reporte cus)] action in Button widget.
  ApiCallResponse? apiCus;
  // Stores action output result for [Backend Call - API (reporte cus carga)] action in Button widget.
  ApiCallResponse? apiCUSresult;
  // Model for menu_usuario component.
  late MenuUsuarioModel menuUsuarioModel;

  @override
  void initState(BuildContext context) {
    menuUsuarioModel = createModel(context, () => MenuUsuarioModel());
  }

  @override
  void dispose() {
    menuUsuarioModel.dispose();
  }
}
