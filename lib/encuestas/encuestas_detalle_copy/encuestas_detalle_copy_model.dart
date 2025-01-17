import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'dart:async';
import 'encuestas_detalle_copy_widget.dart' show EncuestasDetalleCopyWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class EncuestasDetalleCopyModel
    extends FlutterFlowModel<EncuestasDetalleCopyWidget> {
  ///  Local state fields for this page.

  String despOpciones = '-';

  double desp5 = 0.0;

  double desp10 = 0.0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown_ops widget.
  String? dropDownOpsValue;
  FormFieldController<String>? dropDownOpsValueController;
  // State field(s) for Slider widget.
  double? sliderValue1;
  // State field(s) for Slider widget.
  double? sliderValue2;
  // Stores action output result for [Backend Call - API (encuesta guarda respuesta)] action in Button widget.
  ApiCallResponse? guardaRespuesta0;
  // Stores action output result for [Backend Call - API (encuesta finaliza)] action in Button widget.
  ApiCallResponse? apiResultt17;
  Completer<ApiCallResponse>? apiRequestCompleter1;
  // Stores action output result for [Backend Call - API (encuesta guarda respuesta)] action in Button widget.
  ApiCallResponse? guardaRespuesta1;
  // Stores action output result for [Backend Call - API (encuesta finaliza)] action in Button widget.
  ApiCallResponse? apiResultt17Copy;
  // Stores action output result for [Backend Call - API (encuestas cancela)] action in Button widget.
  ApiCallResponse? apiResultoj2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
