import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'modal_elimina_mensaje_widget.dart' show ModalEliminaMensajeWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalEliminaMensajeModel
    extends FlutterFlowModel<ModalEliminaMensajeWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (chat elimina mensaje)] action in Button widget.
  ApiCallResponse? apiDeleteMensaje;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
