import '/backend/api_requests/api_calls.dart';
import '/diario_intolerancias/modal_comida_guardada/modal_comida_guardada_widget.dart';
import '/diario_intolerancias/modal_sin_comida/modal_sin_comida_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'diario_into1_model.dart';
export 'diario_into1_model.dart';

class DiarioInto1Widget extends StatefulWidget {
  const DiarioInto1Widget({
    super.key,
    this.primerIdario,
  });

  final String? primerIdario;

  @override
  State<DiarioInto1Widget> createState() => _DiarioInto1WidgetState();
}

class _DiarioInto1WidgetState extends State<DiarioInto1Widget> {
  late DiarioInto1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiarioInto1Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.cargaUnoInto = await DiarioIntoleranciaUnoCargaCall.call(
        diarioId: FFAppState().diarioIntoId,
        momento: FFAppState().momento,
      );

      if (FFAppState().momento == 1) {
        FFAppState().intoPlatoId =
            DiarioIntoleranciaUnoCargaCall.platoIdDesayuno(
          (_model.cargaUnoInto?.jsonBody ?? ''),
        )!;
        FFAppState().intoBebidaId =
            DiarioIntoleranciaUnoCargaCall.bebidaIdDesayuno(
          (_model.cargaUnoInto?.jsonBody ?? ''),
        )!;
        safeSetState(() {});
        _model.malestarAyer = null;
        _model.comidaId = 0;
        safeSetState(() {});
        return;
      } else {
        if (FFAppState().momento == 2) {
          FFAppState().intoPlatoId =
              DiarioIntoleranciaUnoCargaCall.platoIdComida(
            (_model.cargaUnoInto?.jsonBody ?? ''),
          )!;
          FFAppState().intoBebidaId =
              DiarioIntoleranciaUnoCargaCall.bebidaIdComida(
            (_model.cargaUnoInto?.jsonBody ?? ''),
          )!;
          safeSetState(() {});
          _model.malestarAyer = null;
          _model.comidaId = 0;
          safeSetState(() {});
          return;
        } else {
          if (FFAppState().momento == 3) {
            FFAppState().intoPlatoId =
                DiarioIntoleranciaUnoCargaCall.platoIdMerienda(
              (_model.cargaUnoInto?.jsonBody ?? ''),
            )!;
            FFAppState().intoBebidaId =
                DiarioIntoleranciaUnoCargaCall.bebidaIdMerienda(
              (_model.cargaUnoInto?.jsonBody ?? ''),
            )!;
            safeSetState(() {});
            _model.malestarAyer = null;
            _model.comidaId = 0;
            safeSetState(() {});
            return;
          } else {
            if (FFAppState().momento == 4) {
              _model.malestarAyer = null;
              _model.comidaId = 0;
              safeSetState(() {});
              FFAppState().intoPlatoId =
                  DiarioIntoleranciaUnoCargaCall.platoIdCena(
                (_model.cargaUnoInto?.jsonBody ?? ''),
              )!;
              FFAppState().intoBebidaId =
                  DiarioIntoleranciaUnoCargaCall.bebidaIdCena(
                (_model.cargaUnoInto?.jsonBody ?? ''),
              )!;
              safeSetState(() {});
              return;
            } else {
              return;
            }
          }
        }
      }
    });

    _model.buscadorPlatoTextController ??= TextEditingController();
    _model.buscadorPlatoFocusNode ??= FocusNode();
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
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).background,
            automaticallyImplyLeading: false,
            leading: Visibility(
              visible: FFAppState().momento > 1,
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onLongPress: () async {
                  if (FFAppState().momento == 2) {
                    if (FFAppState().tieneComidaDesayuno == 'si') {
                      FFAppState().momento = FFAppState().momento + -1;
                      safeSetState(() {});

                      context.pushNamed(
                        'diario_Into1',
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
                      FFAppState().momento = FFAppState().momento + -1;
                      safeSetState(() {});

                      context.pushNamed(
                        'diario_Into1',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );

                      return;
                    }
                  } else {
                    if (FFAppState().momento == 3) {
                      if (FFAppState().tieneComidaComida == 'si') {
                        FFAppState().momento = FFAppState().momento + -1;
                        safeSetState(() {});

                        context.pushNamed(
                          'diario_Into1',
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
                        FFAppState().momento = FFAppState().momento + -1;
                        safeSetState(() {});

                        context.pushNamed(
                          'diario_Into1',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );

                        return;
                      }
                    } else {
                      return;
                    }
                  }
                },
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    if (FFAppState().momento > 1) {
                      FFAppState().momento = FFAppState().momento + -1;
                      safeSetState(() {});

                      context.pushNamed(
                        'diario_Into1',
                        queryParameters: {
                          'primerIdario': serializeParam(
                            widget!.primerIdario,
                            ParamType.String,
                          ),
                        }.withoutNulls,
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    } else {
                      return;
                    }
                  },
                ),
              ),
            ),
            title: Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'c0l2oz0n' /* Diario de Intolerancias */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 2.0,
          ),
          body: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 5.0),
                            child: Container(
                              width: double.infinity,
                              height: 24.0,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: LinearPercentIndicator(
                                          percent: () {
                                            if (FFAppState().momento == 1) {
                                              return 0.10;
                                            } else if (FFAppState().momento ==
                                                2) {
                                              return 0.42;
                                            } else {
                                              return 0.74;
                                            }
                                          }(),
                                          width: 300.0,
                                          lineHeight: 20.0,
                                          animation: true,
                                          animateFromLastPercent: true,
                                          progressColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          center: Text(
                                            () {
                                              if (FFAppState().momento == 1) {
                                                return '10%';
                                              } else if (FFAppState().momento ==
                                                  2) {
                                                return '42%';
                                              } else {
                                                return '74%';
                                              }
                                            }(),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          barRadius: Radius.circular(10.0),
                                          padding: EdgeInsets.zero,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        if ((FFAppState().mostrarAyer == 'si') &&
                            (FFAppState().momento == 1) &&
                            (widget!.primerIdario != 'si'))
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'b2h0bs3c' /* ¿Te ha sentado mal algo de lo ... */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.malestarAyer = 'si';
                                          safeSetState(() {});
                                        },
                                        child: Container(
                                          width: 100.0,
                                          height: 60.0,
                                          decoration: BoxDecoration(
                                            color: _model.malestarAyer == 'si'
                                                ? FlutterFlowTheme.of(context)
                                                    .secondary
                                                : FlutterFlowTheme.of(context)
                                                    .primary,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'vwfkzwrc' /* SI */,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.malestarAyer = 'no';
                                          safeSetState(() {});
                                        },
                                        child: Container(
                                          width: 100.0,
                                          height: 60.0,
                                          decoration: BoxDecoration(
                                            color: _model.malestarAyer == 'no'
                                                ? FlutterFlowTheme.of(context)
                                                    .secondary
                                                : FlutterFlowTheme.of(context)
                                                    .primary,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'vw685ys8' /* NO */,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.malestarAyer = 'no sabe';
                                          safeSetState(() {});
                                        },
                                        child: Container(
                                          width: 100.0,
                                          height: 60.0,
                                          decoration: BoxDecoration(
                                            color: _model.malestarAyer ==
                                                    'no sabe'
                                                ? FlutterFlowTheme.of(context)
                                                    .secondary
                                                : FlutterFlowTheme.of(context)
                                                    .primary,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '3441q104' /* No lo sé */,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 25.0, 0.0, 10.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: (_model.malestarAyer ==
                                                    null ||
                                                _model.malestarAyer == '')
                                            ? null
                                            : () async {
                                                _model.apiResultozv =
                                                    await DiarioIntoAyerCall
                                                        .call(
                                                  authToken:
                                                      FFAppState().authToken,
                                                  respuesta:
                                                      _model.malestarAyer,
                                                  diarioAnterior: FFAppState()
                                                      .diarioIntoAnterior,
                                                  diarioIdActual:
                                                      FFAppState().diarioId,
                                                );

                                                FFAppState().mostrarAyer = 'no';
                                                safeSetState(() {});

                                                safeSetState(() {});
                                              },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          '7c3im5j9' /* Guardar */,
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
                                              .azulPerm,
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if ((FFAppState().mostrarAyer == 'no') ||
                            (widget!.primerIdario == 'si'))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 5.0),
                            child: Container(
                              width: double.infinity,
                              height: 450.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (FFLocalizations.of(context)
                                                .languageCode ==
                                            'es')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Flexible(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      '¿Qué plato has comido en ${() {
                                                        if (FFAppState()
                                                                .momento ==
                                                            1) {
                                                          return 'el desayuno';
                                                        } else if (FFAppState()
                                                                .momento ==
                                                            2) {
                                                          return 'la comida';
                                                        } else if (FFAppState()
                                                                .momento ==
                                                            3) {
                                                          return 'la merienda';
                                                        } else {
                                                          return 'la cena';
                                                        }
                                                      }()} ?',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        if (FFLocalizations.of(context)
                                                .languageCode ==
                                            'en')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Flexible(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'What dish did you have for${() {
                                                        if (FFAppState()
                                                                .momento ==
                                                            1) {
                                                          return 'breakfast?';
                                                        } else if (FFAppState()
                                                                .momento ==
                                                            2) {
                                                          return 'for lunch?';
                                                        } else if (FFAppState()
                                                                .momento ==
                                                            3) {
                                                          return 'the afternoon snack?';
                                                        } else {
                                                          return ' dinner?';
                                                        }
                                                      }()}',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  30.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 270.0,
                                                        child: TextFormField(
                                                          controller: _model
                                                              .buscadorPlatoTextController,
                                                          focusNode: _model
                                                              .buscadorPlatoFocusNode,
                                                          onChanged: (_) =>
                                                              EasyDebounce
                                                                  .debounce(
                                                            '_model.buscadorPlatoTextController',
                                                            Duration(
                                                                milliseconds:
                                                                    300),
                                                            () => safeSetState(
                                                                () {}),
                                                          ),
                                                          autofocus: false,
                                                          textInputAction:
                                                              TextInputAction
                                                                  .search,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            isDense: true,
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            hintText:
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                              'rkktdvtn' /* Buscador... */,
                                                            ),
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontStyle:
                                                                          FontStyle
                                                                              .italic,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            filled: true,
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            prefixIcon: Icon(
                                                              Icons
                                                                  .search_sharp,
                                                            ),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                          cursorColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          validator: _model
                                                              .buscadorPlatoTextControllerValidator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          _model.buscador =
                                                              'todos';
                                                          safeSetState(() {});
                                                          safeSetState(() {
                                                            _model
                                                                .buscadorPlatoTextController
                                                                ?.clear();
                                                          });
                                                          safeSetState(() =>
                                                              _model.apiRequestCompleter =
                                                                  null);
                                                          await _model
                                                              .waitForApiRequestCompleted();
                                                        },
                                                        child: Icon(
                                                          Icons.close_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          _model.buscador = _model
                                                              .buscadorPlatoTextController
                                                              .text;
                                                          safeSetState(() {});
                                                          safeSetState(() =>
                                                              _model.apiRequestCompleter =
                                                                  null);
                                                          await _model
                                                              .waitForApiRequestCompleted();
                                                        },
                                                        child: Icon(
                                                          Icons
                                                              .arrow_circle_right,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          size: 28.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jfg71uy3' /* Platos  */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 3.0, 0.0, 0.0),
                                              child: FutureBuilder<
                                                  ApiCallResponse>(
                                                future: (_model
                                                            .apiRequestCompleter ??=
                                                        Completer<
                                                            ApiCallResponse>()
                                                          ..complete(
                                                              IntoleranciasListadoPlatosCall
                                                                  .call(
                                                            authToken:
                                                                FFAppState()
                                                                    .authToken,
                                                            buscador:
                                                                _model.buscador,
                                                          )))
                                                    .future,
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child: SpinKitCircle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 50.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  final listViewPlatosIntoleranciasListadoPlatosResponse =
                                                      snapshot.data!;

                                                  return Builder(
                                                    builder: (context) {
                                                      final childPlatos =
                                                          getJsonField(
                                                        listViewPlatosIntoleranciasListadoPlatosResponse
                                                            .jsonBody,
                                                        r'''$''',
                                                      ).toList();
                                                      if (childPlatos.isEmpty) {
                                                        return Image.asset(
                                                          'assets/images/empty.png',
                                                          width: 100.0,
                                                        );
                                                      }

                                                      return ListView.separated(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            childPlatos.length,
                                                        separatorBuilder:
                                                            (_, __) => SizedBox(
                                                                height: 10.0),
                                                        itemBuilder: (context,
                                                            childPlatosIndex) {
                                                          final childPlatosItem =
                                                              childPlatos[
                                                                  childPlatosIndex];
                                                          return Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          10.0,
                                                                          2.0),
                                                              child: Container(
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          if (functions
                                                                                  .parseJsonValueToInteger(getJsonField(
                                                                                    childPlatosItem,
                                                                                    r'''$.tipo_id''',
                                                                                  ))
                                                                                  .toString() ==
                                                                              '1') {
                                                                            FFAppState().intoPlatoId =
                                                                                getJsonField(
                                                                              childPlatosItem,
                                                                              r'''$.id''',
                                                                            );
                                                                            safeSetState(() {});
                                                                            return;
                                                                          } else {
                                                                            FFAppState().intoBebidaId =
                                                                                getJsonField(
                                                                              childPlatosItem,
                                                                              r'''$.id''',
                                                                            );
                                                                            safeSetState(() {});
                                                                            return;
                                                                          }
                                                                        },
                                                                        child:
                                                                            Material(
                                                                          color:
                                                                              Colors.transparent,
                                                                          elevation: FFAppState().intoPlatoId ==
                                                                                  functions.parseJsonValueToInteger(getJsonField(
                                                                                    childPlatosItem,
                                                                                    r'''$.id''',
                                                                                  ))
                                                                              ? 0.0
                                                                              : 3.0,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                          ),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                288.0,
                                                                            height:
                                                                                80.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: () {
                                                                                if ((FFAppState().intoPlatoId ==
                                                                                        functions.parseJsonValueToInteger(getJsonField(
                                                                                          childPlatosItem,
                                                                                          r'''$.id''',
                                                                                        ))) ||
                                                                                    (FFAppState().intoBebidaId ==
                                                                                        functions.parseJsonValueToInteger(getJsonField(
                                                                                          childPlatosItem,
                                                                                          r'''$.id''',
                                                                                        )))) {
                                                                                  return FlutterFlowTheme.of(context).alternate;
                                                                                } else if (functions
                                                                                        .parseJsonValueToInteger(getJsonField(
                                                                                          childPlatosItem,
                                                                                          r'''$.tipo_id''',
                                                                                        ))
                                                                                        .toString() ==
                                                                                    '1') {
                                                                                  return FlutterFlowTheme.of(context).primary;
                                                                                } else if (functions
                                                                                        .parseJsonValueToInteger(getJsonField(
                                                                                          childPlatosItem,
                                                                                          r'''$.tipo_id''',
                                                                                        ))
                                                                                        .toString() ==
                                                                                    '2') {
                                                                                  return FlutterFlowTheme.of(context).suenoMal;
                                                                                } else {
                                                                                  return Color(0x00FFA1B0);
                                                                                }
                                                                              }(),
                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                if (FFLocalizations.of(context).languageCode == 'es')
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      functions
                                                                                                  .parseJsonValueToInteger(getJsonField(
                                                                                                    childPlatosItem,
                                                                                                    r'''$.tipo_id''',
                                                                                                  ))
                                                                                                  .toString() ==
                                                                                              '1'
                                                                                          ? 'Comida: '
                                                                                          : 'Bebida: ',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                if (FFLocalizations.of(context).languageCode == 'en')
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      functions
                                                                                                  .parseJsonValueToInteger(getJsonField(
                                                                                                    childPlatosItem,
                                                                                                    r'''$.tipo_id''',
                                                                                                  ))
                                                                                                  .toString() ==
                                                                                              '1'
                                                                                          ? 'Food: '
                                                                                          : 'Beverage: ',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      getJsonField(
                                                                                        childPlatosItem,
                                                                                        r'''$.nombre''',
                                                                                      ).toString(),
                                                                                      textAlign: TextAlign.start,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: FFAppState().intoPlatoId ==
                                                                                                    functions.parseJsonValueToInteger(getJsonField(
                                                                                                      childPlatosItem,
                                                                                                      r'''$.id''',
                                                                                                    ))
                                                                                                ? FlutterFlowTheme.of(context).primaryText
                                                                                                : FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            if (functions
                                                                                    .parseJsonValueToInteger(getJsonField(
                                                                                      childPlatosItem,
                                                                                      r'''$.tipo_id''',
                                                                                    ))
                                                                                    .toString() ==
                                                                                '1') {
                                                                              FFAppState().intoPlatoId = 0;
                                                                              safeSetState(() {});

                                                                              context.pushNamed(
                                                                                'diario_Into_edita_plato',
                                                                                queryParameters: {
                                                                                  'id': serializeParam(
                                                                                    getJsonField(
                                                                                      childPlatosItem,
                                                                                      r'''$.id''',
                                                                                    ),
                                                                                    ParamType.int,
                                                                                  ),
                                                                                  'nombre': serializeParam(
                                                                                    getJsonField(
                                                                                      childPlatosItem,
                                                                                      r'''$.nombre''',
                                                                                    ).toString(),
                                                                                    ParamType.String,
                                                                                  ),
                                                                                }.withoutNulls,
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
                                                                              FFAppState().intoBebidaId = 0;
                                                                              safeSetState(() {});

                                                                              context.pushNamed(
                                                                                'diario_Into_edita_bebida',
                                                                                queryParameters: {
                                                                                  'id': serializeParam(
                                                                                    getJsonField(
                                                                                      childPlatosItem,
                                                                                      r'''$.id''',
                                                                                    ),
                                                                                    ParamType.int,
                                                                                  ),
                                                                                  'nombre': serializeParam(
                                                                                    getJsonField(
                                                                                      childPlatosItem,
                                                                                      r'''$.nombre''',
                                                                                    ).toString(),
                                                                                    ParamType.String,
                                                                                  ),
                                                                                }.withoutNulls,
                                                                              );

                                                                              return;
                                                                            }
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                100.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).suenoMal,
                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                            ),
                                                                            child:
                                                                                Icon(
                                                                              Icons.edit_note,
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    if ((FFAppState().intoPlatoId != null) ||
                                        (FFAppState().intoBebidaId != null))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                FFAppState().intoBebidaId = 0;
                                                FFAppState().intoPlatoId = 0;
                                                safeSetState(() {});
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'yz2qqa9p' /* Anular selección de platos */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          letterSpacing: 0.0,
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
                        if (FFAppState().mostrarAyer == 'no')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 2.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 5.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().intoPlatoId = 0;
                                      FFAppState().intoBebidaId = 0;
                                      safeSetState(() {});

                                      context.pushNamed(
                                        'diario_Into_crea_plato',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    },
                                    child: Container(
                                      width: 120.0,
                                      height: 83.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/comida.png',
                                                width: 50.0,
                                                height: 35.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'w0wwxi66' /* Añadir Plato */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().intoBebidaId = 0;
                                      FFAppState().intoPlatoId = 0;
                                      safeSetState(() {});

                                      context.pushNamed(
                                        'diario_Into_crea_bebida',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    },
                                    child: Container(
                                      width: 120.0,
                                      height: 83.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .lavanda,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/bebida.png',
                                                width: 50.0,
                                                height: 35.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '1cowymuo' /* Añadir Bebida */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  letterSpacing: 0.0,
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
                        if ((FFLocalizations.of(context).languageCode ==
                                'es') &&
                            (FFAppState().mostrarAyer == 'no'))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    var _shouldSetState = false;
                                    _model.apipasa1No =
                                        await IntoleranciasUnoNewCall.call(
                                      diarioId: FFAppState().diarioIntoId,
                                      momento: FFAppState().momento,
                                      editandoDiario:
                                          FFAppState().editandoDiario,
                                      platoId: 0,
                                      bebidaId: 0,
                                      sintomas: 'no',
                                      authToken: FFAppState().authToken,
                                      contadorComida: 0,
                                    );

                                    _shouldSetState = true;
                                    if ((_model.apipasa1No?.succeeded ??
                                        true)) {
                                      FFAppState().mostrarAyer = 'no';
                                      FFAppState().momento =
                                          FFAppState().momento + 1;
                                      FFAppState().intoPlatoId = 0;
                                      FFAppState().intoBebidaId = 0;
                                      safeSetState(() {});
                                      if (FFAppState().momento <= 4) {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          isDismissible: false,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return WebViewAware(
                                              child: GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(context)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child:
                                                      ModalComidaGuardadaWidget(
                                                    primerDiario: 'no',
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));

                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      } else {
                                        _model.apiFIn2Copy =
                                            await IntoleranciaFinalizaDiarioCall
                                                .call(
                                          authToken: FFAppState().authToken,
                                          diarioId: FFAppState().diarioIntoId,
                                        );

                                        _shouldSetState = true;

                                        context.goNamed(
                                          'diarioIntoFin',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                            ),
                                          },
                                        );

                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      }
                                    } else {
                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }

                                    if (_shouldSetState) safeSetState(() {});
                                  },
                                  text: 'No he comido nada en ${() {
                                    if (FFAppState().momento == 1) {
                                      return 'el desayuno';
                                    } else if (FFAppState().momento == 2) {
                                      return 'la comida';
                                    } else if (FFAppState().momento == 3) {
                                      return 'la merienda';
                                    } else {
                                      return 'la cena';
                                    }
                                  }()}',
                                  options: FFButtonOptions(
                                    width: 300.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if ((FFLocalizations.of(context).languageCode ==
                                'en') &&
                            (FFAppState().mostrarAyer == 'no'))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    var _shouldSetState = false;
                                    _model.apipasa1NoEn =
                                        await IntoleranciasUnoNewCall.call(
                                      diarioId: FFAppState().diarioIntoId,
                                      momento: FFAppState().momento,
                                      editandoDiario:
                                          FFAppState().editandoDiario,
                                      platoId: 0,
                                      bebidaId: 0,
                                      sintomas: 'no',
                                      authToken: FFAppState().authToken,
                                      contadorComida: 0,
                                    );

                                    _shouldSetState = true;
                                    if ((_model.apipasa1NoEn?.succeeded ??
                                        true)) {
                                      FFAppState().mostrarAyer = 'no';
                                      FFAppState().momento =
                                          FFAppState().momento + 1;
                                      FFAppState().intoPlatoId = 0;
                                      FFAppState().intoBebidaId = 0;
                                      safeSetState(() {});
                                      if (FFAppState().momento <= 4) {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          isDismissible: false,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return WebViewAware(
                                              child: GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(context)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child:
                                                      ModalComidaGuardadaWidget(
                                                    primerDiario: 'no',
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));

                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      } else {
                                        _model.apiFIn2Copy2 =
                                            await IntoleranciaFinalizaDiarioCall
                                                .call(
                                          authToken: FFAppState().authToken,
                                          diarioId: FFAppState().diarioIntoId,
                                        );

                                        _shouldSetState = true;

                                        context.goNamed(
                                          'diarioIntoFin',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                            ),
                                          },
                                        );

                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      }
                                    } else {
                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }

                                    if (_shouldSetState) safeSetState(() {});
                                  },
                                  text: 'I didn\'t eat anything${() {
                                    if (FFAppState().momento == 1) {
                                      return 'for breakfast';
                                    } else if (FFAppState().momento == 2) {
                                      return 'at lunch';
                                    } else if (FFAppState().momento == 3) {
                                      return 'at snack time';
                                    } else {
                                      return 'at dinner';
                                    }
                                  }()}',
                                  options: FFButtonOptions(
                                    width: 300.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (FFAppState().intoPlatoId != 0)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'kikceog4' /* ¿Has tenido algún síntoma tras... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        if (FFAppState().intoPlatoId != 0)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 5.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    var _shouldSetState = false;
                                    _model.apiPasaSintoma =
                                        await IntoleranciasUnoNewCall.call(
                                      diarioId: FFAppState().diarioIntoId,
                                      momento: FFAppState().momento,
                                      editandoDiario:
                                          FFAppState().editandoDiario,
                                      platoId: FFAppState().intoPlatoId,
                                      bebidaId: FFAppState().intoBebidaId,
                                      sintomas: 'si',
                                      authToken: FFAppState().authToken,
                                      contadorComida: 0,
                                    );

                                    _shouldSetState = true;
                                    if ((_model.apiPasaSintoma?.succeeded ??
                                        true)) {
                                      context.pushNamed(
                                        'diario_Into3',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                          ),
                                        },
                                      );

                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    } else {
                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }

                                    if (_shouldSetState) safeSetState(() {});
                                  },
                                  child: Container(
                                    width: 120.0,
                                    height: 60.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'ieu9df3h' /* SI */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    var _shouldSetState = false;
                                    _model.apipasa1 =
                                        await IntoleranciasUnoNewCall.call(
                                      diarioId: FFAppState().diarioIntoId,
                                      momento: FFAppState().momento,
                                      editandoDiario:
                                          FFAppState().editandoDiario,
                                      platoId: FFAppState().intoPlatoId,
                                      bebidaId: FFAppState().intoBebidaId,
                                      sintomas: 'no',
                                      authToken: FFAppState().authToken,
                                      contadorComida: 0,
                                    );

                                    _shouldSetState = true;
                                    if ((_model.apipasa1?.succeeded ?? true)) {
                                      FFAppState().mostrarAyer = 'no';
                                      FFAppState().momento =
                                          FFAppState().momento + 1;
                                      FFAppState().intoPlatoId = 0;
                                      FFAppState().intoBebidaId = 0;
                                      safeSetState(() {});
                                      if (FFAppState().momento <= 4) {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          isDismissible: false,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return WebViewAware(
                                              child: GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(context)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child:
                                                      ModalComidaGuardadaWidget(
                                                    primerDiario: 'no',
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));

                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      } else {
                                        _model.apiFIn2 =
                                            await IntoleranciaFinalizaDiarioCall
                                                .call(
                                          authToken: FFAppState().authToken,
                                          diarioId: FFAppState().diarioIntoId,
                                        );

                                        _shouldSetState = true;

                                        context.goNamed(
                                          'diarioIntoFin',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                            ),
                                          },
                                        );

                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      }
                                    } else {
                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }

                                    if (_shouldSetState) safeSetState(() {});
                                  },
                                  child: Container(
                                    width: 120.0,
                                    height: 60.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'rzgdwou9' /* NO */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if ((FFAppState().mostrarAyer == 'no') &&
                            (FFAppState().authToken == '1'))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    var _shouldSetState = false;
                                    FFAppState().mostrarAyer = 'no';
                                    safeSetState(() {});
                                    _model.apiIntoP1 =
                                        await DiarioIntoleranciaUnoCall.call(
                                      authToken: FFAppState().authToken,
                                      diarioId: FFAppState().diarioIntoId,
                                      momento: FFAppState().momento,
                                      contadorComida: _model.contadorComida,
                                      carne: FFAppState().intoCarnes,
                                      pescado: FFAppState().intoPescado,
                                      marisco: FFAppState().intoMarisco,
                                      lacteos: FFAppState().intoLacteos,
                                      huevos: FFAppState().intoHuevos,
                                      cereales: FFAppState().intoCereales,
                                      frutas: FFAppState().intoFrutas,
                                      verduras: FFAppState().intoVerduras,
                                      legumbres: FFAppState().intoLegumbres,
                                      frutoSecos: FFAppState().intoFrutosSecos,
                                      salsas: FFAppState().intoSalsas,
                                      bebidas: FFAppState().intoBebidas,
                                      editandoDiario:
                                          FFAppState().editandoDiario,
                                    );

                                    _shouldSetState = true;
                                    if (_model.contadorComida >= 1) {
                                      context.pushNamed(
                                        'diario_Into2',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                          ),
                                        },
                                      );

                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    } else {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return WebViewAware(
                                            child: GestureDetector(
                                              onTap: () {
                                                FocusScope.of(context)
                                                    .unfocus();
                                                FocusManager
                                                    .instance.primaryFocus
                                                    ?.unfocus();
                                              },
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: ModalSinComidaWidget(),
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));

                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }

                                    if (_shouldSetState) safeSetState(() {});
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    '6rtkt3o4' /* Continuar */,
                                  ),
                                  options: FFButtonOptions(
                                    width: 300.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
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
                              ],
                            ),
                          ),
                        if ((FFAppState().editandoDiario == 'no') &&
                            (FFAppState().mostrarAyer == 'no') &&
                            (FFAppState().intoPlatoId >= 1))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 30.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: (FFAppState().intoPlatoId == null)
                                      ? null
                                      : () async {
                                          _model.apiIntoP1F =
                                              await IntoleranciasUnoNewCall
                                                  .call(
                                            diarioId: FFAppState().diarioIntoId,
                                            momento: FFAppState().momento,
                                            contadorComida: 0,
                                            editandoDiario:
                                                FFAppState().editandoDiario,
                                            platoId: FFAppState().intoPlatoId,
                                            bebidaId: FFAppState().intoBebidaId,
                                            sintomas: 'no',
                                            authToken: FFAppState().authToken,
                                          );

                                          FFAppState().deleteDiarioIntoId();
                                          FFAppState().diarioIntoId = 0;

                                          FFAppState().primerDiarioInto = '';
                                          FFAppState().diarioIntoAnterior = 0;
                                          FFAppState().intoCarnes = 'no';
                                          FFAppState().intoMarisco = 'no';
                                          FFAppState().intoPescado = 'no';
                                          FFAppState().intoLacteos = 'no';
                                          FFAppState().intoHuevos = 'no';
                                          FFAppState().intoCereales = 'no';
                                          FFAppState().intoFrutas = 'no';
                                          FFAppState().intoVerduras = 'no';
                                          FFAppState().intoLegumbres = 'no';
                                          FFAppState().intoFrutosSecos = 'no';
                                          FFAppState().intoSalsas = 'no';
                                          FFAppState().intoBebidas = 'no';
                                          FFAppState().mostrarAyer = 'si';
                                          FFAppState().momento = 1;
                                          FFAppState().intoPlatoId = 0;
                                          FFAppState().intoBebidaId = 0;
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'DIario guardado!',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .success,
                                            ),
                                          );

                                          context.pushNamed(
                                            'Home',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );

                                          safeSetState(() {});
                                        },
                                  text: FFLocalizations.of(context).getText(
                                    'x7nnorqe' /* Finalizar más tarde */,
                                  ),
                                  options: FFButtonOptions(
                                    width: 300.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0x0063A4DC),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                    disabledColor: FlutterFlowTheme.of(context)
                                        .botonDesactivado,
                                    disabledTextColor:
                                        FlutterFlowTheme.of(context).accent4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if ((FFAppState().editandoDiario == 'si') &&
                            (FFAppState().mostrarAyer == 'no'))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 30.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: (FFAppState().intoPlatoId == null)
                                      ? null
                                      : () async {
                                          unawaited(
                                            () async {
                                              _model.apiIntoP1FCopy =
                                                  await IntoleranciasUnoNewCall
                                                      .call(
                                                diarioId:
                                                    FFAppState().diarioIntoId,
                                                momento: FFAppState().momento,
                                                contadorComida: 0,
                                                editandoDiario:
                                                    FFAppState().editandoDiario,
                                                platoId:
                                                    FFAppState().intoPlatoId,
                                                bebidaId:
                                                    FFAppState().intoBebidaId,
                                                sintomas: 'no',
                                                authToken:
                                                    FFAppState().authToken,
                                              );
                                            }(),
                                          );
                                          FFAppState().deleteDiarioIntoId();
                                          FFAppState().diarioIntoId = 0;

                                          FFAppState().primerDiarioInto = '';
                                          FFAppState().diarioIntoAnterior = 0;
                                          FFAppState().intoCarnes = 'no';
                                          FFAppState().intoMarisco = 'no';
                                          FFAppState().intoPescado = 'no';
                                          FFAppState().intoLacteos = 'no';
                                          FFAppState().intoHuevos = 'no';
                                          FFAppState().intoCereales = 'no';
                                          FFAppState().intoFrutas = 'no';
                                          FFAppState().intoVerduras = 'no';
                                          FFAppState().intoLegumbres = 'no';
                                          FFAppState().intoFrutosSecos = 'no';
                                          FFAppState().intoSalsas = 'no';
                                          FFAppState().intoBebidas = 'no';
                                          FFAppState().mostrarAyer = 'si';
                                          FFAppState().momento = 1;
                                          FFAppState().intoPlatoId = 0;
                                          FFAppState().intoBebidaId = 0;
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'DIario guardado!',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .success,
                                            ),
                                          );

                                          context.pushNamed(
                                            'Home',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );

                                          safeSetState(() {});
                                        },
                                  text: FFLocalizations.of(context).getText(
                                    'p9spofzb' /* Guardar */,
                                  ),
                                  options: FFButtonOptions(
                                    width: 300.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0x0063A4DC),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                    disabledColor: FlutterFlowTheme.of(context)
                                        .botonDesactivado,
                                    disabledTextColor:
                                        FlutterFlowTheme.of(context).accent4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
