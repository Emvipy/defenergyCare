import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'diario_into4_widget.dart' show DiarioInto4Widget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class DiarioInto4Model extends FlutterFlowModel<DiarioInto4Widget> {
  ///  Local state fields for this page.

  int contador = 0;

  String dolor1 = 'no';

  String dolor2 = 'no';

  String dolor3 = 'no';

  String dolor4 = 'no';

  String dolor5 = 'no';

  String dolor6 = 'no';

  String dolor7 = 'no';

  String dolor8 = 'no';

  String dolor9 = 'no';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (diario intolerancias Cuatro Carga)] action in diario_Into4 widget.
  ApiCallResponse? apiCarga4;
  // Stores action output result for [Backend Call - API (diario intolerancias Cuatro)] action in Button widget.
  ApiCallResponse? apiResultdl2;
  // Stores action output result for [Backend Call - API (intolerancia finaliza diario)] action in Button widget.
  ApiCallResponse? apiFIn3;
  // Stores action output result for [Backend Call - API (diario intolerancias Cuatro)] action in Button widget.
  ApiCallResponse? apiResultdl3;
  // Stores action output result for [Backend Call - API (diario intolerancias Cuatro)] action in Button widget.
  ApiCallResponse? apiResultdl4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
