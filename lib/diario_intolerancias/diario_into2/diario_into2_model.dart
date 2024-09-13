import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'diario_into2_widget.dart' show DiarioInto2Widget;
import 'package:flutter/material.dart';

class DiarioInto2Model extends FlutterFlowModel<DiarioInto2Widget> {
  ///  Local state fields for this page.

  String? carne1;

  String? carne2;

  String? carne3;

  String? carne4;

  String? carne5;

  String? carne6;

  String? carne7;

  String mostrarCarne = 'no';

  List<dynamic> despCarnes = [];
  void addToDespCarnes(dynamic item) => despCarnes.add(item);
  void removeFromDespCarnes(dynamic item) => despCarnes.remove(item);
  void removeAtIndexFromDespCarnes(int index) => despCarnes.removeAt(index);
  void insertAtIndexInDespCarnes(int index, dynamic item) =>
      despCarnes.insert(index, item);
  void updateDespCarnesAtIndex(int index, Function(dynamic) updateFn) =>
      despCarnes[index] = updateFn(despCarnes[index]);

  String pescado1 = 'no';

  String pescado2 = 'no';

  String pescado3 = 'no';

  String pescado4 = 'no';

  String pescado5 = 'no';

  String pescado6 = 'no';

  String pescado7 = 'no';

  String mostrarPescado = 'no';

  List<dynamic> despPescados = [];
  void addToDespPescados(dynamic item) => despPescados.add(item);
  void removeFromDespPescados(dynamic item) => despPescados.remove(item);
  void removeAtIndexFromDespPescados(int index) => despPescados.removeAt(index);
  void insertAtIndexInDespPescados(int index, dynamic item) =>
      despPescados.insert(index, item);
  void updateDespPescadosAtIndex(int index, Function(dynamic) updateFn) =>
      despPescados[index] = updateFn(despPescados[index]);

  String marisco1 = 'no';

  String marisco2 = 'no';

  String marisco3 = 'no';

  String marisco4 = 'no';

  String marisco5 = 'no';

  String marisco6 = 'no';

  String marisco7 = 'no';

  String mostrarMarisco = 'no';

  List<dynamic> despMariscos = [];
  void addToDespMariscos(dynamic item) => despMariscos.add(item);
  void removeFromDespMariscos(dynamic item) => despMariscos.remove(item);
  void removeAtIndexFromDespMariscos(int index) => despMariscos.removeAt(index);
  void insertAtIndexInDespMariscos(int index, dynamic item) =>
      despMariscos.insert(index, item);
  void updateDespMariscosAtIndex(int index, Function(dynamic) updateFn) =>
      despMariscos[index] = updateFn(despMariscos[index]);

  String lacteos1 = 'no';

  String lacteos2 = 'no';

  String lacteos3 = 'no';

  String lacteos4 = 'no';

  String lacteos5 = 'no';

  String lacteos6 = 'no';

  String lacteos7 = 'no';

  String mostrarLacteos = 'no';

  List<dynamic> despLacteos = [];
  void addToDespLacteos(dynamic item) => despLacteos.add(item);
  void removeFromDespLacteos(dynamic item) => despLacteos.remove(item);
  void removeAtIndexFromDespLacteos(int index) => despLacteos.removeAt(index);
  void insertAtIndexInDespLacteos(int index, dynamic item) =>
      despLacteos.insert(index, item);
  void updateDespLacteosAtIndex(int index, Function(dynamic) updateFn) =>
      despLacteos[index] = updateFn(despLacteos[index]);

  String huevos1 = 'no';

  String mostrarHuevos = 'no';

  List<dynamic> despHuevos = [];
  void addToDespHuevos(dynamic item) => despHuevos.add(item);
  void removeFromDespHuevos(dynamic item) => despHuevos.remove(item);
  void removeAtIndexFromDespHuevos(int index) => despHuevos.removeAt(index);
  void insertAtIndexInDespHuevos(int index, dynamic item) =>
      despHuevos.insert(index, item);
  void updateDespHuevosAtIndex(int index, Function(dynamic) updateFn) =>
      despHuevos[index] = updateFn(despHuevos[index]);

  String? cereales1;

  String? cereales2;

  String? cereales3;

  String? cereales4;

  String? cereales5;

  String? cereales6;

  String? cereales7;

  String mostrarCereales = 'no';

