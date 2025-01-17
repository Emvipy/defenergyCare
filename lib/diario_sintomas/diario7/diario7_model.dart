import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'diario7_widget.dart' show Diario7Widget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class Diario7Model extends FlutterFlowModel<Diario7Widget> {
  ///  Local state fields for this page.

  String? nombreMed;

  String ultimoMed = 'empty';

  List<dynamic> respuestaBusqueda = [];
  void addToRespuestaBusqueda(dynamic item) => respuestaBusqueda.add(item);
  void removeFromRespuestaBusqueda(dynamic item) =>
      respuestaBusqueda.remove(item);
  void removeAtIndexFromRespuestaBusqueda(int index) =>
      respuestaBusqueda.removeAt(index);
  void insertAtIndexInRespuestaBusqueda(int index, dynamic item) =>
      respuestaBusqueda.insert(index, item);
  void updateRespuestaBusquedaAtIndex(int index, Function(dynamic) updateFn) =>
      respuestaBusqueda[index] = updateFn(respuestaBusqueda[index]);

  String alivioSintomas = 'x';

  int? contadorAlivio = 0;

  List<dynamic> mejoraSintomas = [];
  void addToMejoraSintomas(dynamic item) => mejoraSintomas.add(item);
  void removeFromMejoraSintomas(dynamic item) => mejoraSintomas.remove(item);
  void removeAtIndexFromMejoraSintomas(int index) =>
      mejoraSintomas.removeAt(index);
  void insertAtIndexInMejoraSintomas(int index, dynamic item) =>
      mejoraSintomas.insert(index, item);
  void updateMejoraSintomasAtIndex(int index, Function(dynamic) updateFn) =>
      mejoraSintomas[index] = updateFn(mejoraSintomas[index]);

  List<dynamic> empeoraSintomas = [];
  void addToEmpeoraSintomas(dynamic item) => empeoraSintomas.add(item);
  void removeFromEmpeoraSintomas(dynamic item) => empeoraSintomas.remove(item);
  void removeAtIndexFromEmpeoraSintomas(int index) =>
      empeoraSintomas.removeAt(index);
  void insertAtIndexInEmpeoraSintomas(int index, dynamic item) =>
      empeoraSintomas.insert(index, item);
  void updateEmpeoraSintomasAtIndex(int index, Function(dynamic) updateFn) =>
      empeoraSintomas[index] = updateFn(empeoraSintomas[index]);

  String? mejora1;

  String? mejora2;

  String? mejora3;

  String? mejora4;

  String? mejora5;

  String? emp1;

  String? emp2;

  String? emp3;

  String? emp4;

  String? emp5;

  String mostrarListado = 'no';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (desp mejora sintomas)] action in diario7 widget.
  ApiCallResponse? apiMejora;
  // Stores action output result for [Backend Call - API (desp empeora sintomas)] action in diario7 widget.
  ApiCallResponse? apiEmpeora;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Stores action output result for [Backend Call - API (diario buscador medicamento)] action in IconButton widget.
  ApiCallResponse? apiBuscadorMedicamento;
  // State field(s) for Drop_n1_p1 widget.
  String? dropN1P1Value;
  FormFieldController<String>? dropN1P1ValueController;
  // State field(s) for Drop_n2_p1 widget.
  String? dropN2P1Value;
  FormFieldController<String>? dropN2P1ValueController;
  // State field(s) for Drop_n3_p1 widget.
  String? dropN3P1Value;
  FormFieldController<String>? dropN3P1ValueController;
  // State field(s) for Drop_n4_p1 widget.
  String? dropN4P1Value;
  FormFieldController<String>? dropN4P1ValueController;
  // State field(s) for Dropn5_p1 widget.
  String? dropn5P1Value;
  FormFieldController<String>? dropn5P1ValueController;
  // State field(s) for Dropn6_p1 widget.
  String? dropn6P1Value;
  FormFieldController<String>? dropn6P1ValueController;
  // State field(s) for Dropn7_p1 widget.
  String? dropn7P1Value;
  FormFieldController<String>? dropn7P1ValueController;
  // State field(s) for Dropn8_p1 widget.
  String? dropn8P1Value;
  FormFieldController<String>? dropn8P1ValueController;
  // State field(s) for Dropn9_p1 widget.
  String? dropn9P1Value;
  FormFieldController<String>? dropn9P1ValueController;
  // State field(s) for Dropn10_p1 widget.
  String? dropn10P1Value;
  FormFieldController<String>? dropn10P1ValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (diario Siete)] action in Button widget.
  ApiCallResponse? apiP7;
  // Stores action output result for [Backend Call - API (diario finaliza)] action in Button widget.
  ApiCallResponse? apiResultyly1;
  // Stores action output result for [Backend Call - API (diario Siete)] action in Button widget.
  ApiCallResponse? apiP7sin;
  // Stores action output result for [Backend Call - API (diario finaliza)] action in Button widget.
  ApiCallResponse? apiResultyly1sin;
  // Stores action output result for [Backend Call - API (diario Siete)] action in Button widget.
  ApiCallResponse? apiP7F;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
