import '/backend/api_requests/api_calls.dart';
import '/carpeta_salud/modal_p_d_f/modal_p_d_f_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:ui';
import 'reporte_salud_widget.dart' show ReporteSaludWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

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
