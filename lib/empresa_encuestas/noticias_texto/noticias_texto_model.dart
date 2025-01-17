import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'noticias_texto_widget.dart' show NoticiasTextoWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NoticiasTextoModel extends FlutterFlowModel<NoticiasTextoWidget> {
  ///  Local state fields for this page.

  String mostrarFiltro = 'no';

  String filtro = 'Todas';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (noticia carga texto)] action in Button widget.
  ApiCallResponse? apicargaTexto;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
