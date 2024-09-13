import '/flutter_flow/flutter_flow_util.dart';
import 'diario_sueno_fin_widget.dart' show DiarioSuenoFinWidget;
import 'package:flutter/material.dart';

class DiarioSuenoFinModel extends FlutterFlowModel<DiarioSuenoFinWidget> {
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
