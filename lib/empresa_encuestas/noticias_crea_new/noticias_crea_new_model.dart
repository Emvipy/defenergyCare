import '/backend/api_requests/api_calls.dart';
import '/empresa_encuestas/modal_aviso_idioma/modal_aviso_idioma_widget.dart';
import '/empresa_encuestas/modal_comillas/modal_comillas_widget.dart';
import '/empresa_encuestas/modal_noticia_creada/modal_noticia_creada_widget.dart';
import '/empresa_encuestas/modal_push_noticia/modal_push_noticia_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'noticias_crea_new_widget.dart' show NoticiasCreaNewWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class NoticiasCreaNewModel extends FlutterFlowModel<NoticiasCreaNewWidget> {
  ///  Local state fields for this page.

  String mostrarFiltro = 'no';

  String filtro = 'Todas';

  String privada = 'no';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (noticia individual)] action in noticiasCreaNew widget.
  ApiCallResponse? apiCargaNoticiaText;
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
  // Stores action output result for [Backend Call - API (empresa edita news)] action in Button widget.
  ApiCallResponse? apiResultitk1;
  // Stores action output result for [Backend Call - API (empresa edita news)] action in Button widget.
  ApiCallResponse? apiResultitk3;
  // State field(s) for tag widget.
  FocusNode? tagFocusNode;
  TextEditingController? tagTextController;
  String? Function(BuildContext, String?)? tagTextControllerValidator;
  // State field(s) for url_youtube widget.
  FocusNode? urlYoutubeFocusNode;
  TextEditingController? urlYoutubeTextController;
  String? Function(BuildContext, String?)? urlYoutubeTextControllerValidator;
  // State field(s) for url_boton widget.
  FocusNode? urlBotonFocusNode;
  TextEditingController? urlBotonTextController;
  String? Function(BuildContext, String?)? urlBotonTextControllerValidator;
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
  ApiCallResponse? apiSubeImgNews9;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (empresa borra imagen news)] action in Icon widget.
  ApiCallResponse? apiResultwhiu;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (empresa edita news)] action in Button widget.
  ApiCallResponse? apiResultitk;

  @override
  void initState(BuildContext context) {}

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

    tagFocusNode?.dispose();
    tagTextController?.dispose();

    urlYoutubeFocusNode?.dispose();
    urlYoutubeTextController?.dispose();

    urlBotonFocusNode?.dispose();
    urlBotonTextController?.dispose();

    botonEsFocusNode?.dispose();
    botonEsTextController?.dispose();

    botonEnFocusNode?.dispose();
    botonEnTextController?.dispose();
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
