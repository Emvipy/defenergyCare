import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'empresa_pdte_validacion_copy_widget.dart'
    show EmpresaPdteValidacionCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class EmpresaPdteValidacionCopyModel
    extends FlutterFlowModel<EmpresaPdteValidacionCopyWidget> {
  ///  Local state fields for this page.

  String covid = 'no';

  int? covidMixId = 0;

  String em = 'no';

  int? emMixId = 0;

  String fibro = 'no';

  int? fibroMixId = 0;

  String otras = 'no';

  int? otrasMixId = 0;

  String into = 'no';

  int? intoMixId = 0;

  int? contador = 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
