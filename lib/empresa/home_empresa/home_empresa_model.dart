import '/flutter_flow/flutter_flow_util.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'home_empresa_widget.dart' show HomeEmpresaWidget;
import 'package:flutter/material.dart';

class HomeEmpresaModel extends FlutterFlowModel<HomeEmpresaWidget> {
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
