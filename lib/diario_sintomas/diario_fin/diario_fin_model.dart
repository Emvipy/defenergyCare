import '/backend/api_requests/api_calls.dart';
import '/diario_sintomas/modal_push/modal_push_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'diario_fin_widget.dart' show DiarioFinWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DiarioFinModel extends FlutterFlowModel<DiarioFinWidget> {
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

  String alivioSintomas = 'no';

  String noAlivioSintomas = 'no';

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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
