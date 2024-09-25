import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'perfil_medicamentos_edita_widget.dart'
    show PerfilMedicamentosEditaWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PerfilMedicamentosEditaModel
    extends FlutterFlowModel<PerfilMedicamentosEditaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for menu_usuario component.
  late MenuUsuarioModel menuUsuarioModel;
  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for dosis widget.
  FocusNode? dosisFocusNode;
  TextEditingController? dosisTextController;
  String? Function(BuildContext, String?)? dosisTextControllerValidator;
  // State field(s) for posologia widget.
  FocusNode? posologiaFocusNode;
  TextEditingController? posologiaTextController;
  String? Function(BuildContext, String?)? posologiaTextControllerValidator;
  // Stores action output result for [Backend Call - API (perfil edita medicamento)] action in Button widget.
  ApiCallResponse? apiEditaMed;
  // Stores action output result for [Backend Call - API (perfil elimina medicament)] action in Button widget.
  ApiCallResponse? apiResultswh;

  @override
  void initState(BuildContext context) {
    menuUsuarioModel = createModel(context, () => MenuUsuarioModel());
  }

  @override
  void dispose() {
    menuUsuarioModel.dispose();
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    dosisFocusNode?.dispose();
    dosisTextController?.dispose();

    posologiaFocusNode?.dispose();
    posologiaTextController?.dispose();
  }
}
