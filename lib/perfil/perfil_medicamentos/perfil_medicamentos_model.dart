import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/perfil/modal_add_med/modal_add_med_widget.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'perfil_medicamentos_widget.dart' show PerfilMedicamentosWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PerfilMedicamentosModel
    extends FlutterFlowModel<PerfilMedicamentosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for menu_usuario component.
  late MenuUsuarioModel menuUsuarioModel;
  // Stores action output result for [Backend Call - API (perfil crea medicamento)] action in Button widget.
  ApiCallResponse? apiNewMed;

  @override
  void initState(BuildContext context) {
    menuUsuarioModel = createModel(context, () => MenuUsuarioModel());
  }

  @override
  void dispose() {
    menuUsuarioModel.dispose();
  }
}
