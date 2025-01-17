import '/backend/api_requests/api_calls.dart';
import '/diario_intolerancias/modal_fin_setup_into/modal_fin_setup_into_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:ui';
import 'setup_into_widget.dart' show SetupIntoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class SetupIntoModel extends FlutterFlowModel<SetupIntoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown_intestino widget.
  String? dropDownIntestinoValue;
  FormFieldController<String>? dropDownIntestinoValueController;
  // State field(s) for DropDown_tiempo_intestino widget.
  String? dropDownTiempoIntestinoValue;
  FormFieldController<String>? dropDownTiempoIntestinoValueController;
  // State field(s) for DropDown_fam_into widget.
  String? dropDownFamIntoValue;
  FormFieldController<String>? dropDownFamIntoValueController;
  // State field(s) for DropDown_grado_into widget.
  String? dropDownGradoIntoValue;
  FormFieldController<String>? dropDownGradoIntoValueController;
  // State field(s) for DropDown_into1 widget.
  String? dropDownInto1Value;
  FormFieldController<String>? dropDownInto1ValueController;
  // State field(s) for DropDown_tiempo_into1 widget.
  String? dropDownTiempoInto1Value;
  FormFieldController<String>? dropDownTiempoInto1ValueController;
  // State field(s) for DropDown_into2 widget.
  String? dropDownInto2Value;
  FormFieldController<String>? dropDownInto2ValueController;
  // State field(s) for DropDown_tiempo_into2 widget.
  String? dropDownTiempoInto2Value;
  FormFieldController<String>? dropDownTiempoInto2ValueController;
  // State field(s) for DropDown_into3 widget.
  String? dropDownInto3Value;
  FormFieldController<String>? dropDownInto3ValueController;
  // State field(s) for DropDown_tiempo_into3 widget.
  String? dropDownTiempoInto3Value1;
  FormFieldController<String>? dropDownTiempoInto3ValueController1;
  // State field(s) for DropDown_into4 widget.
  String? dropDownInto4Value;
  FormFieldController<String>? dropDownInto4ValueController;
  // State field(s) for DropDown_tiempo_into3 widget.
  String? dropDownTiempoInto3Value2;
  FormFieldController<String>? dropDownTiempoInto3ValueController2;
  // Stores action output result for [Backend Call - API (diario finaliza setup Into)] action in Button_into widget.
  ApiCallResponse? setupInto;
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
