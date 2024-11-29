import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/registro/modal_cancela_sign/modal_cancela_sign_widget.dart';
import '/registro/modal_info_spam/modal_info_spam_widget.dart';
import '/registro/modal_zoom/modal_zoom_widget.dart';
import 'dart:math';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'valida_email_widget.dart' show ValidaEmailWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ValidaEmailModel extends FlutterFlowModel<ValidaEmailWidget> {
  ///  Local state fields for this page.

  bool legal = false;

  bool investigacion = false;

  String code = 'si';

  String modalSpam = 'si';

  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (signUp reenvia code)] action in RichTextSpan widget.
  ApiCallResponse? apiResult4g0;
  // State field(s) for Checkbox_legal widget.
  bool? checkboxLegalValue1;
  // State field(s) for Checkbox_legal widget.
  bool? checkboxLegalValue2;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }
}
