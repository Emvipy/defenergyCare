import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'perfil_biometrico_widget.dart' show PerfilBiometricoWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PerfilBiometricoModel extends FlutterFlowModel<PerfilBiometricoWidget> {
  ///  Local state fields for this page.

  String? activado;

  String pass = 'no';

  String enProceso = 'no';

  String mostrarError = 'no';

  ///  State fields for stateful widgets in this page.

  // Model for menu_usuario component.
  late MenuUsuarioModel menuUsuarioModel;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for TextField_pass1 widget.
  FocusNode? textFieldPass1FocusNode;
  TextEditingController? textFieldPass1TextController;
  late bool textFieldPass1Visibility;
  String? Function(BuildContext, String?)?
      textFieldPass1TextControllerValidator;
  // Stores action output result for [Custom Action - encodeBase64] action in Button widget.
  String? passCop;
  // Stores action output result for [Backend Call - API (login)] action in Button widget.
  ApiCallResponse? apiloginBios;

  @override
  void initState(BuildContext context) {
    menuUsuarioModel = createModel(context, () => MenuUsuarioModel());
    textFieldPass1Visibility = false;
  }

  @override
  void dispose() {
    menuUsuarioModel.dispose();
    textFieldPass1FocusNode?.dispose();
    textFieldPass1TextController?.dispose();
  }
}
