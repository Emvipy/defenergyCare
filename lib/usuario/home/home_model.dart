import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (user individual)] action in Home widget.
  ApiCallResponse? apiResult98n;
  // Stores action output result for [Backend Call - API (diario Crea)] action in Image widget.
  ApiCallResponse? apiDiarioCrea3;
  // Stores action output result for [Backend Call - API (diario Crea)] action in Image widget.
  ApiCallResponse? apiDiarioCrea3Copy;
  // Stores action output result for [Backend Call - API (diario Crea)] action in Text widget.
  ApiCallResponse? apiDiarioCreaCopy;
  // Stores action output result for [Backend Call - API (diario Crea)] action in Text widget.
  ApiCallResponse? apiDiarioCrea2Copy;
  // Stores action output result for [Backend Call - API (diario Crea)] action in Text widget.
  ApiCallResponse? apiDiarioCrea4;
  // Stores action output result for [Backend Call - API (diario Crea)] action in Text widget.
  ApiCallResponse? apiDiarioCrea4Copy;
  // Stores action output result for [Backend Call - API (diario Crea)] action in Icon widget.
  ApiCallResponse? apiDiarioCrea;
  // Stores action output result for [Backend Call - API (diario Crea)] action in Icon widget.
  ApiCallResponse? apiDiarioCrea2;
  // Stores action output result for [Backend Call - API (diario into crea)] action in Image widget.
  ApiCallResponse? apiDiarioInto1Icon;
  // Stores action output result for [Backend Call - API (diario into crea)] action in Text widget.
  ApiCallResponse? apiDiarioInto4;
  // Stores action output result for [Backend Call - API (diario into crea)] action in Icon widget.
  ApiCallResponse? apiDiarioInto1;
  // Stores action output result for [Backend Call - API (sueno crea diario)] action in Image widget.
  ApiCallResponse? apiCreaSuenoh2;
  // Stores action output result for [Backend Call - API (sueno crea diario)] action in Text widget.
  ApiCallResponse? apiCreaSuenoh3;
  // Stores action output result for [Backend Call - API (sueno crea diario)] action in Icon widget.
  ApiCallResponse? apiCreaSueno;
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
