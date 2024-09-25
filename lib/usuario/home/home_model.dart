import '/backend/api_requests/api_calls.dart';
import '/diario_sueno/modal_aviso_sueno_hecho/modal_aviso_sueno_hecho_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/registro/modal_error_cuenta/modal_error_cuenta_widget.dart';
import '/resumen_diarios/modal_sin_diario/modal_sin_diario_widget.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import '/usuario/modal_info_into/modal_info_into_widget.dart';
import '/usuario/modal_info_resumen/modal_info_resumen_widget.dart';
import '/usuario/modal_info_salud/modal_info_salud_widget.dart';
import '/usuario/modal_info_sintomas/modal_info_sintomas_widget.dart';
import '/usuario/modal_info_sueno/modal_info_sueno_widget.dart';
import 'dart:async';
import '/flutter_flow/custom_functions.dart' as functions;
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (user individual)] action in Home widget.
  ApiCallResponse? apiCargaUser;
  // Stores action output result for [Backend Call - API (diario Crea)] action in Container widget.
  ApiCallResponse? apiDiarioCreaicon;
  // Stores action output result for [Backend Call - API (diario Crea)] action in Container widget.
  ApiCallResponse? apiDiarioCrea2icon;
  // Stores action output result for [Backend Call - API (diario Crea)] action in Text widget.
  ApiCallResponse? apiDiarioCreaTitulo;
  // Stores action output result for [Backend Call - API (diario Crea)] action in Text widget.
  ApiCallResponse? apiDiarioCrea2Titulo;
  // Stores action output result for [Backend Call - API (diario Crea)] action in Row widget.
  ApiCallResponse? apiDiarioCrea;
  // Stores action output result for [Backend Call - API (diario Crea)] action in Row widget.
  ApiCallResponse? apiDiarioCrea2;
  // Stores action output result for [Backend Call - API (diario into crea)] action in Image widget.
  ApiCallResponse? apiDiarioInto1Icon;
  // Stores action output result for [Backend Call - API (diario into crea)] action in Text widget.
  ApiCallResponse? apiDiarioInto1Titulo;
  // Stores action output result for [Backend Call - API (diario into crea)] action in Icon widget.
  ApiCallResponse? apiDiarioInto1;
  // Stores action output result for [Backend Call - API (sueno crea diario)] action in Image widget.
  ApiCallResponse? apiCreaSuenoIcon;
  // Stores action output result for [Backend Call - API (sueno crea diario)] action in Text widget.
  ApiCallResponse? apiCreaSuenoTitulo;
  // Stores action output result for [Backend Call - API (sueno crea diario)] action in Icon widget.
  ApiCallResponse? apiCreaSueno;
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
