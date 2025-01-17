import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'comunidad_crea_post_widget.dart' show ComunidadCreaPostWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComunidadCreaPostModel extends FlutterFlowModel<ComunidadCreaPostWidget> {
  ///  Local state fields for this page.

  String cargador = 'no';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField_link widget.
  FocusNode? textFieldLinkFocusNode1;
  TextEditingController? textFieldLinkTextController1;
  String? Function(BuildContext, String?)?
      textFieldLinkTextController1Validator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (comunidad sube imagen)] action in Image widget.
  ApiCallResponse? apiResult93tCopy;
  Completer<ApiCallResponse>? apiRequestCompleter;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (comunidad sube imagen)] action in Text widget.
  ApiCallResponse? apiResult93t;
  // State field(s) for TextField_link widget.
  FocusNode? textFieldLinkFocusNode2;
  TextEditingController? textFieldLinkTextController2;
  String? Function(BuildContext, String?)?
      textFieldLinkTextController2Validator;
  // Stores action output result for [Backend Call - API (comunidad guarda datos new)] action in Button widget.
  ApiCallResponse? guardaPostNew;
  // Model for menu_usuario component.
  late MenuUsuarioModel menuUsuarioModel;

  @override
  void initState(BuildContext context) {
    menuUsuarioModel = createModel(context, () => MenuUsuarioModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    textFieldLinkFocusNode1?.dispose();
    textFieldLinkTextController1?.dispose();

    textFieldLinkFocusNode2?.dispose();
    textFieldLinkTextController2?.dispose();

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
