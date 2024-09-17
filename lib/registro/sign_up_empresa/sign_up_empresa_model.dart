import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/registro/modal_cancela_sign/modal_cancela_sign_widget.dart';
import '/registro/modal_equivocado/modal_equivocado_widget.dart';
import 'sign_up_empresa_widget.dart' show SignUpEmpresaWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class SignUpEmpresaModel extends FlutterFlowModel<SignUpEmpresaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown_profesion widget.
  String? dropDownProfesionValue;
  FormFieldController<String>? dropDownProfesionValueController;
  // State field(s) for TextField_colegiado widget.
  FocusNode? textFieldColegiadoFocusNode;
  TextEditingController? textFieldColegiadoTextController;
  String? Function(BuildContext, String?)?
      textFieldColegiadoTextControllerValidator;
  // State field(s) for TextField_nif_pro widget.
  FocusNode? textFieldNifProFocusNode;
  TextEditingController? textFieldNifProTextController;
  String? Function(BuildContext, String?)?
      textFieldNifProTextControllerValidator;
  // State field(s) for TextField_direccion_pro widget.
  FocusNode? textFieldDireccionProFocusNode;
  TextEditingController? textFieldDireccionProTextController;
  String? Function(BuildContext, String?)?
      textFieldDireccionProTextControllerValidator;
  // State field(s) for TextField_ciudad_pro widget.
  FocusNode? textFieldCiudadProFocusNode;
  TextEditingController? textFieldCiudadProTextController;
  String? Function(BuildContext, String?)?
      textFieldCiudadProTextControllerValidator;
  // State field(s) for TextField_cp_pro widget.
  FocusNode? textFieldCpProFocusNode;
  TextEditingController? textFieldCpProTextController;
  String? Function(BuildContext, String?)?
      textFieldCpProTextControllerValidator;
  // Stores action output result for [Backend Call - API (signUp finaliza empresa)] action in Button_into widget.
  ApiCallResponse? apifinaliza1emp;
  // State field(s) for TextField_razon widget.
  FocusNode? textFieldRazonFocusNode;
  TextEditingController? textFieldRazonTextController;
  String? Function(BuildContext, String?)?
      textFieldRazonTextControllerValidator;
  // State field(s) for TextField_cif widget.
  FocusNode? textFieldCifFocusNode;
  TextEditingController? textFieldCifTextController;
  String? Function(BuildContext, String?)? textFieldCifTextControllerValidator;
  // State field(s) for TextField_direccion widget.
  FocusNode? textFieldDireccionFocusNode;
  TextEditingController? textFieldDireccionTextController;
  String? Function(BuildContext, String?)?
      textFieldDireccionTextControllerValidator;
  // State field(s) for TextField_ciudad widget.
  FocusNode? textFieldCiudadFocusNode;
  TextEditingController? textFieldCiudadTextController;
  String? Function(BuildContext, String?)?
      textFieldCiudadTextControllerValidator;
  // State field(s) for TextField_cp_e widget.
  FocusNode? textFieldCpEFocusNode;
  TextEditingController? textFieldCpETextController;
  String? Function(BuildContext, String?)? textFieldCpETextControllerValidator;
  // State field(s) for TextField_email widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailTextControllerValidator;
  // Stores action output result for [Backend Call - API (signUp finaliza empresa)] action in Button_into widget.
  ApiCallResponse? apifinaliza2emp;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldColegiadoFocusNode?.dispose();
    textFieldColegiadoTextController?.dispose();

    textFieldNifProFocusNode?.dispose();
    textFieldNifProTextController?.dispose();

    textFieldDireccionProFocusNode?.dispose();
    textFieldDireccionProTextController?.dispose();

    textFieldCiudadProFocusNode?.dispose();
    textFieldCiudadProTextController?.dispose();

    textFieldCpProFocusNode?.dispose();
    textFieldCpProTextController?.dispose();

    textFieldRazonFocusNode?.dispose();
    textFieldRazonTextController?.dispose();

    textFieldCifFocusNode?.dispose();
    textFieldCifTextController?.dispose();

    textFieldDireccionFocusNode?.dispose();
    textFieldDireccionTextController?.dispose();

    textFieldCiudadFocusNode?.dispose();
    textFieldCiudadTextController?.dispose();

    textFieldCpEFocusNode?.dispose();
    textFieldCpETextController?.dispose();

    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();
  }
}
