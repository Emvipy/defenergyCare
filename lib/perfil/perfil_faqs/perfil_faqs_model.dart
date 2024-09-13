import '/flutter_flow/flutter_flow_util.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'perfil_faqs_widget.dart' show PerfilFaqsWidget;
import 'package:flutter/material.dart';

class PerfilFaqsModel extends FlutterFlowModel<PerfilFaqsWidget> {
  ///  State fields for stateful widgets in this page.

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
