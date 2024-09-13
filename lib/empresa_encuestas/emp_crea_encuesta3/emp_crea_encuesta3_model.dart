import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'emp_crea_encuesta3_widget.dart' show EmpCreaEncuesta3Widget;
import 'package:flutter/material.dart';

class EmpCreaEncuesta3Model extends FlutterFlowModel<EmpCreaEncuesta3Widget> {
  ///  Local state fields for this page.

  int tipo = 0;

  bool check1 = false;

  bool check2 = false;

  bool check3 = false;

  bool check4 = false;

  int contador = 0;

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  Completer<ApiCallResponse>? apiRequestCompleter1;
  // State field(s) for preg_es widget.
  FocusNode? pregEsFocusNode;
  TextEditingController? pregEsTextController;
  String? Function(BuildContext, String?)? pregEsTextControllerValidator;
  // State field(s) for preg_en widget.
  FocusNode? pregEnFocusNode;
  TextEditingController? pregEnTextController;
  String? Function(BuildContext, String?)? pregEnTextControllerValidator;
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  // Stores action output result for [Backend Call - API (empresa borra opcion encuesta)] action in Icon widget.
  ApiCallResponse? apiResultt7e;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (empresasube foto encuesta)] action in Icon widget.
  ApiCallResponse? apiResultg9x;
  Completer<ApiCallResponse>? apiRequestCompleter2;
  // Stores action output result for [Backend Call - API (empresa borra imagen encuesta)] action in Icon widget.
  ApiCallResponse? apiResultwhi;
  // Stores action output result for [Backend Call - API (empresa edita pregunta)] action in Button widget.
  ApiCallResponse? apiResulta09;
  // Stores action output result for [Backend Call - API (empresa edita pregunta)] action in Button widget.
  ApiCallResponse? apiResulta092;
  // Model for menu_usuario component.
  late MenuUsuarioModel menuUsuarioModel;

  @override
  void initState(BuildContext context) {
    menuUsuarioModel = createModel(context, () => MenuUsuarioModel());
  }

  @override
  void dispose() {
    instantTimer?.cancel();
    pregEsFocusNode?.dispose();
    pregEsTextController?.dispose();

    pregEnFocusNode?.dispose();
    pregEnTextController?.dispose();

    menuUsuarioModel.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
