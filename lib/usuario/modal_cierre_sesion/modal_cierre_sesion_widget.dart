import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'modal_cierre_sesion_model.dart';
export 'modal_cierre_sesion_model.dart';

class ModalCierreSesionWidget extends StatefulWidget {
  const ModalCierreSesionWidget({super.key});

  @override
  State<ModalCierreSesionWidget> createState() =>
      _ModalCierreSesionWidgetState();
}

class _ModalCierreSesionWidgetState extends State<ModalCierreSesionWidget> {
  late ModalCierreSesionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalCierreSesionModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: responsiveVisibility(
        context: context,
        tablet: false,
        tabletLandscape: false,
        desktop: false,
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 1.0),
        child: Container(
          width: double.infinity,
          height: 270.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 5.0,
                color: Color(0x3B1D2429),
                offset: Offset(
                  0.0,
                  -3.0,
                ),
              )
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await actions.onesignalLogout();
                        GoRouter.of(context).prepareAuthEvent();
                        await authManager.signOut();
                        GoRouter.of(context).clearRedirectLocation();

                        context.pushNamedAuth(
                          'login',
                          context.mounted,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );

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

                        FFAppState().deleteDiarioId();
                        FFAppState().diarioId = 0;

                        FFAppState().diarioSuenoId = 0;
                        FFAppState().deleteUserIndividual();
                        FFAppState().userIndividual = null;

                        safeSetState(() {});
                      },
                      child: Icon(
                        Icons.close,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '2y12ka2g' /* ¡Seguridad a la orden del día! */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              lineHeight: 1.2,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'xuh9zl1q' /* Hace aproximadamente 7 días qu... */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 5.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 20.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await actions.onesignalLogout();
                                GoRouter.of(context).prepareAuthEvent();
                                await authManager.signOut();
                                GoRouter.of(context).clearRedirectLocation();

                                context.pushNamedAuth(
                                  'login',
                                  context.mounted,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );

                                FFAppState().deleteAuthToken();
                                FFAppState().authToken = '';

                                FFAppState().deleteXUserId();
                                FFAppState().xUserId = 0;

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

                                FFAppState().deleteDiarioId();
                                FFAppState().diarioId = 0;

                                FFAppState().diarioSuenoId = 0;
                                FFAppState().deleteUserIndividual();
                                FFAppState().userIndividual = null;

                                safeSetState(() {});
                              },
                              text: FFLocalizations.of(context).getText(
                                'gtz050of' /* Entendido */,
                              ),
                              options: FFButtonOptions(
                                width: 300.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).secondary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
