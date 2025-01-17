import '/backend/api_requests/api_calls.dart';
import '/empresa_encuestas/modal_aviso_idioma/modal_aviso_idioma_widget.dart';
import '/empresa_encuestas/modal_comillas/modal_comillas_widget.dart';
import '/empresa_encuestas/modal_noticia_creada/modal_noticia_creada_widget.dart';
import '/empresa_encuestas/modal_push_noticia/modal_push_noticia_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'noticias_crea_widget.dart' show NoticiasCreaWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class NoticiasCreaModel extends FlutterFlowModel<NoticiasCreaWidget> {
  ///  Local state fields for this page.

  String mostrarFiltro = 'no';

  String filtro = 'Todas';

  ///  State fields for stateful widgets in this page.

  // State field(s) for tituloEs widget.
  FocusNode? tituloEsFocusNode;
  TextEditingController? tituloEsTextController;
  String? Function(BuildContext, String?)? tituloEsTextControllerValidator;
  // State field(s) for tituloEn widget.
  FocusNode? tituloEnFocusNode;
  TextEditingController? tituloEnTextController;
  String? Function(BuildContext, String?)? tituloEnTextControllerValidator;
  // State field(s) for DescEs widget.
  FocusNode? descEsFocusNode;
  TextEditingController? descEsTextController;
  String? Function(BuildContext, String?)? descEsTextControllerValidator;
  // State field(s) for DescEn widget.
  FocusNode? descEnFocusNode;
  TextEditingController? descEnTextController;
  String? Function(BuildContext, String?)? descEnTextControllerValidator;
  // State field(s) for TextoEs widget.
  FocusNode? textoEsFocusNode;
  TextEditingController? textoEsTextController;
  String? Function(BuildContext, String?)? textoEsTextControllerValidator;
  // State field(s) for textoEn widget.
  FocusNode? textoEnFocusNode;
  TextEditingController? textoEnTextController;
  String? Function(BuildContext, String?)? textoEnTextControllerValidator;
  // State field(s) for tag widget.
  FocusNode? tagFocusNode;
  TextEditingController? tagTextController;
  String? Function(BuildContext, String?)? tagTextControllerValidator;
  // State field(s) for url widget.
  FocusNode? urlFocusNode;
  TextEditingController? urlTextController;
  String? Function(BuildContext, String?)? urlTextControllerValidator;
  // State field(s) for botonEs widget.
  FocusNode? botonEsFocusNode;
  TextEditingController? botonEsTextController;
  String? Function(BuildContext, String?)? botonEsTextControllerValidator;
  // State field(s) for botonEn widget.
  FocusNode? botonEnFocusNode;
  TextEditingController? botonEnTextController;
  String? Function(BuildContext, String?)? botonEnTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (empresa noticia sube imagen)] action in Icon widget.
  ApiCallResponse? apiSubeImgNews;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (empresa borra imagen news)] action in Icon widget.
  ApiCallResponse? apiResultwhi;
  // Stores action output result for [Backend Call - API (empresa edita news)] action in Button widget.
  ApiCallResponse? apiResultitk;
  // Model for menu_usuario component.
  late MenuUsuarioModel menuUsuarioModel;

  @override
  void initState(BuildContext context) {
    menuUsuarioModel = createModel(context, () => MenuUsuarioModel());
  }

  @override
  void dispose() {
    tituloEsFocusNode?.dispose();
    tituloEsTextController?.dispose();

    tituloEnFocusNode?.dispose();
    tituloEnTextController?.dispose();

    descEsFocusNode?.dispose();
    descEsTextController?.dispose();

    descEnFocusNode?.dispose();
    descEnTextController?.dispose();

    textoEsFocusNode?.dispose();
    textoEsTextController?.dispose();

    textoEnFocusNode?.dispose();
    textoEnTextController?.dispose();

    tagFocusNode?.dispose();
    tagTextController?.dispose();

    urlFocusNode?.dispose();
    urlTextController?.dispose();

    botonEsFocusNode?.dispose();
    botonEsTextController?.dispose();

    botonEnFocusNode?.dispose();
    botonEnTextController?.dispose();

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
