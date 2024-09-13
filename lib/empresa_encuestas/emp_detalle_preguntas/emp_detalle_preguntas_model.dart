import '/flutter_flow/flutter_flow_util.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'emp_detalle_preguntas_widget.dart' show EmpDetallePreguntasWidget;
import 'package:flutter/material.dart';

class EmpDetallePreguntasModel
    extends FlutterFlowModel<EmpDetallePreguntasWidget> {
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
