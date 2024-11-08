import '/backend/api_requests/api_calls.dart';
import '/carpeta_salud/modal_p_d_f/modal_p_d_f_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'reporte_intolerancias_widget.dart' show ReporteIntoleranciasWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReporteIntoleranciasModel
    extends FlutterFlowModel<ReporteIntoleranciasWidget> {
  ///  Local state fields for this page.

  int rango = 0;

  DateTime? fechaInicio;

  DateTime? fechaFin;

  String generando = 'no';

  String? diasReporte;

  String mostrarDatos = 'no';

  String? cantDiarios;

  String? cantidadDiasSintomas;

  String? porcentaje;

  String? comidaSintoma;

  String? desayuno1;

  String? desayuno2;

  String? desayuno3;

  String? comida1;

  String? comida2;

  String? comida3;

  String? cena1;

  String? cena2;

  String? cena3;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (reporte into std carga)] action in reporteIntolerancias widget.
  ApiCallResponse? api7diasIntoStart;
  // Stores action output result for [Backend Call - API (reporte into std carga)] action in Container widget.
  ApiCallResponse? api7diasInto;
  // Stores action output result for [Backend Call - API (reporte into std carga)] action in Container widget.
  ApiCallResponse? api30diasInto;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (reporte into cus crea)] action in Button widget.
  ApiCallResponse? apiCusInto;
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
