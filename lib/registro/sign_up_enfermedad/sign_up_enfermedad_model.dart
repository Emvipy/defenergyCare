import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/registro/modal_cancela_modificacion/modal_cancela_modificacion_widget.dart';
import '/registro/modal_cancela_sign/modal_cancela_sign_widget.dart';
import 'dart:math';
import 'dart:ui';
import 'sign_up_enfermedad_widget.dart' show SignUpEnfermedadWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class SignUpEnfermedadModel extends FlutterFlowModel<SignUpEnfermedadWidget> {
  ///  Local state fields for this page.

  String covid = 'no';

  String em = 'no';

  String fibro = 'no';

  String otras = 'no';

  String into = 'no';

  int? contador = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (signUp crea enfermedad)] action in Button widget.
  ApiCallResponse? apiCreaEnfermedadCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
