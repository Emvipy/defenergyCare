import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'emp_crea_encuesta2_widget.dart' show EmpCreaEncuesta2Widget;
import 'package:flutter/material.dart';

class EmpCreaEncuesta2Model extends FlutterFlowModel<EmpCreaEncuesta2Widget> {
  ///  Local state fields for this page.

  String tipo = 'no';

  String todas = 'no';

  int uno = 0;

  int dos = 0;

  int tres = 0;

  int cuatro = 0;

  int cinco = 0;

  int seis = 0;

  int? siete = 0;

  int ocho = 0;

  int nueve = 0;

  bool checkTodas = false;

  bool check1 = false;

  bool check2 = false;

  bool check3 = false;

  bool check4 = false;

  bool check5 = false;

  bool check6 = false;

  bool check7 = false;

  bool check8 = false;

  bool check9 = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (empresa crea pregunta)] action in Button widget.
  ApiCallResponse? apiCreaPreguntaEncuesta;
  // Stores action output result for [Backend Call - API (empresa finaliza encuesta)] action in Button widget.
  ApiCallResponse? apiResultlyn;
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
