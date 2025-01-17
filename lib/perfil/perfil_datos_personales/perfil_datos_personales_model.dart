import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'dart:ui';
import 'perfil_datos_personales_widget.dart' show PerfilDatosPersonalesWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PerfilDatosPersonalesModel
    extends FlutterFlowModel<PerfilDatosPersonalesWidget> {
  ///  Local state fields for this page.

  DateTime? fecha;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField_nombre widget.
  FocusNode? textFieldNombreFocusNode;
  TextEditingController? textFieldNombreTextController;
  String? Function(BuildContext, String?)?
      textFieldNombreTextControllerValidator;
  // State field(s) for TextField_apellidos widget.
  FocusNode? textFieldApellidosFocusNode;
  TextEditingController? textFieldApellidosTextController;
  String? Function(BuildContext, String?)?
      textFieldApellidosTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  DateTime? datePicked;
  // State field(s) for DropDown_genero widget.
  String? dropDownGeneroValue;
  FormFieldController<String>? dropDownGeneroValueController;
  // State field(s) for DropDown_peso widget.
  int? dropDownPesoValue;
  FormFieldController<int>? dropDownPesoValueController;
  // State field(s) for DropDown_altura widget.
  int? dropDownAlturaValue;
  FormFieldController<int>? dropDownAlturaValueController;
  // State field(s) for DropDown_fumador widget.
  String? dropDownFumadorValue;
  FormFieldController<String>? dropDownFumadorValueController;
  // State field(s) for DropDown_alcohol widget.
  String? dropDownAlcoholValue;
  FormFieldController<String>? dropDownAlcoholValueController;
  // Stores action output result for [Backend Call - API (perfil actualiza datos personales)] action in Button widget.
  ApiCallResponse? apiResult6av;
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
  // Stores action output result for [Backend Call - API (empresa actualiza perfil)] action in Button_into widget.
  ApiCallResponse? apiResultai0;
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
  // Stores action output result for [Backend Call - API (empresa actualiza perfil)] action in Button_into widget.
  ApiCallResponse? apiResultaiEmp;
  // Model for menu_usuario component.
  late MenuUsuarioModel menuUsuarioModel;

  @override
  void initState(BuildContext context) {
    menuUsuarioModel = createModel(context, () => MenuUsuarioModel());
  }

  @override
  void dispose() {
    textFieldNombreFocusNode?.dispose();
    textFieldNombreTextController?.dispose();

    textFieldApellidosFocusNode?.dispose();
    textFieldApellidosTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController3?.dispose();

    textFieldFocusNode2?.dispose();
    textController4?.dispose();

    textFieldFocusNode3?.dispose();
    textController5?.dispose();

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

    menuUsuarioModel.dispose();
  }
}
