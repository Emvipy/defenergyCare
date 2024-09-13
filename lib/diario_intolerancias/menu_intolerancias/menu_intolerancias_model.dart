import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'menu_intolerancias_widget.dart' show MenuIntoleranciasWidget;
import 'package:flutter/material.dart';

class MenuIntoleranciasModel extends FlutterFlowModel<MenuIntoleranciasWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (diario into crea)] action in Row widget.
  ApiCallResponse? apiCreaInto2;
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
