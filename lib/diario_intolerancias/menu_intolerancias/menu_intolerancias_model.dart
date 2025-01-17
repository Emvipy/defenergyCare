import '/backend/api_requests/api_calls.dart';
import '/diario_sintomas/modal_info_crear/modal_info_crear_widget.dart';
import '/diario_sintomas/modal_info_editar/modal_info_editar_widget.dart';
import '/diario_sintomas/modal_info_finalizar/modal_info_finalizar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'dart:ui';
import 'menu_intolerancias_widget.dart' show MenuIntoleranciasWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class MenuIntoleranciasModel extends FlutterFlowModel<MenuIntoleranciasWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (diario into crea)] action in Row widget.
  ApiCallResponse? apiCreaInto2;
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
