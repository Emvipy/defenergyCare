import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'perfil_medicamentos_widget.dart' show PerfilMedicamentosWidget;
import 'package:flutter/material.dart';

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
