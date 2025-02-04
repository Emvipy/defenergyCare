import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/registro/modal_error_cuenta/modal_error_cuenta_widget.dart';
import '/registro/modal_update/modal_update_widget.dart';
import 'dart:async';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget>
    with TickerProviderStateMixin {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    _model.emailAddressTextController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 140.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.9, 0.9),
            end: Offset(1.0, 1.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(-0.349, 0),
            end: Offset(0, 0),
          ),
        ],
      ),
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
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            top: true,
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).background,
              ),
              alignment: AlignmentDirectional(0.0, -1.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SingleChildScrollView(
                      primary: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 2.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/logo_cabecera_sign_high.png',
                                    width: 288.0,
                                    height: 100.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 10.0, 16.0, 4.0),
                            child: Container(
                              width: double.infinity,
                              constraints: BoxConstraints(
                                maxWidth: 570.0,
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(
                                      0.0,
                                      2.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      32.0, 15.0, 32.0, 15.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'u4e2wups' /* Bienvenid@! */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                fontSize: 30.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 10.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'v3ft7hi6' /* Introduce tus credenciales par... */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: Container(
                                          width: double.infinity,
                                          child: TextFormField(
                                            controller: _model
                                                .emailAddressTextController,
                                            focusNode:
                                                _model.emailAddressFocusNode,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.emailAddressTextController',
                                              Duration(milliseconds: 100),
                                              () => safeSetState(() {}),
                                            ),
                                            autofocus: false,
                                            autofillHints: [
                                              AutofillHints.email
                                            ],
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              labelText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'qhmen7xl' /* Email */,
                                              ),
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 15.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .azulPerm,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFE0E3E7),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFE0E3E7),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .rellenoCampos,
                                              hoverColor:
                                                  FlutterFlowTheme.of(context)
                                                      .rellenoCampos,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            validator: _model
                                                .emailAddressTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 3.0),
                                        child: Container(
                                          width: double.infinity,
                                          child: TextFormField(
                                            controller:
                                                _model.passwordTextController,
                                            focusNode: _model.passwordFocusNode,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.passwordTextController',
                                              Duration(milliseconds: 100),
                                              () => safeSetState(() {}),
                                            ),
                                            autofocus: false,
                                            autofillHints: [
                                              AutofillHints.password
                                            ],
                                            obscureText:
                                                !_model.passwordVisibility,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              labelText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'emzpcxup' /* Contraseña */,
                                              ),
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 15.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .azulPerm,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFE0E3E7),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFE0E3E7),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .rellenoCampos,
                                              hoverColor:
                                                  FlutterFlowTheme.of(context)
                                                      .rellenoCampos,
                                              suffixIcon: InkWell(
                                                onTap: () => safeSetState(
                                                  () => _model
                                                          .passwordVisibility =
                                                      !_model
                                                          .passwordVisibility,
                                                ),
                                                focusNode: FocusNode(
                                                    skipTraversal: true),
                                                child: Icon(
                                                  _model.passwordVisibility
                                                      ? Icons
                                                          .visibility_outlined
                                                      : Icons
                                                          .visibility_off_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            validator: _model
                                                .passwordTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: ((_model.emailAddressTextController
                                                              .text ==
                                                          null ||
                                                      _model.emailAddressTextController
                                                              .text ==
                                                          '') ||
                                                  (_model.passwordTextController
                                                              .text ==
                                                          null ||
                                                      _model.passwordTextController
                                                              .text ==
                                                          ''))
                                              ? null
                                              : () async {
                                                  var _shouldSetState = false;
                                                  GoRouter.of(context)
                                                      .prepareAuthEvent();

                                                  final user = await authManager
                                                      .signInWithEmail(
                                                    context,
                                                    _model
                                                        .emailAddressTextController
                                                        .text,
                                                    _model
                                                        .passwordTextController
                                                        .text,
                                                  );
                                                  if (user == null) {
                                                    return;
                                                  }

                                                  await actions.onesignalLogin(
                                                    currentUserUid,
                                                  );
                                                  _model.passCopy =
                                                      await actions
                                                          .encodeBase64(
                                                    _model
                                                        .emailAddressTextController
                                                        .text,
                                                  );
                                                  _shouldSetState = true;
                                                  _model.apiloginCopy =
                                                      await LoginCall.call(
                                                    email: _model
                                                        .emailAddressTextController
                                                        .text,
                                                    password: _model.passCopy,
                                                    firebase: currentUserUid,
                                                    version: 1,
                                                    so: isAndroid == true
                                                        ? 'Android'
                                                        : 'iOS',
                                                  );

                                                  _shouldSetState = true;
                                                  if ((_model.apiloginCopy
                                                          ?.succeeded ??
                                                      true)) {
                                                    if (LoginCall.creadoOk(
                                                          (_model.apiloginCopy
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) ==
                                                        'si') {
                                                      FFAppState().authToken =
                                                          LoginCall.authToken(
                                                        (_model.apiloginCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!;
                                                      FFAppState().xUserId =
                                                          LoginCall.id(
                                                        (_model.apiloginCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!;
                                                      FFAppState().email =
                                                          LoginCall.email(
                                                        (_model.apiloginCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!;
                                                      FFAppState().nombre =
                                                          LoginCall.nombre(
                                                        (_model.apiloginCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!;
                                                      FFAppState().apellidos =
                                                          LoginCall.apellidos(
                                                        (_model.apiloginCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!;
                                                      FFAppState().avatar =
                                                          LoginCall.avatar(
                                                        (_model.apiloginCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!;
                                                      FFAppState().perfil =
                                                          LoginCall.tipoUsuario(
                                                        (_model.apiloginCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!;
                                                      FFAppState()
                                                              .enfermedadId =
                                                          LoginCall
                                                              .enfermedadId(
                                                        (_model.apiloginCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!;
                                                      FFAppState()
                                                              .enfermedadTxt =
                                                          LoginCall
                                                              .enfermedadTxt(
                                                        (_model.apiloginCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!;
                                                      FFAppState().perfilId =
                                                          LoginCall.perfilId(
                                                        (_model.apiloginCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!;
                                                      FFAppState().creadoOk =
                                                          LoginCall.creadoOk(
                                                        (_model.apiloginCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!;
                                                      FFAppState()
                                                              .nombreEmpresa =
                                                          LoginCall
                                                              .nombreEmpresa(
                                                        (_model.apiloginCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!;
                                                      FFAppState().password = _model
                                                          .passwordTextController
                                                          .text;
                                                      FFAppState().userAsoId =
                                                          LoginCall.asoId(
                                                        (_model.apiloginCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!;
                                                      safeSetState(() {});
                                                      if (LoginCall.verAcual(
                                                            (_model.apiloginCopy
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ) ==
                                                          LoginCall.verNueva(
                                                            (_model.apiloginCopy
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )) {
                                                        unawaited(
                                                          () async {
                                                            await UserLogActivityCall
                                                                .call(
                                                              authToken:
                                                                  FFAppState()
                                                                      .authToken,
                                                              seccion: 'Login',
                                                            );
                                                          }(),
                                                        );
                                                        if (LoginCall.perfilId(
                                                              (_model.apiloginCopy
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) ==
                                                            1) {
                                                          context.pushNamedAuth(
                                                            'Home',
                                                            context.mounted,
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .fade,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        0),
                                                              ),
                                                            },
                                                          );

                                                          safeSetState(() {
                                                            _model
                                                                .emailAddressTextController
                                                                ?.clear();
                                                            _model
                                                                .passwordTextController
                                                                ?.clear();
                                                          });
                                                          if (_shouldSetState)
                                                            safeSetState(() {});
                                                          return;
                                                        } else {
                                                          if (LoginCall
                                                                  .validado(
                                                                (_model.apiloginCopy
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ) ==
                                                              'si') {
                                                            context
                                                                .pushNamedAuth(
                                                              'Home_empresa',
                                                              context.mounted,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          0),
                                                                ),
                                                              },
                                                            );

                                                            safeSetState(() {
                                                              _model
                                                                  .emailAddressTextController
                                                                  ?.clear();
                                                              _model
                                                                  .passwordTextController
                                                                  ?.clear();
                                                            });
                                                            if (_shouldSetState)
                                                              safeSetState(
                                                                  () {});
                                                            return;
                                                          } else {
                                                            context.goNamedAuth(
                                                              'empresa_pdte_validacionCopy',
                                                              context.mounted,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .fade,
                                                                ),
                                                              },
                                                            );

                                                            if (_shouldSetState)
                                                              safeSetState(
                                                                  () {});
                                                            return;
                                                          }
                                                        }
                                                      } else {
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          isDismissible: false,
                                                          enableDrag: false,
                                                          context: context,
                                                          builder: (context) {
                                                            return WebViewAware(
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () {
                                                                  FocusScope.of(
                                                                          context)
                                                                      .unfocus();
                                                                  FocusManager
                                                                      .instance
                                                                      .primaryFocus
                                                                      ?.unfocus();
                                                                },
                                                                child: Padding(
                                                                  padding: MediaQuery
                                                                      .viewInsetsOf(
                                                                          context),
                                                                  child:
                                                                      ModalUpdateWidget(),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            safeSetState(
                                                                () {}));

                                                        if (_shouldSetState)
                                                          safeSetState(() {});
                                                        return;
                                                      }
                                                    } else {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        isDismissible: false,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return WebViewAware(
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus();
                                                                FocusManager
                                                                    .instance
                                                                    .primaryFocus
                                                                    ?.unfocus();
                                                              },
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    ModalErrorCuentaWidget(),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));

                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                      return;
                                                    }
                                                  } else {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Ha ocurrido un error (X)',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                          ),
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                      ),
                                                    );
                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                    return;
                                                  }

                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'syx5rcwt' /* Entrar */,
                                          ),
                                          options: FFButtonOptions(
                                            width: 300.0,
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
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
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            disabledColor:
                                                FlutterFlowTheme.of(context)
                                                    .botonDesactivado,
                                            disabledTextColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent4,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 300.0,
                                        height: 29.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'recordar_pass',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                  ),
                                                },
                                              );
                                            },
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'su470gta' /* He olvidado mi contraseña */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      if ((FFAppState().email != null &&
                                              FFAppState().email != '') &&
                                          (FFAppState().biopwd != null &&
                                              FFAppState().biopwd != '') &&
                                          (isWeb == false))
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 15.0, 0.0, 15.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  var _shouldSetState = false;
                                                  final _localAuth =
                                                      LocalAuthentication();
                                                  bool _isBiometricSupported =
                                                      await _localAuth
                                                          .isDeviceSupported();

                                                  if (_isBiometricSupported) {
                                                    try {
                                                      _model.bioDef = await _localAuth
                                                          .authenticate(
                                                              localizedReason:
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                        '0avv2omr' /* Accede a Defenergy */,
                                                      ));
                                                    } on PlatformException {
                                                      _model.bioDef = false;
                                                    }
                                                    safeSetState(() {});
                                                  }

                                                  _shouldSetState = true;
                                                  if (_model.bioDef == true) {
                                                    GoRouter.of(context)
                                                        .prepareAuthEvent();

                                                    final user =
                                                        await authManager
                                                            .signInWithEmail(
                                                      context,
                                                      FFAppState().email,
                                                      FFAppState().biopwd,
                                                    );
                                                    if (user == null) {
                                                      return;
                                                    }

                                                    await actions
                                                        .onesignalLogin(
                                                      currentUserUid,
                                                    );
                                                    _model.passCopy2 =
                                                        await actions
                                                            .encodeBase64(
                                                      FFAppState().email,
                                                    );
                                                    _shouldSetState = true;
                                                    _model.apiloginBio2 =
                                                        await LoginCall.call(
                                                      email: FFAppState().email,
                                                      password:
                                                          _model.passCopy2,
                                                      firebase: currentUserUid,
                                                      version: 1,
                                                      so: isAndroid == true
                                                          ? 'Android'
                                                          : 'iOS',
                                                    );

                                                    _shouldSetState = true;
                                                    if ((_model.apiloginBio2
                                                            ?.succeeded ??
                                                        true)) {
                                                      if (LoginCall.creadoOk(
                                                            (_model.apiloginCopy
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ) ==
                                                          'si') {
                                                        FFAppState().authToken =
                                                            LoginCall.authToken(
                                                          (_model.apiloginCopy
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!;
                                                        FFAppState().xUserId =
                                                            LoginCall.id(
                                                          (_model.apiloginCopy
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!;
                                                        FFAppState().nombre =
                                                            LoginCall.nombre(
                                                          (_model.apiloginCopy
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!;
                                                        FFAppState().apellidos =
                                                            LoginCall.apellidos(
                                                          (_model.apiloginCopy
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!;
                                                        FFAppState().avatar =
                                                            LoginCall.avatar(
                                                          (_model.apiloginCopy
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!;
                                                        FFAppState().perfil =
                                                            LoginCall
                                                                .tipoUsuario(
                                                          (_model.apiloginCopy
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!;
                                                        FFAppState()
                                                                .enfermedadId =
                                                            LoginCall
                                                                .enfermedadId(
                                                          (_model.apiloginCopy
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!;
                                                        FFAppState()
                                                                .enfermedadTxt =
                                                            LoginCall
                                                                .enfermedadTxt(
                                                          (_model.apiloginCopy
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!;
                                                        FFAppState().perfilId =
                                                            LoginCall.perfilId(
                                                          (_model.apiloginCopy
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!;
                                                        FFAppState().creadoOk =
                                                            LoginCall.creadoOk(
                                                          (_model.apiloginCopy
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!;
                                                        FFAppState()
                                                                .nombreEmpresa =
                                                            LoginCall
                                                                .nombreEmpresa(
                                                          (_model.apiloginCopy
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!;
                                                        FFAppState().password =
                                                            _model
                                                                .passwordTextController
                                                                .text;
                                                        FFAppState().userAsoId =
                                                            LoginCall.asoId(
                                                          (_model.apiloginCopy
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!;
                                                        safeSetState(() {});
                                                        if (LoginCall.verAcual(
                                                              (_model.apiloginCopy
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) ==
                                                            LoginCall.verNueva(
                                                              (_model.apiloginCopy
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )) {
                                                          unawaited(
                                                            () async {
                                                              await UserLogActivityCall
                                                                  .call(
                                                                authToken:
                                                                    FFAppState()
                                                                        .authToken,
                                                                seccion:
                                                                    'Login',
                                                              );
                                                            }(),
                                                          );
                                                          if (LoginCall
                                                                  .perfilId(
                                                                (_model.apiloginCopy
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ) ==
                                                              1) {
                                                            context
                                                                .pushNamedAuth(
                                                              'Home',
                                                              context.mounted,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          0),
                                                                ),
                                                              },
                                                            );

                                                            safeSetState(() {
                                                              _model
                                                                  .emailAddressTextController
                                                                  ?.clear();
                                                              _model
                                                                  .passwordTextController
                                                                  ?.clear();
                                                            });
                                                            if (_shouldSetState)
                                                              safeSetState(
                                                                  () {});
                                                            return;
                                                          } else {
                                                            if (LoginCall
                                                                    .validado(
                                                                  (_model.apiloginCopy
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ) ==
                                                                'si') {
                                                              context
                                                                  .pushNamedAuth(
                                                                'Home_empresa',
                                                                context.mounted,
                                                                extra: <String,
                                                                    dynamic>{
                                                                  kTransitionInfoKey:
                                                                      TransitionInfo(
                                                                    hasTransition:
                                                                        true,
                                                                    transitionType:
                                                                        PageTransitionType
                                                                            .fade,
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            0),
                                                                  ),
                                                                },
                                                              );

                                                              safeSetState(() {
                                                                _model
                                                                    .emailAddressTextController
                                                                    ?.clear();
                                                                _model
                                                                    .passwordTextController
                                                                    ?.clear();
                                                              });
                                                              if (_shouldSetState)
                                                                safeSetState(
                                                                    () {});
                                                              return;
                                                            } else {
                                                              context
                                                                  .goNamedAuth(
                                                                'empresa_pdte_validacionCopy',
                                                                context.mounted,
                                                                extra: <String,
                                                                    dynamic>{
                                                                  kTransitionInfoKey:
                                                                      TransitionInfo(
                                                                    hasTransition:
                                                                        true,
                                                                    transitionType:
                                                                        PageTransitionType
                                                                            .fade,
                                                                  ),
                                                                },
                                                              );

                                                              if (_shouldSetState)
                                                                safeSetState(
                                                                    () {});
                                                              return;
                                                            }
                                                          }
                                                        } else {
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            isDismissible:
                                                                false,
                                                            enableDrag: false,
                                                            context: context,
                                                            builder: (context) {
                                                              return WebViewAware(
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () {
                                                                    FocusScope.of(
                                                                            context)
                                                                        .unfocus();
                                                                    FocusManager
                                                                        .instance
                                                                        .primaryFocus
                                                                        ?.unfocus();
                                                                  },
                                                                  child:
                                                                      Padding(
                                                                    padding: MediaQuery
                                                                        .viewInsetsOf(
                                                                            context),
                                                                    child:
                                                                        ModalUpdateWidget(),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              safeSetState(
                                                                  () {}));

                                                          if (_shouldSetState)
                                                            safeSetState(() {});
                                                          return;
                                                        }
                                                      } else {
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          isDismissible: false,
                                                          enableDrag: false,
                                                          context: context,
                                                          builder: (context) {
                                                            return WebViewAware(
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () {
                                                                  FocusScope.of(
                                                                          context)
                                                                      .unfocus();
                                                                  FocusManager
                                                                      .instance
                                                                      .primaryFocus
                                                                      ?.unfocus();
                                                                },
                                                                child: Padding(
                                                                  padding: MediaQuery
                                                                      .viewInsetsOf(
                                                                          context),
                                                                  child:
                                                                      ModalErrorCuentaWidget(),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            safeSetState(
                                                                () {}));

                                                        if (_shouldSetState)
                                                          safeSetState(() {});
                                                        return;
                                                      }
                                                    } else {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Ha ocurrido un error (X)',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .error,
                                                        ),
                                                      );
                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                      return;
                                                    }
                                                  } else {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          FFLocalizations.of(
                                                                          context)
                                                                      .languageCode ==
                                                                  'es'
                                                              ? 'Autenticación fallida...'
                                                              : 'Authentication failed...',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                          ),
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                      ),
                                                    );
                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                    return;
                                                  }

                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                },
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    Theme.of(context)
                                                                .brightness ==
                                                            Brightness.dark
                                                        ? 'assets/images/touch_dark.png'
                                                        : 'assets/images/touch_light.png',
                                                    width: 50.0,
                                                    height: 50.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),

                                      // You will have to add an action on this rich text to go to your login page.
                                      if (FFLocalizations.of(context)
                                              .languageCode !=
                                          'en')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 25.0, 0.0, 8.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '8dd3rmos' /* ¿Aún no tienes cuenta?   */,
                                                  ),
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'hlqv1kan' /* Entra aquí */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                  mouseCursor:
                                                      SystemMouseCursors.click,
                                                  recognizer:
                                                      TapGestureRecognizer()
                                                        ..onTap = () async {
                                                          context.pushNamed(
                                                            'signup',
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .fade,
                                                              ),
                                                            },
                                                          );
                                                        },
                                                )
                                              ],
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFF101213),
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      if (FFLocalizations.of(context)
                                              .languageCode ==
                                          'en')
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'wcvz2adp' /* ¿Aún no tienes cuenta?   */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      if (FFLocalizations.of(context)
                                              .languageCode ==
                                          'en')
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'signup',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );
                                          },
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'oz0nmk2s' /* Entra aquí */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ).animateOnPageLoad(
                                animationsMap['containerOnPageLoadAnimation']!),
                          ),
                        ],
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 5.0, 15.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'cedogmri' /* Defenergy - 2024 Todos los der... */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                    ))
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 15.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'xuolye9w' /* Ploints Loyalty Solutions S.L.... */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