  List<dynamic> despCereales = [];
  void addToDespCereales(dynamic item) => despCereales.add(item);
  void removeFromDespCereales(dynamic item) => despCereales.remove(item);
  void removeAtIndexFromDespCereales(int index) => despCereales.removeAt(index);
  void insertAtIndexInDespCereales(int index, dynamic item) =>
      despCereales.insert(index, item);
  void updateDespCerealesAtIndex(int index, Function(dynamic) updateFn) =>
      despCereales[index] = updateFn(despCereales[index]);

  String? frutas1;

  String? frutas2;

  String? frutas3;

  String? frutas4;

  String? frutas5;

  String? frutas6;

  String? frutas7;

  String mostrarFrutas = 'no';

  List<dynamic> despFrutas = [];
  void addToDespFrutas(dynamic item) => despFrutas.add(item);
  void removeFromDespFrutas(dynamic item) => despFrutas.remove(item);
  void removeAtIndexFromDespFrutas(int index) => despFrutas.removeAt(index);
  void insertAtIndexInDespFrutas(int index, dynamic item) =>
      despFrutas.insert(index, item);
  void updateDespFrutasAtIndex(int index, Function(dynamic) updateFn) =>
      despFrutas[index] = updateFn(despFrutas[index]);

  String? verduras1;

  String? verduras2;

  String? verduras3;

  String? verduras4;

  String? verduras5;

  String? verduras6;

  String? verduras7;

  String mostrarVerduras = 'no';

  List<dynamic> despVerduras = [];
  void addToDespVerduras(dynamic item) => despVerduras.add(item);
  void removeFromDespVerduras(dynamic item) => despVerduras.remove(item);
  void removeAtIndexFromDespVerduras(int index) => despVerduras.removeAt(index);
  void insertAtIndexInDespVerduras(int index, dynamic item) =>
      despVerduras.insert(index, item);
  void updateDespVerdurasAtIndex(int index, Function(dynamic) updateFn) =>
      despVerduras[index] = updateFn(despVerduras[index]);

  String? legumbres1;

  String? legumbres2;

  String? legumbres3;

  String? legumbres4;

  String? legumbres5;

  String? legumbres6;

  String? legumbres7;

  String mostrarLegumbres = 'no';

  List<dynamic> despLegumbres = [];
  void addToDespLegumbres(dynamic item) => despLegumbres.add(item);
  void removeFromDespLegumbres(dynamic item) => despLegumbres.remove(item);
  void removeAtIndexFromDespLegumbres(int index) =>
      despLegumbres.removeAt(index);
  void insertAtIndexInDespLegumbres(int index, dynamic item) =>
      despLegumbres.insert(index, item);
  void updateDespLegumbresAtIndex(int index, Function(dynamic) updateFn) =>
      despLegumbres[index] = updateFn(despLegumbres[index]);

  String? secos1;

  String? secos2;

  String? secos3;

  String? secos4;

  String? secos5;

  String? secos6;

  String? secos7;

  String mostrarSecos = 'no';

  List<dynamic> despSecos = [];
  void addToDespSecos(dynamic item) => despSecos.add(item);
  void removeFromDespSecos(dynamic item) => despSecos.remove(item);
  void removeAtIndexFromDespSecos(int index) => despSecos.removeAt(index);
  void insertAtIndexInDespSecos(int index, dynamic item) =>
      despSecos.insert(index, item);
  void updateDespSecosAtIndex(int index, Function(dynamic) updateFn) =>
      despSecos[index] = updateFn(despSecos[index]);

  String? salsas1;

  String? salsas2;

  String? salsas3;

  String? salsas4;

  String? salsas5;

  String? salsas6;

  String? salsas7;

  String mostrarSalsas = 'no';

  List<dynamic> despSalsas = [];
  void addToDespSalsas(dynamic item) => despSalsas.add(item);
  void removeFromDespSalsas(dynamic item) => despSalsas.remove(item);
  void removeAtIndexFromDespSalsas(int index) => despSalsas.removeAt(index);
  void insertAtIndexInDespSalsas(int index, dynamic item) =>
      despSalsas.insert(index, item);
  void updateDespSalsasAtIndex(int index, Function(dynamic) updateFn) =>
      despSalsas[index] = updateFn(despSalsas[index]);

  String? bebida1;

  String? bebida2;

  String? bebida3;

  String? bebida4 = '';

  String? bebida5;

  String? bebida6;

  String? bebida7;

