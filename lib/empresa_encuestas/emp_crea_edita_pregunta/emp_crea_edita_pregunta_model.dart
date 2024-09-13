import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'emp_crea_edita_pregunta_widget.dart' show EmpCreaEditaPreguntaWidget;
import 'package:flutter/material.dart';

class EmpCreaEditaPreguntaModel
    extends FlutterFlowModel<EmpCreaEditaPreguntaWidget> {
  ///  Local state fields for this page.

  int tipo = 0;

  int contador = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (empresa imagen pregunta)] action in emp_crea_edita_pregunta widget.
  ApiCallResponse? apiCargaPregunta;
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
  Completer<ApiCallResponse>? apiRequestCompleter;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (empresasube foto encuesta)] action in Icon widget.
  ApiCallResponse? apiResultg9x;
  // Stores action output result for [Backend Call - API (empresa borra imagen encuesta)] action in Icon widget.
  ApiCallResponse? apiResultwhi;
  // Stores action output result for [Backend Call - API (empresa borra pregunta)] action in Button widget.
  ApiCallResponse? apiResultywt;
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
    pregEsFocusNode?.dispose();
    pregEsTextController?.dispose();

    pregEnFocusNode?.dispose();
    pregEnTextController?.dispose();

    menuUsuarioModel.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
