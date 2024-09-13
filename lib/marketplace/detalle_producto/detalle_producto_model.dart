import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'detalle_producto_widget.dart' show DetalleProductoWidget;
import 'package:flutter/material.dart';

class DetalleProductoModel extends FlutterFlowModel<DetalleProductoWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (marketplace intento compra)] action in Button widget.
  ApiCallResponse? apiResultuh1;
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