  String mostrarBebidas = 'no';

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

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (desp comida pescado)] action in diario_Into2 widget.
  ApiCallResponse? apiPescado;
  // Stores action output result for [Backend Call - API (desp comida carne)] action in diario_Into2 widget.
  ApiCallResponse? apiDespCarne;
  // Stores action output result for [Backend Call - API (desp comida mariscos)] action in diario_Into2 widget.
  ApiCallResponse? apiDespMarisco;
  // Stores action output result for [Backend Call - API (desp comida lacteos)] action in diario_Into2 widget.
  ApiCallResponse? apiLacteos;
  // Stores action output result for [Backend Call - API (desp comida huevos)] action in diario_Into2 widget.
  ApiCallResponse? apiHuevos;
  // Stores action output result for [Backend Call - API (desp comida cereales)] action in diario_Into2 widget.
  ApiCallResponse? apiCereales;
  // Stores action output result for [Backend Call - API (desp comida frutas)] action in diario_Into2 widget.
  ApiCallResponse? apiFrutas;
  // Stores action output result for [Backend Call - API (desp comida verduras)] action in diario_Into2 widget.
  ApiCallResponse? apiVerduras;
  // Stores action output result for [Backend Call - API (desp comida legumbres)] action in diario_Into2 widget.
  ApiCallResponse? apiLegumbres;
  // Stores action output result for [Backend Call - API (desp comida frutos secos)] action in diario_Into2 widget.
  ApiCallResponse? apiSecos;
  // Stores action output result for [Backend Call - API (desp comidas  condimentos)] action in diario_Into2 widget.
  ApiCallResponse? apiSalsas;
  // Stores action output result for [Backend Call - API (desp comida bebidas)] action in diario_Into2 widget.
  ApiCallResponse? apiBebidas;
  // Stores action output result for [Backend Call - API (diario intolerancia Dos Carga)] action in diario_Into2 widget.
  ApiCallResponse? apiCargaDesayuno;
  // Stores action output result for [Backend Call - API (diario intolerancia Dos Carga)] action in diario_Into2 widget.
  ApiCallResponse? apiCargaComida;
  // Stores action output result for [Backend Call - API (diario intolerancia Dos Carga)] action in diario_Into2 widget.
  ApiCallResponse? apiCargaCena;
  // State field(s) for Drop_carne1 widget.
  String? dropCarne1Value;
  FormFieldController<String>? dropCarne1ValueController;
  // State field(s) for Drop_carne2 widget.
  String? dropCarne2Value;
  FormFieldController<String>? dropCarne2ValueController;
  // State field(s) for Drop_carne3 widget.
  String? dropCarne3Value;
  FormFieldController<String>? dropCarne3ValueController;
  // State field(s) for Drop_carne4 widget.
  String? dropCarne4Value;
  FormFieldController<String>? dropCarne4ValueController;
  // State field(s) for Drop_carne5 widget.
  String? dropCarne5Value;
  FormFieldController<String>? dropCarne5ValueController;
  // State field(s) for Drop_carne6 widget.
  String? dropCarne6Value;
  FormFieldController<String>? dropCarne6ValueController;
  // State field(s) for Drop_carne7 widget.
  String? dropCarne7Value;
  FormFieldController<String>? dropCarne7ValueController;
  // State field(s) for Drop_pescado1 widget.
  String? dropPescado1Value;
  FormFieldController<String>? dropPescado1ValueController;
  // State field(s) for Drop_pescado2 widget.
  String? dropPescado2Value;
  FormFieldController<String>? dropPescado2ValueController;
  // State field(s) for Drop_pescado3 widget.
  String? dropPescado3Value;
  FormFieldController<String>? dropPescado3ValueController;
  // State field(s) for Drop_pescado4 widget.
  String? dropPescado4Value;
  FormFieldController<String>? dropPescado4ValueController;
  // State field(s) for Drop_pescado5 widget.
  String? dropPescado5Value;
  FormFieldController<String>? dropPescado5ValueController;
  // State field(s) for Drop_pescado6 widget.
  String? dropPescado6Value;
  FormFieldController<String>? dropPescado6ValueController;
  // State field(s) for Drop_pescado7 widget.
  String? dropPescado7Value;
  FormFieldController<String>? dropPescado7ValueController;
  // State field(s) for Drop_marisco1 widget.
  String? dropMarisco1Value;
  FormFieldController<String>? dropMarisco1ValueController;
  // State field(s) for Drop_marisco2 widget.
  String? dropMarisco2Value;
  FormFieldController<String>? dropMarisco2ValueController;
  // State field(s) for Drop_marisco3 widget.
  String? dropMarisco3Value;
  FormFieldController<String>? dropMarisco3ValueController;
  // State field(s) for Drop_marisco4 widget.
  String? dropMarisco4Value;
  FormFieldController<String>? dropMarisco4ValueController;
  // State field(s) for Drop_marisco5 widget.
  String? dropMarisco5Value;
  FormFieldController<String>? dropMarisco5ValueController;
  // State field(s) for Drop_marisco6 widget.
  String? dropMarisco6Value;
  FormFieldController<String>? dropMarisco6ValueController;
  // State field(s) for Drop_marisco7 widget.
  String? dropMarisco7Value;
  FormFieldController<String>? dropMarisco7ValueController;
  // State field(s) for Drop_lacteos1 widget.
  String? dropLacteos1Value;
  FormFieldController<String>? dropLacteos1ValueController;
  // State field(s) for Drop_lacteos2 widget.
  String? dropLacteos2Value;
  FormFieldController<String>? dropLacteos2ValueController;
  // State field(s) for Drop_lacteos3 widget.
  String? dropLacteos3Value;
  FormFieldController<String>? dropLacteos3ValueController;
  // State field(s) for Drop_lacteos4 widget.
  String? dropLacteos4Value;
  FormFieldController<String>? dropLacteos4ValueController;
  // State field(s) for Drop_lacteos5 widget.
  String? dropLacteos5Value;
  FormFieldController<String>? dropLacteos5ValueController;
  // State field(s) for Drop_lacteos6 widget.
  String? dropLacteos6Value;
  FormFieldController<String>? dropLacteos6ValueController;
  // State field(s) for Drop_lacteos7 widget.
  String? dropLacteos7Value;
  FormFieldController<String>? dropLacteos7ValueController;
  // State field(s) for Drop_huevos1 widget.
  String? dropHuevos1Value;
  FormFieldController<String>? dropHuevos1ValueController;
  // State field(s) for Drop_cereales1 widget.
  String? dropCereales1Value;
  FormFieldController<String>? dropCereales1ValueController;
  // State field(s) for Drop_cereales2 widget.
  String? dropCereales2Value;
  FormFieldController<String>? dropCereales2ValueController;
  // State field(s) for Drop_cereales3 widget.
  String? dropCereales3Value;
  FormFieldController<String>? dropCereales3ValueController;
  // State field(s) for Drop_cereales4 widget.
  String? dropCereales4Value;
  FormFieldController<String>? dropCereales4ValueController;
  // State field(s) for Drop_cereales5 widget.
  String? dropCereales5Value;
  FormFieldController<String>? dropCereales5ValueController;
  // State field(s) for Drop_cereales6 widget.
  String? dropCereales6Value;
  FormFieldController<String>? dropCereales6ValueController;
  // State field(s) for Drop_cereales7 widget.
  String? dropCereales7Value;
  FormFieldController<String>? dropCereales7ValueController;
  // State field(s) for Drop_frutas1 widget.
  String? dropFrutas1Value;
  FormFieldController<String>? dropFrutas1ValueController;
  // State field(s) for Drop_frutas2 widget.
  String? dropFrutas2Value;
  FormFieldController<String>? dropFrutas2ValueController;
  // State field(s) for Drop_frutas3 widget.
  String? dropFrutas3Value;
  FormFieldController<String>? dropFrutas3ValueController;
  // State field(s) for Drop_frutas4 widget.
  String? dropFrutas4Value;
  FormFieldController<String>? dropFrutas4ValueController;
  // State field(s) for Drop_frutas5 widget.
  String? dropFrutas5Value;
  FormFieldController<String>? dropFrutas5ValueController;
  // State field(s) for Drop_frutas6 widget.
  String? dropFrutas6Value;
  FormFieldController<String>? dropFrutas6ValueController;
  // State field(s) for Drop_frutas7 widget.
  String? dropFrutas7Value;
  FormFieldController<String>? dropFrutas7ValueController;
  // State field(s) for Drop_verduras1 widget.
  String? dropVerduras1Value;
  FormFieldController<String>? dropVerduras1ValueController;
  // State field(s) for Drop_verduras2 widget.
  String? dropVerduras2Value;
  FormFieldController<String>? dropVerduras2ValueController;
  // State field(s) for Drop_verduras3 widget.
  String? dropVerduras3Value;
  FormFieldController<String>? dropVerduras3ValueController;
  // State field(s) for Drop_verduras4 widget.
  String? dropVerduras4Value;
  FormFieldController<String>? dropVerduras4ValueController;
  // State field(s) for Drop_verduras5 widget.
  String? dropVerduras5Value;
  FormFieldController<String>? dropVerduras5ValueController;
  // State field(s) for Drop_verduras6 widget.
  String? dropVerduras6Value;
  FormFieldController<String>? dropVerduras6ValueController;
  // State field(s) for Drop_verduras7 widget.
  String? dropVerduras7Value;
  FormFieldController<String>? dropVerduras7ValueController;
  // State field(s) for Drop_legumbres1 widget.
  String? dropLegumbres1Value;
  FormFieldController<String>? dropLegumbres1ValueController;
  // State field(s) for Drop_legumbres2 widget.
  String? dropLegumbres2Value;
  FormFieldController<String>? dropLegumbres2ValueController;
  // State field(s) for Drop_legumbres3 widget.
  String? dropLegumbres3Value;
  FormFieldController<String>? dropLegumbres3ValueController;
  // State field(s) for Drop_legumbres4 widget.
  String? dropLegumbres4Value;
  FormFieldController<String>? dropLegumbres4ValueController;
  // State field(s) for Drop_legumbres5 widget.
  String? dropLegumbres5Value;
  FormFieldController<String>? dropLegumbres5ValueController;
  // State field(s) for Drop_legumbres6 widget.
  String? dropLegumbres6Value;
  FormFieldController<String>? dropLegumbres6ValueController;
  // State field(s) for Drop_legumbres7 widget.
  String? dropLegumbres7Value;
  FormFieldController<String>? dropLegumbres7ValueController;
  // State field(s) for Drop_secos1 widget.
  String? dropSecos1Value;
  FormFieldController<String>? dropSecos1ValueController;
  // State field(s) for Drop_secos2 widget.
  String? dropSecos2Value;
  FormFieldController<String>? dropSecos2ValueController;
  // State field(s) for Drop_secos3 widget.
  String? dropSecos3Value;
  FormFieldController<String>? dropSecos3ValueController;
  // State field(s) for Drop_secos4 widget.
  String? dropSecos4Value;
  FormFieldController<String>? dropSecos4ValueController;
  // State field(s) for Drop_secos5 widget.
  String? dropSecos5Value;
  FormFieldController<String>? dropSecos5ValueController;
  // State field(s) for Drop_secos6 widget.
  String? dropSecos6Value;
  FormFieldController<String>? dropSecos6ValueController;
  // State field(s) for Drop_secos7 widget.
  String? dropSecos7Value;
  FormFieldController<String>? dropSecos7ValueController;
  // State field(s) for Drop_salsa1 widget.
  String? dropSalsa1Value;
  FormFieldController<String>? dropSalsa1ValueController;
  // State field(s) for Drop_salsa2 widget.
  String? dropSalsa2Value;
  FormFieldController<String>? dropSalsa2ValueController;
  // State field(s) for Drop_salsa3 widget.
  String? dropSalsa3Value;
  FormFieldController<String>? dropSalsa3ValueController;
  // State field(s) for Drop_salsa4 widget.
  String? dropSalsa4Value;
  FormFieldController<String>? dropSalsa4ValueController;
  // State field(s) for Drop_salsa5 widget.
  String? dropSalsa5Value;
  FormFieldController<String>? dropSalsa5ValueController;
  // State field(s) for Drop_salsa6 widget.
  String? dropSalsa6Value;
  FormFieldController<String>? dropSalsa6ValueController;
  // State field(s) for Drop_salsa7 widget.
  String? dropSalsa7Value;
  FormFieldController<String>? dropSalsa7ValueController;
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
  // Stores action output result for [Backend Call - API (diario intolerancia Dos)] action in Button widget.
  ApiCallResponse? apiInto2;
  // Stores action output result for [Backend Call - API (intolerancia finaliza diario)] action in Button widget.
  ApiCallResponse? apiFin1;
  // Stores action output result for [Backend Call - API (diario intolerancia Dos)] action in Button widget.
  ApiCallResponse? apiInto2Copy;
  // Stores action output result for [Backend Call - API (diario intolerancia Dos)] action in Button widget.
  ApiCallResponse? apiInto2CopyCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
