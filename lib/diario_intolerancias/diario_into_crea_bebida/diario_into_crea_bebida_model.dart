import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'diario_into_crea_bebida_widget.dart' show DiarioIntoCreaBebidaWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DiarioIntoCreaBebidaModel
    extends FlutterFlowModel<DiarioIntoCreaBebidaWidget> {
  ///  Local state fields for this page.

  String? bebida1;

  String? bebida2;

  String? bebida3;

  String? bebida4 = '';

  String? bebida5;

  String? bebida6;

  String? bebida7;

  String mostrarBebidas = 'si';

  List<dynamic> despBebidas = [];
  void addToDespBebidas(dynamic item) => despBebidas.add(item);
  void removeFromDespBebidas(dynamic item) => despBebidas.remove(item);
  void removeAtIndexFromDespBebidas(int index) => despBebidas.removeAt(index);
  void insertAtIndexInDespBebidas(int index, dynamic item) =>
      despBebidas.insert(index, item);
  void updateDespBebidasAtIndex(int index, Function(dynamic) updateFn) =>
      despBebidas[index] = updateFn(despBebidas[index]);

  String? sintoma;

  String contenido = 'no';

  int contador = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField_name widget.
  FocusNode? textFieldNameFocusNode;
  TextEditingController? textFieldNameTextController;
  String? Function(BuildContext, String?)? textFieldNameTextControllerValidator;
  // State field(s) for Drop_bebidas1 widget.
  String? dropBebidas1Value;
  FormFieldController<String>? dropBebidas1ValueController;
  // State field(s) for Drop_bebidas2 widget.
  String? dropBebidas2Value;
  FormFieldController<String>? dropBebidas2ValueController;
  // State field(s) for Drop_bebidas3 widget.
  String? dropBebidas3Value;
  FormFieldController<String>? dropBebidas3ValueController;
  // State field(s) for Drop_bebidas4 widget.
  String? dropBebidas4Value;
  FormFieldController<String>? dropBebidas4ValueController;
  // State field(s) for Drop_bebidas5 widget.
  String? dropBebidas5Value;
  FormFieldController<String>? dropBebidas5ValueController;
  // State field(s) for Drop_bebidas6 widget.
  String? dropBebidas6Value;
  FormFieldController<String>? dropBebidas6ValueController;
  // State field(s) for Drop_bebidas7 widget.
  String? dropBebidas7Value;
  FormFieldController<String>? dropBebidas7ValueController;
  // Stores action output result for [Backend Call - API (intolerancias platos)] action in Button widget.
  ApiCallResponse? apiCreaBebida;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldNameFocusNode?.dispose();
    textFieldNameTextController?.dispose();
  }
}
