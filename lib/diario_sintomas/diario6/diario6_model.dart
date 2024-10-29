import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'diario6_widget.dart' show Diario6Widget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class Diario6Model extends FlutterFlowModel<Diario6Widget> {
  ///  Local state fields for this page.

  int contador = 0;

  String? desencadenante;

  String? solucion;

  String? desencadenanteEN;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (diario Seis carga)] action in diario6 widget.
  ApiCallResponse? apiCarga6;
  // State field(s) for DropDown_desencadena widget.
  String? dropDownDesencadenaValue;
  FormFieldController<String>? dropDownDesencadenaValueController;
  // State field(s) for DropDown_ayuda widget.
  String? dropDownAyudaValue;
  FormFieldController<String>? dropDownAyudaValueController;
  // Stores action output result for [Backend Call - API (diario Seis)] action in Button widget.
  ApiCallResponse? apiP6;
  // Stores action output result for [Backend Call - API (diario ultimos meds)] action in Button widget.
  ApiCallResponse? apiUltMeds;
  // Stores action output result for [Backend Call - API (diario finaliza)] action in Button widget.
  ApiCallResponse? apiResultyly;
  // Stores action output result for [Backend Call - API (diario Seis)] action in Button widget.
  ApiCallResponse? apiP6F;
  // Stores action output result for [Backend Call - API (diario Seis)] action in Button widget.
  ApiCallResponse? apiP6F2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
