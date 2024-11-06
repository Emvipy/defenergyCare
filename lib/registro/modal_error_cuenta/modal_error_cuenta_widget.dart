import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'modal_error_cuenta_model.dart';
export 'modal_error_cuenta_model.dart';

class ModalErrorCuentaWidget extends StatefulWidget {
  const ModalErrorCuentaWidget({super.key});

  @override
  State<ModalErrorCuentaWidget> createState() => _ModalErrorCuentaWidgetState();
}

class _ModalErrorCuentaWidgetState extends State<ModalErrorCuentaWidget> {
  late ModalErrorCuentaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalErrorCuentaModel());

    _model.passTextController ??= TextEditingController();
    _model.passFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
          height: 289.0,
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
              if (_model.mensaje == 'no')
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'vrvlicxb' /* Hemos detectado una incidencia... */,
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 17.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  lineHeight: 1.2,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (_model.mensaje == 'no')
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: TextFormField(
                            controller: _model.passTextController,
                            focusNode: _model.passFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.passTextController',
                              Duration(milliseconds: 100),
                              () => safeSetState(() {}),
                            ),
                            autofocus: false,
                            obscureText: !_model.passVisibility,
                            decoration: InputDecoration(
                              isDense: true,
                              labelText: FFLocalizations.of(context).getText(
                                'xlwjvmuc' /* Contraseña */,
                              ),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor:
                                  FlutterFlowTheme.of(context).rellenoCampo2,
                              suffixIcon: InkWell(
                                onTap: () => safeSetState(
                                  () => _model.passVisibility =
                                      !_model.passVisibility,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  _model.passVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  size: 22,
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                            validator: _model.passTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (_model.mensaje == 'si')
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'klmun5s3' /* Tu cuenta no se ha creado corr... */,
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 17.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  lineHeight: 1.2,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (_model.mensaje == 'si')
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (_model.mensajePass == 'si')
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '84rf7se0' /* La contraseña es incorrecta */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.2,
                                  ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              if (_model.mensaje == 'no')
                Flexible(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          10.0, 25.0, 10.0, 15.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FFButtonWidget(
                            onPressed: (_model.passTextController.text ==
                                        null ||
                                    _model.passTextController.text == '')
                                ? null
                                : () async {
                                    _model.mensajePass = 'no';
                                    safeSetState(() {});
                                    GoRouter.of(context).prepareAuthEvent();
                                    await authManager.signOut();
                                    GoRouter.of(context)
                                        .clearRedirectLocation();

                                    GoRouter.of(context).prepareAuthEvent();

                                    final user =
                                        await authManager.signInWithEmail(
                                      context,
                                      FFAppState().email,
                                      _model.passTextController.text,
                                    );
                                    if (user == null) {
                                      return;
                                    }

                                    if (loggedIn) {
                                      await authManager.deleteUser(context);
                                      _model.mensaje = 'si';
                                      safeSetState(() {});
                                      _model.apiResultq0nCopy =
                                          await SignUpCancelaAltaCall.call(
                                        authToken: FFAppState().authToken,
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

                                      FFAppState().modalSpam = 'si';
                                      safeSetState(() {});
                                      await Future.delayed(
                                          const Duration(milliseconds: 2000));
                                      GoRouter.of(context).prepareAuthEvent();
                                      await authManager.signOut();
                                      GoRouter.of(context)
                                          .clearRedirectLocation();

                                      context.pushNamedAuth(
                                        'welcome',
                                        context.mounted,
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    } else {
                                      _model.mensajePass = 'si';
                                      safeSetState(() {});

                                      context.pushNamedAuth(
                                        'signup',
                                        context.mounted,
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    }

                                    safeSetState(() {});
                                  },
                            text: FFLocalizations.of(context).getText(
                              'q198yil1' /* Entendido */,
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
                              disabledColor:
                                  FlutterFlowTheme.of(context).botonDesactivado,
                              disabledTextColor:
                                  FlutterFlowTheme.of(context).accent4,
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
