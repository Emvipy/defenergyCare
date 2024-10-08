import '/backend/api_requests/api_calls.dart';
import '/empresa_encuestas/modal_fin_encuesta/modal_fin_encuesta_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'emp_crea_encuesta2_widget.dart' show EmpCreaEncuesta2Widget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EmpCreaEncuesta2Model extends FlutterFlowModel<EmpCreaEncuesta2Widget> {
  ///  Local state fields for this page.

  String tipo = 'no';

  String todas = 'no';

  int uno = 0;

  int dos = 0;

  int tres = 0;

  int cuatro = 0;

  int cinco = 0;

  int seis = 0;

  int? siete = 0;

  int ocho = 0;

  int nueve = 0;

  bool checkTodas = false;

  bool check1 = false;

  bool check2 = false;

  bool check3 = false;

  bool check4 = false;

  bool check5 = false;

  bool check6 = false;

  bool check7 = false;

  bool check8 = false;

  bool check9 = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (empresa listado preguntas encuesta)] action in emp_crea_encuesta2 widget.
  ApiCallResponse? apiCargaPreguntas;
  // Stores action output result for [Backend Call - API (empresa finaliza encuesta)] action in Button widget.
  ApiCallResponse? apiResultlyn;
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
