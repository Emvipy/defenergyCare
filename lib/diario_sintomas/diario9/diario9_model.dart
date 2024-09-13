import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'diario9_widget.dart' show Diario9Widget;
import 'package:flutter/material.dart';

class Diario9Model extends FlutterFlowModel<Diario9Widget> {
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

  // Stores action output result for [Backend Call - API (desp mejora sintomas)] action in diario9 widget.
  ApiCallResponse? apiMejora;
  // Stores action output result for [Backend Call - API (desp empeora sintomas)] action in diario9 widget.
  ApiCallResponse? apiEmpeora;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Stores action output result for [Backend Call - API (diario buscador suplementos)] action in IconButton widget.
  ApiCallResponse? apiBuscadorSuplemento;
  // State field(s) for DropDown_mejora1_p3 widget.
  String? dropDownMejora1P3Value;
  FormFieldController<String>? dropDownMejora1P3ValueController;
  // State field(s) for DropDown_mejora2_p3 widget.
  String? dropDownMejora2P3Value;
  FormFieldController<String>? dropDownMejora2P3ValueController;
  // State field(s) for DropDown_mejora3_p3 widget.
  String? dropDownMejora3P3Value;
  FormFieldController<String>? dropDownMejora3P3ValueController;
  // State field(s) for DropDown_mejora4_p3 widget.
  String? dropDownMejora4P3Value;
  FormFieldController<String>? dropDownMejora4P3ValueController;
  // State field(s) for DropDown_mejora5_p3 widget.
  String? dropDownMejora5P3Value;
  FormFieldController<String>? dropDownMejora5P3ValueController;
  // State field(s) for DropDown_empeora1_p3 widget.
  String? dropDownEmpeora1P3Value;
  FormFieldController<String>? dropDownEmpeora1P3ValueController;
  // State field(s) for DropDown_empeora2_p3 widget.
  String? dropDownEmpeora2P3Value;
  FormFieldController<String>? dropDownEmpeora2P3ValueController;
  // State field(s) for DropDown_empeora3_p3 widget.
  String? dropDownEmpeora3P3Value;
  FormFieldController<String>? dropDownEmpeora3P3ValueController;
  // State field(s) for DropDown_empeora4_p3 widget.
  String? dropDownEmpeora4P3Value;
  FormFieldController<String>? dropDownEmpeora4P3ValueController;
  // State field(s) for DropDown_empeora5_p3 widget.
  String? dropDownEmpeora5P3Value;
  FormFieldController<String>? dropDownEmpeora5P3ValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (diario Nueve)] action in Button widget.
  ApiCallResponse? apiP92;
  // Stores action output result for [Backend Call - API (diario Nueve)] action in Button widget.
  ApiCallResponse? apiP9;
  // Stores action output result for [Backend Call - API (diario finaliza)] action in Button widget.
  ApiCallResponse? apiResultyly3;
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
