import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'listado_widget.dart' show ListadoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListadoModel extends FlutterFlowModel<ListadoWidget> {
  ///  Local state fields for this page.

  int? mes;

  int? year;

  DateTime? fecha;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (resumen variable mes)] action in listado widget.
  ApiCallResponse? apiResult23g;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Model for menu_usuario component.
  late MenuUsuarioModel menuUsuarioModel;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    menuUsuarioModel = createModel(context, () => MenuUsuarioModel());
  }

  @override
  void dispose() {
    menuUsuarioModel.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
