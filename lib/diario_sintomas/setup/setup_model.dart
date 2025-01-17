import '/backend/api_requests/api_calls.dart';
import '/diario_sintomas/modal_fin_setup/modal_fin_setup_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:ui';
import 'setup_widget.dart' show SetupWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class SetupModel extends FlutterFlowModel<SetupWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown_autoinmune widget.
  String? dropDownAutoinmuneValue;
  FormFieldController<String>? dropDownAutoinmuneValueController;
  // State field(s) for DropDown_enfAuto widget.
  String? dropDownEnfAutoValue;
  FormFieldController<String>? dropDownEnfAutoValueController;
  // State field(s) for DropDown_tiempo_auto widget.
  String? dropDownTiempoAutoValue;
  FormFieldController<String>? dropDownTiempoAutoValueController;
  // State field(s) for DropDown_fam widget.
  String? dropDownFamValue;
  FormFieldController<String>? dropDownFamValueController;
  // State field(s) for DropDown_grado_covid1 widget.
  String? dropDownGradoCovid1Value;
  FormFieldController<String>? dropDownGradoCovid1ValueController;
  // State field(s) for DropDown_intestino widget.
  String? dropDownIntestinoValue1;
  FormFieldController<String>? dropDownIntestinoValueController1;
  // State field(s) for DropDown_tiempo_intestino widget.
  String? dropDownTiempoIntestinoValue1;
  FormFieldController<String>? dropDownTiempoIntestinoValueController1;
  // State field(s) for DropDown_fam_into widget.
  String? dropDownFamIntoValue1;
  FormFieldController<String>? dropDownFamIntoValueController1;
  // State field(s) for DropDown_grado_into widget.
  String? dropDownGradoIntoValue1;
  FormFieldController<String>? dropDownGradoIntoValueController1;
  // State field(s) for DropDown_into1 widget.
  String? dropDownInto1Value;
  FormFieldController<String>? dropDownInto1ValueController;
  // State field(s) for DropDown_tiempo_into1 widget.
  String? dropDownTiempoInto1Value1;
  FormFieldController<String>? dropDownTiempoInto1ValueController1;
  // State field(s) for DropDown_into2 widget.
  String? dropDownInto2Value;
  FormFieldController<String>? dropDownInto2ValueController;
  // State field(s) for DropDown_tiempo_into2 widget.
  String? dropDownTiempoInto2Value1;
  FormFieldController<String>? dropDownTiempoInto2ValueController1;
  // State field(s) for DropDown_into3 widget.
  String? dropDownInto3Value;
  FormFieldController<String>? dropDownInto3ValueController;
  // State field(s) for DropDown_tiempo_into3 widget.
  String? dropDownTiempoInto3Value1;
  FormFieldController<String>? dropDownTiempoInto3ValueController1;
  // State field(s) for DropDown_into4 widget.
  String? dropDownInto4Value;
  FormFieldController<String>? dropDownInto4ValueController;
  // State field(s) for DropDown_tiempo_into4 widget.
  String? dropDownTiempoInto4Value1;
  FormFieldController<String>? dropDownTiempoInto4ValueController1;
  // Stores action output result for [Backend Call - API (diario finaliza setup)] action in Button_into widget.
  ApiCallResponse? apiResultv8h;
  // State field(s) for DropDown_intestino widget.
  String? dropDownIntestinoValue2;
  FormFieldController<String>? dropDownIntestinoValueController2;
  // State field(s) for DropDown_tiempo_intestino widget.
  String? dropDownTiempoIntestinoValue2;
  FormFieldController<String>? dropDownTiempoIntestinoValueController2;
  // State field(s) for DropDown_fam_into widget.
  String? dropDownFamIntoValue2;
  FormFieldController<String>? dropDownFamIntoValueController2;
  // State field(s) for DropDown_grado_into widget.
  String? dropDownGradoIntoValue2;
  FormFieldController<String>? dropDownGradoIntoValueController2;
  // State field(s) for DropDown_into1n widget.
  String? dropDownInto1nValue;
  FormFieldController<String>? dropDownInto1nValueController;
  // State field(s) for DropDown_tiempo_into1 widget.
  String? dropDownTiempoInto1Value2;
  FormFieldController<String>? dropDownTiempoInto1ValueController2;
  // State field(s) for DropDown_into2n widget.
  String? dropDownInto2nValue;
  FormFieldController<String>? dropDownInto2nValueController;
  // State field(s) for DropDown_tiempo_into2 widget.
  String? dropDownTiempoInto2Value2;
  FormFieldController<String>? dropDownTiempoInto2ValueController2;
  // State field(s) for DropDown_into3n widget.
  String? dropDownInto3nValue;
  FormFieldController<String>? dropDownInto3nValueController;
  // State field(s) for DropDown_tiempo_into3 widget.
  String? dropDownTiempoInto3Value2;
  FormFieldController<String>? dropDownTiempoInto3ValueController2;
  // State field(s) for DropDown_into4n widget.
  String? dropDownInto4nValue;
  FormFieldController<String>? dropDownInto4nValueController;
  // State field(s) for DropDown_tiempo_into4 widget.
  String? dropDownTiempoInto4Value2;
  FormFieldController<String>? dropDownTiempoInto4ValueController2;
  // Stores action output result for [Backend Call - API (diario finaliza setup)] action in Button_into widget.
  ApiCallResponse? apiResultv8h2;
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
