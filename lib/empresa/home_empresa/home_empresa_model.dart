import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/empresa/modal_info_comunidad_e/modal_info_comunidad_e_widget.dart';
import '/empresa/modal_info_encuesta/modal_info_encuesta_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/registro/modal_error_cuenta/modal_error_cuenta_widget.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import '/usuario/modal_cierre_sesion/modal_cierre_sesion_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'home_empresa_widget.dart' show HomeEmpresaWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeEmpresaModel extends FlutterFlowModel<HomeEmpresaWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (user check session)] action in Home_empresa widget.
  ApiCallResponse? apiCheckToken2;
  // Stores action output result for [Backend Call - API (user individual)] action in Home_empresa widget.
  ApiCallResponse? apiCargaEmp;
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
