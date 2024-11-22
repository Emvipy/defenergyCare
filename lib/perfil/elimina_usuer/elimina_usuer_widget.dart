import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'elimina_usuer_model.dart';
export 'elimina_usuer_model.dart';

class EliminaUsuerWidget extends StatefulWidget {
  const EliminaUsuerWidget({super.key});

  @override
  State<EliminaUsuerWidget> createState() => _EliminaUsuerWidgetState();
}

class _EliminaUsuerWidgetState extends State<EliminaUsuerWidget> {
  late EliminaUsuerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EliminaUsuerModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultq0n = await UserEliminaCuentaCall.call(
        authToken: FFAppState().authToken,
      );

      if ((_model.apiResultq0n?.succeeded ?? true)) {
        FFAppState().deleteAuthToken();
        FFAppState().authToken = '';

        FFAppState().deleteXUserId();
        FFAppState().xUserId = 0;

        FFAppState().deleteEmail();
        FFAppState().email = '';

        FFAppState().deleteNombre();
        FFAppState().nombre = '';

        FFAppState().deleteApellidos();
        FFAppState().apellidos = '';

        FFAppState().deleteAvatar();
        FFAppState().avatar = '';

        FFAppState().deletePerfil();
        FFAppState().perfil = '';

        FFAppState().deleteSessionId();
        FFAppState().sessionId = 0;

        FFAppState().deleteEnfermedadId();
        FFAppState().enfermedadId = 0;

        FFAppState().deleteEnfermedadTxt();
        FFAppState().enfermedadTxt = '';

        FFAppState().deletePerfilId();
        FFAppState().perfilId = 0;

        FFAppState().deleteCreadoOk();
        FFAppState().creadoOk = '';

        safeSetState(() {});

        context.goNamed(
          'signup',
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 0),
            ),
          },
        );

        return;
      } else {
        return;
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        ),
      ),
    );
  }
}
