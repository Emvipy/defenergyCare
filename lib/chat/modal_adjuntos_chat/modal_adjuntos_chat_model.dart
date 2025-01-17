import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/permissions_util.dart';
import 'modal_adjuntos_chat_widget.dart' show ModalAdjuntosChatWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:record/record.dart';

class ModalAdjuntosChatModel extends FlutterFlowModel<ModalAdjuntosChatWidget> {
  ///  Local state fields for this component.

  int? tipo;

  String? botonAudio = '1';

  ///  State fields for stateful widgets in this component.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for comentario_imagen widget.
  FocusNode? comentarioImagenFocusNode;
  TextEditingController? comentarioImagenTextController;
  String? Function(BuildContext, String?)?
      comentarioImagenTextControllerValidator;
  // Stores action output result for [Backend Call - API (chat adjuntos)] action in Button widget.
  ApiCallResponse? apiChatImagen;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for comentario_file widget.
  FocusNode? comentarioFileFocusNode;
  TextEditingController? comentarioFileTextController;
  String? Function(BuildContext, String?)?
      comentarioFileTextControllerValidator;
  // Stores action output result for [Backend Call - API (chat adjuntos)] action in Button widget.
  ApiCallResponse? apiChatFile;
  AudioRecorder? audioRecorder;
  String? audioChat;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Stores action output result for [Backend Call - API (chat adjuntos)] action in Button widget.
  ApiCallResponse? apiChatAudio;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    comentarioImagenFocusNode?.dispose();
    comentarioImagenTextController?.dispose();

    comentarioFileFocusNode?.dispose();
    comentarioFileTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController3?.dispose();
  }
}
