import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'emp_crea_encuesta1_widget.dart' show EmpCreaEncuesta1Widget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EmpCreaEncuesta1Model extends FlutterFlowModel<EmpCreaEncuesta1Widget> {
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

  int contador = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for titulo_es widget.
  FocusNode? tituloEsFocusNode;
  TextEditingController? tituloEsTextController;
  String? Function(BuildContext, String?)? tituloEsTextControllerValidator;
  // State field(s) for titulo_en widget.
  FocusNode? tituloEnFocusNode;
  TextEditingController? tituloEnTextController;
  String? Function(BuildContext, String?)? tituloEnTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // State field(s) for Checkbox widget.
  bool? checkboxValue6;
  // State field(s) for Checkbox widget.
  bool? checkboxValue7;
  // State field(s) for Checkbox widget.
  bool? checkboxValue8;
  // State field(s) for Checkbox widget.
  bool? checkboxValue9;
  // State field(s) for Checkbox widget.
  bool? checkboxValue10;
  // Stores action output result for [Backend Call - API (empresa crea encuesta)] action in Button widget.
  ApiCallResponse? apiCreaEncuesta;
  // Model for menu_usuario component.
  late MenuUsuarioModel menuUsuarioModel;

  @override
  void initState(BuildContext context) {
    menuUsuarioModel = createModel(context, () => MenuUsuarioModel());
  }

  @override
  void dispose() {
    tituloEsFocusNode?.dispose();
    tituloEsTextController?.dispose();

    tituloEnFocusNode?.dispose();
    tituloEnTextController?.dispose();

    menuUsuarioModel.dispose();
  }
}
