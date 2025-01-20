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
import 'package:shake/shake.dart';
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
  late ShakeDetector shakeDetector;
  var shakeActionInProgress = false;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiarioInto1Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.mostrarContenido = 'no';
      safeSetState(() {});
      _model.cargaUnoIntoOld = await DiarioIntoleranciaUnoCargaCall.call(
        diarioId: FFAppState().diarioIntoId,
        momento: FFAppState().momento,
      );

      if (FFAppState().momento == 1) {
        _model.malestarAyer = null;
        _model.comidaId = 0;
        _model.contadorComida = DiarioIntoleranciaUnoCargaCall.contadorD(
          (_model.cargaUnoIntoOld?.jsonBody ?? ''),
        )!;
        safeSetState(() {});
        FFAppState().intoCarnes = DiarioIntoleranciaUnoCargaCall.carneD(
          (_model.cargaUnoIntoOld?.jsonBody ?? ''),
        )!;
        FFAppState().intoPescado = DiarioIntoleranciaUnoCargaCall.pescadoD(
          (_model.cargaUnoIntoOld?.jsonBody ?? ''),
        )!;
        FFAppState().intoMarisco = DiarioIntoleranciaUnoCargaCall.mariscoD(
          (_model.cargaUnoIntoOld?.jsonBody ?? ''),
        )!;
        FFAppState().intoLacteos = DiarioIntoleranciaUnoCargaCall.lacteoD(
          (_model.cargaUnoIntoOld?.jsonBody ?? ''),
        )!;
        FFAppState().intoHuevos = DiarioIntoleranciaUnoCargaCall.huevosD(
          (_model.cargaUnoIntoOld?.jsonBody ?? ''),
        )!;
        FFAppState().intoCereales = DiarioIntoleranciaUnoCargaCall.cerealesD(
          (_model.cargaUnoIntoOld?.jsonBody ?? ''),
        )!;
        FFAppState().intoFrutas = DiarioIntoleranciaUnoCargaCall.frutasD(
          (_model.cargaUnoIntoOld?.jsonBody ?? ''),
        )!;
        FFAppState().intoVerduras = DiarioIntoleranciaUnoCargaCall.verdurasD(
          (_model.cargaUnoIntoOld?.jsonBody ?? ''),
        )!;
        FFAppState().intoLegumbres = DiarioIntoleranciaUnoCargaCall.legumbresD(
          (_model.cargaUnoIntoOld?.jsonBody ?? ''),
        )!;
        FFAppState().intoFrutosSecos = DiarioIntoleranciaUnoCargaCall.secosD(
          (_model.cargaUnoIntoOld?.jsonBody ?? ''),
        )!;
        FFAppState().intoSalsas = DiarioIntoleranciaUnoCargaCall.salsasD(
          (_model.cargaUnoIntoOld?.jsonBody ?? ''),
        )!;
        FFAppState().intoBebidas = DiarioIntoleranciaUnoCargaCall.bebidasD(
          (_model.cargaUnoIntoOld?.jsonBody ?? ''),
        )!;
        FFAppState().tieneComidaDesayuno =
            DiarioIntoleranciaUnoCargaCall.contadorD(
                      (_model.cargaUnoIntoOld?.jsonBody ?? ''),
                    )! >=
                    1
                ? 'si'
                : 'no';
        safeSetState(() {});
        _model.mostrarContenido = 'si';
        safeSetState(() {});
        return;
      } else {
        if (FFAppState().momento == 2) {
          _model.malestarAyer = null;
          _model.comidaId = 0;
          _model.contadorComida = DiarioIntoleranciaUnoCargaCall.contadorC(
            (_model.cargaUnoIntoOld?.jsonBody ?? ''),
          )!;
          safeSetState(() {});
          FFAppState().intoCarnes = DiarioIntoleranciaUnoCargaCall.carneC(
            (_model.cargaUnoIntoOld?.jsonBody ?? ''),
          )!;
          FFAppState().intoPescado = DiarioIntoleranciaUnoCargaCall.pescadoC(
            (_model.cargaUnoIntoOld?.jsonBody ?? ''),
          )!;
          FFAppState().intoMarisco = DiarioIntoleranciaUnoCargaCall.mariscoC(
            (_model.cargaUnoIntoOld?.jsonBody ?? ''),
          )!;
          FFAppState().intoLacteos = DiarioIntoleranciaUnoCargaCall.lacteoC(
            (_model.cargaUnoIntoOld?.jsonBody ?? ''),
          )!;
          FFAppState().intoHuevos = DiarioIntoleranciaUnoCargaCall.huevosC(
            (_model.cargaUnoIntoOld?.jsonBody ?? ''),
          )!;
          FFAppState().intoCereales = DiarioIntoleranciaUnoCargaCall.cerealesC(
            (_model.cargaUnoIntoOld?.jsonBody ?? ''),
          )!;
          FFAppState().intoFrutas = DiarioIntoleranciaUnoCargaCall.frutasC(
            (_model.cargaUnoIntoOld?.jsonBody ?? ''),
          )!;
          FFAppState().intoVerduras = DiarioIntoleranciaUnoCargaCall.verdurasC(
            (_model.cargaUnoIntoOld?.jsonBody ?? ''),
          )!;
          FFAppState().intoLegumbres =
              DiarioIntoleranciaUnoCargaCall.legumbresC(
            (_model.cargaUnoIntoOld?.jsonBody ?? ''),
          )!;
          FFAppState().intoFrutosSecos = DiarioIntoleranciaUnoCargaCall.secosC(
            (_model.cargaUnoIntoOld?.jsonBody ?? ''),
          )!;
          FFAppState().intoSalsas = DiarioIntoleranciaUnoCargaCall.salsaC(
            (_model.cargaUnoIntoOld?.jsonBody ?? ''),
          )!;
          FFAppState().intoBebidas = DiarioIntoleranciaUnoCargaCall.bebidasC(
            (_model.cargaUnoIntoOld?.jsonBody ?? ''),
          )!;
          FFAppState().tieneComidaComida =
              DiarioIntoleranciaUnoCargaCall.contadorC(
                        (_model.cargaUnoIntoOld?.jsonBody ?? ''),
                      )! >=
                      1
                  ? 'si'
                  : 'no';
          safeSetState(() {});
          _model.mostrarContenido = 'si';
          safeSetState(() {});
          return;
        } else {
          if (FFAppState().momento == 3) {
            _model.malestarAyer = null;
            _model.comidaId = 0;
            _model.contadorComida =
                DiarioIntoleranciaUnoCargaCall.contadoMerienda(
              (_model.cargaUnoIntoOld?.jsonBody ?? ''),
            )!;
            safeSetState(() {});
            FFAppState().intoCarnes =
                DiarioIntoleranciaUnoCargaCall.carneMerienda(
              (_model.cargaUnoIntoOld?.jsonBody ?? ''),
            )!;
            FFAppState().intoPescado =
                DiarioIntoleranciaUnoCargaCall.pescadoMerienda(
              (_model.cargaUnoIntoOld?.jsonBody ?? ''),
            )!;
            FFAppState().intoMarisco =
                DiarioIntoleranciaUnoCargaCall.mariscosMerienda(
              (_model.cargaUnoIntoOld?.jsonBody ?? ''),
            )!;
            FFAppState().intoLacteos =
                DiarioIntoleranciaUnoCargaCall.lactiosMerienda(
              (_model.cargaUnoIntoOld?.jsonBody ?? ''),
            )!;
            FFAppState().intoHuevos =
                DiarioIntoleranciaUnoCargaCall.huevosMerienda(
              (_model.cargaUnoIntoOld?.jsonBody ?? ''),
            )!;
            FFAppState().intoCereales =
                DiarioIntoleranciaUnoCargaCall.cerealesMerienda(
              (_model.cargaUnoIntoOld?.jsonBody ?? ''),
            )!;
            FFAppState().intoFrutas =
                DiarioIntoleranciaUnoCargaCall.frutasMerienda(
              (_model.cargaUnoIntoOld?.jsonBody ?? ''),
            )!;
            FFAppState().intoVerduras =
                DiarioIntoleranciaUnoCargaCall.verdurasMerienda(
              (_model.cargaUnoIntoOld?.jsonBody ?? ''),
            )!;
            FFAppState().intoLegumbres =
                DiarioIntoleranciaUnoCargaCall.lrgumbresMerienda(
              (_model.cargaUnoIntoOld?.jsonBody ?? ''),
            )!;
            FFAppState().intoFrutosSecos =
                DiarioIntoleranciaUnoCargaCall.secosMerienda(
              (_model.cargaUnoIntoOld?.jsonBody ?? ''),
            )!;
            FFAppState().intoSalsas =
                DiarioIntoleranciaUnoCargaCall.salsasMerienda(
              (_model.cargaUnoIntoOld?.jsonBody ?? ''),
            )!;
            FFAppState().intoBebidas =
                DiarioIntoleranciaUnoCargaCall.bebidasMerienda(
              (_model.cargaUnoIntoOld?.jsonBody ?? ''),
            )!;
            FFAppState().tieneComidaCena =
                DiarioIntoleranciaUnoCargaCall.contadoMerienda(
                          (_model.cargaUnoIntoOld?.jsonBody ?? ''),
                        )! >=
                        1
                    ? 'si'
                    : 'no';
            safeSetState(() {});
            _model.mostrarContenido = 'si';
            safeSetState(() {});
            return;
          } else {
            if (FFAppState().momento == 4) {
              _model.malestarAyer = null;
              _model.comidaId = 0;
              _model.contadorComida =
                  DiarioIntoleranciaUnoCargaCall.contadorCena(
                (_model.cargaUnoIntoOld?.jsonBody ?? ''),
              )!;
              safeSetState(() {});
              FFAppState().intoCarnes =
                  DiarioIntoleranciaUnoCargaCall.carneCena(
                (_model.cargaUnoIntoOld?.jsonBody ?? ''),
              )!;
              FFAppState().intoPescado =
                  DiarioIntoleranciaUnoCargaCall.pescadoCena(
                (_model.cargaUnoIntoOld?.jsonBody ?? ''),
              )!;
              FFAppState().intoMarisco =
                  DiarioIntoleranciaUnoCargaCall.mariscoCena(
                (_model.cargaUnoIntoOld?.jsonBody ?? ''),
              )!;
              FFAppState().intoLacteos =
                  DiarioIntoleranciaUnoCargaCall.lacteoCena(
                (_model.cargaUnoIntoOld?.jsonBody ?? ''),
              )!;
              FFAppState().intoHuevos =
                  DiarioIntoleranciaUnoCargaCall.huevosCena(
                (_model.cargaUnoIntoOld?.jsonBody ?? ''),
              )!;
              FFAppState().intoCereales =
                  DiarioIntoleranciaUnoCargaCall.cerealesCena(
                (_model.cargaUnoIntoOld?.jsonBody ?? ''),
              )!;
              FFAppState().intoFrutas =
                  DiarioIntoleranciaUnoCargaCall.frutasCena(
                (_model.cargaUnoIntoOld?.jsonBody ?? ''),
              )!;
              FFAppState().intoVerduras =
                  DiarioIntoleranciaUnoCargaCall.verdurasCena(
                (_model.cargaUnoIntoOld?.jsonBody ?? ''),
              )!;
              FFAppState().intoLegumbres =
                  DiarioIntoleranciaUnoCargaCall.legumbresCena(
                (_model.cargaUnoIntoOld?.jsonBody ?? ''),
              )!;
              FFAppState().intoFrutosSecos =
                  DiarioIntoleranciaUnoCargaCall.secosCena(
                (_model.cargaUnoIntoOld?.jsonBody ?? ''),
              )!;
              FFAppState().intoSalsas =
                  DiarioIntoleranciaUnoCargaCall.salsasCena(
                (_model.cargaUnoIntoOld?.jsonBody ?? ''),
              )!;
              FFAppState().intoBebidas =
                  DiarioIntoleranciaUnoCargaCall.bebidasCena(
                (_model.cargaUnoIntoOld?.jsonBody ?? ''),
              )!;
              FFAppState().tieneComidaCena =
                  DiarioIntoleranciaUnoCargaCall.contadorCena(
                            (_model.cargaUnoIntoOld?.jsonBody ?? ''),
                          )! >=
                          1
                      ? 'si'
                      : 'no';
              safeSetState(() {});
              _model.mostrarContenido = 'si';
              safeSetState(() {});
              return;
            } else {
              return;
            }
          }
        }
      }
    });

    // On shake action.
    shakeDetector = ShakeDetector.autoStart(
      onPhoneShake: () async {
        if (shakeActionInProgress) {
          return;
        }
        shakeActionInProgress = true;
        try {} finally {
          shakeActionInProgress = false;
        }
      },
      shakeThresholdGravity: 1.5,
    );

    _model.buscadorPlatoTextController ??= TextEditingController();
    _model.buscadorPlatoFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    shakeDetector.stopListening();
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
                if (FFAppState().authToken == '1')
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                                } else if (FFAppState()
                                                        .momento ==
                                                    2) {
                                                  return '42%';
                                                } else {
                                                  return '74%';
                                                }
                                              }(),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'b2h0bs3c' /* ¿Te ha sentado mal algo de lo ... */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: (_model.malestarAyer ==
                                                      null ||
                                                  _model.malestarAyer == '')
                                              ? null
                                              : () async {
                                                  _model.apiResultozvPlatos =
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

                                                  FFAppState().mostrarAyer =
                                                      'no';
                                                  safeSetState(() {});

                                                  safeSetState(() {});
                                                },
                                          text: FFLocalizations.of(context)
                                              .getText(
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
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
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
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
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
                                                              letterSpacing:
                                                                  0.0,
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
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
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
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
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
                                                              letterSpacing:
                                                                  0.0,
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
                                                  mainAxisSize:
                                                      MainAxisSize.max,
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
                                                              () =>
                                                                  safeSetState(
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
                                                                            FontStyle.italic,
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
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
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
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
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
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'jfg71uy3' /* Platos  */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
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
                                                    .fromSTEB(
                                                        0.0, 3.0, 0.0, 0.0),
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
                                                              buscador: _model
                                                                  .buscador,
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
                                                        if (childPlatos
                                                            .isEmpty) {
                                                          return Image.asset(
                                                            'assets/images/empty.png',
                                                            width: 100.0,
                                                          );
                                                        }

                                                        return ListView
                                                            .separated(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount: childPlatos
                                                              .length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              SizedBox(
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
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        5.0,
                                                                        10.0,
                                                                        2.0),
                                                                child:
                                                                    Container(
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
                                                                        alignment: AlignmentDirectional(
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
                                                                              FFAppState().intoPlatoId = getJsonField(
                                                                                childPlatosItem,
                                                                                r'''$.id''',
                                                                              );
                                                                              safeSetState(() {});
                                                                              return;
                                                                            } else {
                                                                              FFAppState().intoBebidaId = getJsonField(
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
                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                            ),
                                                                            child:
                                                                                Container(
                                                                              width: 288.0,
                                                                              height: 80.0,
                                                                              decoration: BoxDecoration(
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
                                                                              child: Row(
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
                                                                              width: 50.0,
                                                                              height: 100.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).suenoMal,
                                                                                borderRadius: BorderRadius.circular(10.0),
                                                                              ),
                                                                              child: Icon(
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
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
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                            ],
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          if ((FFAppState().mostrarAyer == 'no') &&
                              (FFAppState().authToken == '1'))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                              duration:
                                                  Duration(milliseconds: 0),
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
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 5.0),
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
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'w0wwxi66' /* Añadir Plato */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
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
                                              duration:
                                                  Duration(milliseconds: 0),
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
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 5.0),
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
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '1cowymuo' /* Añadir Bebida */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
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
                              (FFAppState().mostrarAyer == 'no') &&
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
                                          ).then(
                                              (value) => safeSetState(() {}));

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
                                              kTransitionInfoKey:
                                                  TransitionInfo(
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
                                        if (_shouldSetState)
                                          safeSetState(() {});
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
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                              (FFAppState().mostrarAyer == 'no') &&
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
                                          ).then(
                                              (value) => safeSetState(() {}));

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
                                              kTransitionInfoKey:
                                                  TransitionInfo(
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
                                        if (_shouldSetState)
                                          safeSetState(() {});
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
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                          if ((FFAppState().intoPlatoId != 0) &&
                              (FFAppState().authToken == '1'))
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
                          if ((FFAppState().intoPlatoId != 0) &&
                              (FFAppState().authToken == '1'))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 5.0),
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

                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      } else {
                                        if (_shouldSetState)
                                          safeSetState(() {});
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
                                                'ieu9df3h' /* SI */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
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
                                      if ((_model.apipasa1?.succeeded ??
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
                                          ).then(
                                              (value) => safeSetState(() {}));

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
                                              kTransitionInfoKey:
                                                  TransitionInfo(
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
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      }

                                      if (_shouldSetState) safeSetState(() {});
                                    },
                                    child: Container(
                                      width: 120.0,
                                      height: 60.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
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
                                                'rzgdwou9' /* NO */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
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
                                    onPressed: (FFAppState().intoPlatoId ==
                                            null)
                                        ? null
                                        : () async {
                                            _model.apiIntoP1FPlatos =
                                                await IntoleranciasUnoNewCall
                                                    .call(
                                              diarioId:
                                                  FFAppState().diarioIntoId,
                                              momento: FFAppState().momento,
                                              contadorComida: 0,
                                              editandoDiario:
                                                  FFAppState().editandoDiario,
                                              platoId: FFAppState().intoPlatoId,
                                              bebidaId:
                                                  FFAppState().intoBebidaId,
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
                                                duration: Duration(
                                                    milliseconds: 4000),
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
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
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
                                      disabledColor:
                                          FlutterFlowTheme.of(context)
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
                                    onPressed: (FFAppState().intoPlatoId ==
                                            null)
                                        ? null
                                        : () async {
                                            unawaited(
                                              () async {
                                                _model.apiIntoP1FCopyPlatos =
                                                    await IntoleranciasUnoNewCall
                                                        .call(
                                                  diarioId:
                                                      FFAppState().diarioIntoId,
                                                  momento: FFAppState().momento,
                                                  contadorComida: 0,
                                                  editandoDiario: FFAppState()
                                                      .editandoDiario,
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
                                                duration: Duration(
                                                    milliseconds: 4000),
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
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
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
                                      disabledColor:
                                          FlutterFlowTheme.of(context)
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
                if (_model.mostrarContenido == 'si')
                  Flexible(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 10.0),
                              child: Container(
                                width: double.infinity,
                                height: 24.0,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                                } else if (FFAppState()
                                                        .momento ==
                                                    2) {
                                                  return '42%';
                                                } else {
                                                  return '74%';
                                                }
                                              }(),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'o044rzbv' /* ¿Te ha sentado mal algo de lo ... */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                                      'feqtngdh' /* SI */,
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
                                                      'n7c4b1yi' /* NO */,
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
                                                      'qetg3tgy' /* No lo sé */,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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

                                                  FFAppState().mostrarAyer =
                                                      'no';
                                                  safeSetState(() {});

                                                  safeSetState(() {});
                                                },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'r0le0qet' /* Guardar */,
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
                                  10.0, 20.0, 10.0, 15.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (FFLocalizations.of(context)
                                            .languageCode ==
                                        'es')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 10.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  '¿Qué has comido en ${() {
                                                    if (FFAppState().momento ==
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
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                    if (FFLocalizations.of(context)
                                            .languageCode ==
                                        'en')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 10.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  'What did you eat for ${() {
                                                    if (FFAppState().momento ==
                                                        1) {
                                                      return 'breakfast?';
                                                    } else if (FFAppState()
                                                            .momento ==
                                                        2) {
                                                      return 'for lunch?';
                                                    } else if (FFAppState()
                                                            .momento ==
                                                        3) {
                                                      return 'at the afternoon snack?';
                                                    } else {
                                                      return ' dinner?';
                                                    }
                                                  }()}',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                          5.0, 20.0, 5.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState().intoCarnes ==
                                                    'no') {
                                                  _model.contadorComida =
                                                      _model.contadorComida + 1;
                                                  safeSetState(() {});
                                                  FFAppState().intoCarnes =
                                                      'si';
                                                  safeSetState(() {});
                                                } else {
                                                  _model.contadorComida =
                                                      _model.contadorComida +
                                                          -1;
                                                  safeSetState(() {});
                                                  FFAppState().intoCarnes =
                                                      'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Container(
                                                width: 100.0,
                                                height: 120.0,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Container(
                                                        width: 75.0,
                                                        height: 75.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FFAppState()
                                                                      .intoCarnes ==
                                                                  'si'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .azulPerm
                                                              : Color(
                                                                  0x00000000),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Container(
                                                            width: 70.0,
                                                            height: 70.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Image.asset(
                                                              'assets/images/carne.png',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '4oqpikk0' /* Carnes */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: FFAppState()
                                                                        .intoCarnes ==
                                                                    'si'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState().intoPescado ==
                                                    'no') {
                                                  _model.contadorComida =
                                                      _model.contadorComida + 1;
                                                  safeSetState(() {});
                                                  FFAppState().intoPescado =
                                                      'si';
                                                  safeSetState(() {});
                                                } else {
                                                  _model.contadorComida =
                                                      _model.contadorComida +
                                                          -1;
                                                  safeSetState(() {});
                                                  FFAppState().intoPescado =
                                                      'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Container(
                                                width: 100.0,
                                                height: 120.0,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -1.0),
                                                      child: Container(
                                                        width: 75.0,
                                                        height: 75.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FFAppState()
                                                                      .intoPescado ==
                                                                  'si'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .azulPerm
                                                              : Color(
                                                                  0x00000000),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Container(
                                                            width: 70.0,
                                                            height: 70.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Image.asset(
                                                              'assets/images/pescados.png',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'r9q2hjjw' /* Pescado */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: FFAppState()
                                                                        .intoPescado ==
                                                                    'si'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState().intoMarisco ==
                                                    'no') {
                                                  _model.contadorComida =
                                                      _model.contadorComida + 1;
                                                  safeSetState(() {});
                                                  FFAppState().intoMarisco =
                                                      'si';
                                                  safeSetState(() {});
                                                } else {
                                                  _model.contadorComida =
                                                      _model.contadorComida +
                                                          -1;
                                                  safeSetState(() {});
                                                  FFAppState().intoMarisco =
                                                      'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Container(
                                                width: 100.0,
                                                height: 120.0,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -1.0),
                                                      child: Container(
                                                        width: 75.0,
                                                        height: 75.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FFAppState()
                                                                      .intoMarisco ==
                                                                  'si'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .azulPerm
                                                              : Color(
                                                                  0x00000000),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Container(
                                                            width: 70.0,
                                                            height: 70.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Image.asset(
                                                              'assets/images/mariscos.png',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Flexible(
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cl9vqpxb' /* Mariscos */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FFAppState()
                                                                              .intoMarisco ==
                                                                          'si'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
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
                                    Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState().intoLacteos ==
                                                    'no') {
                                                  _model.contadorComida =
                                                      _model.contadorComida + 1;
                                                  safeSetState(() {});
                                                  FFAppState().intoLacteos =
                                                      'si';
                                                  safeSetState(() {});
                                                } else {
                                                  _model.contadorComida =
                                                      _model.contadorComida +
                                                          -1;
                                                  safeSetState(() {});
                                                  FFAppState().intoLacteos =
                                                      'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Container(
                                                width: 100.0,
                                                height: 120.0,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -1.0),
                                                      child: Container(
                                                        width: 75.0,
                                                        height: 75.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FFAppState()
                                                                      .intoLacteos ==
                                                                  'si'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .azulPerm
                                                              : Color(
                                                                  0x00000000),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Container(
                                                            width: 70.0,
                                                            height: 70.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Image.asset(
                                                              'assets/images/lacteos.png',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Flexible(
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jifmav6n' /* Lácteos */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FFAppState()
                                                                              .intoLacteos ==
                                                                          'si'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState().intoHuevos ==
                                                    'no') {
                                                  _model.contadorComida =
                                                      _model.contadorComida + 1;
                                                  safeSetState(() {});
                                                  FFAppState().intoHuevos =
                                                      'si';
                                                  safeSetState(() {});
                                                } else {
                                                  _model.contadorComida =
                                                      _model.contadorComida +
                                                          -1;
                                                  safeSetState(() {});
                                                  FFAppState().intoHuevos =
                                                      'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Container(
                                                width: 100.0,
                                                height: 120.0,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -1.0),
                                                      child: Container(
                                                        width: 75.0,
                                                        height: 75.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FFAppState()
                                                                      .intoHuevos ==
                                                                  'si'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .azulPerm
                                                              : Color(
                                                                  0x00000000),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Container(
                                                            width: 70.0,
                                                            height: 70.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Image.asset(
                                                              'assets/images/huevos.png',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ydzwq20r' /* Huevos */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: FFAppState()
                                                                        .intoHuevos ==
                                                                    'si'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState().intoCereales ==
                                                    'no') {
                                                  _model.contadorComida =
                                                      _model.contadorComida + 1;
                                                  safeSetState(() {});
                                                  FFAppState().intoCereales =
                                                      'si';
                                                  safeSetState(() {});
                                                } else {
                                                  _model.contadorComida =
                                                      _model.contadorComida +
                                                          -1;
                                                  safeSetState(() {});
                                                  FFAppState().intoCereales =
                                                      'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Container(
                                                width: 100.0,
                                                height: 120.0,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -1.0),
                                                      child: Container(
                                                        width: 75.0,
                                                        height: 75.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FFAppState()
                                                                      .intoCereales ==
                                                                  'si'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .azulPerm
                                                              : Color(
                                                                  0x00000000),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Container(
                                                            width: 70.0,
                                                            height: 70.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Image.asset(
                                                              'assets/images/cereales.png',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Flexible(
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'pzp2psuw' /* Panes y Cereales */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: FFAppState()
                                                                          .intoCereales ==
                                                                      'si'
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              fontSize: 13.0,
                                                              letterSpacing:
                                                                  0.0,
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
                                    Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState().intoFrutas ==
                                                    'no') {
                                                  _model.contadorComida =
                                                      _model.contadorComida + 1;
                                                  safeSetState(() {});
                                                  FFAppState().intoFrutas =
                                                      'si';
                                                  safeSetState(() {});
                                                } else {
                                                  _model.contadorComida =
                                                      _model.contadorComida +
                                                          -1;
                                                  safeSetState(() {});
                                                  FFAppState().intoFrutas =
                                                      'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Container(
                                                width: 100.0,
                                                height: 120.0,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -1.0),
                                                      child: Container(
                                                        width: 75.0,
                                                        height: 75.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FFAppState()
                                                                      .intoFrutas ==
                                                                  'si'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .azulPerm
                                                              : Color(
                                                                  0x00000000),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Container(
                                                            width: 70.0,
                                                            height: 70.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Image.asset(
                                                              'assets/images/frutas.png',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Flexible(
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '50jobbdc' /* Frutas */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FFAppState()
                                                                              .intoFrutas ==
                                                                          'si'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState().intoVerduras ==
                                                    'no') {
                                                  _model.contadorComida =
                                                      _model.contadorComida + 1;
                                                  safeSetState(() {});
                                                  FFAppState().intoVerduras =
                                                      'si';
                                                  safeSetState(() {});
                                                } else {
                                                  _model.contadorComida =
                                                      _model.contadorComida +
                                                          -1;
                                                  safeSetState(() {});
                                                  FFAppState().intoVerduras =
                                                      'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Container(
                                                width: 100.0,
                                                height: 120.0,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -1.0),
                                                      child: Container(
                                                        width: 75.0,
                                                        height: 75.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FFAppState()
                                                                      .intoVerduras ==
                                                                  'si'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .azulPerm
                                                              : Color(
                                                                  0x00000000),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Container(
                                                            width: 70.0,
                                                            height: 70.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Image.asset(
                                                              'assets/images/verduras.png',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '5i6xan1i' /* Verduras 
y Hortalizas */
                                                        ,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: FFAppState()
                                                                        .intoVerduras ==
                                                                    'si'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            fontSize: 13.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState()
                                                        .intoLegumbres ==
                                                    'no') {
                                                  _model.contadorComida =
                                                      _model.contadorComida + 1;
                                                  safeSetState(() {});
                                                  FFAppState().intoLegumbres =
                                                      'si';
                                                  safeSetState(() {});
                                                } else {
                                                  _model.contadorComida =
                                                      _model.contadorComida +
                                                          -1;
                                                  safeSetState(() {});
                                                  FFAppState().intoLegumbres =
                                                      'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Container(
                                                width: 100.0,
                                                height: 120.0,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -1.0),
                                                      child: Container(
                                                        width: 75.0,
                                                        height: 75.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FFAppState()
                                                                      .intoLegumbres ==
                                                                  'si'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .azulPerm
                                                              : Color(
                                                                  0x00000000),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Container(
                                                            width: 70.0,
                                                            height: 70.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Image.asset(
                                                              'assets/images/legumbres.png',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Flexible(
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'pfkx7tc0' /* Legumbres */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FFAppState()
                                                                              .intoLegumbres ==
                                                                          'si'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
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
                                    Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState()
                                                        .intoFrutosSecos ==
                                                    'no') {
                                                  _model.contadorComida =
                                                      _model.contadorComida + 1;
                                                  safeSetState(() {});
                                                  FFAppState().intoFrutosSecos =
                                                      'si';
                                                  safeSetState(() {});
                                                } else {
                                                  _model.contadorComida =
                                                      _model.contadorComida +
                                                          -1;
                                                  safeSetState(() {});
                                                  FFAppState().intoFrutosSecos =
                                                      'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Container(
                                                width: 100.0,
                                                height: 120.0,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -1.0),
                                                      child: Container(
                                                        width: 75.0,
                                                        height: 75.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FFAppState()
                                                                      .intoFrutosSecos ==
                                                                  'si'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .azulPerm
                                                              : Color(
                                                                  0x00000000),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Container(
                                                            width: 70.0,
                                                            height: 70.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Image.asset(
                                                              'assets/images/secos.png',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Flexible(
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vmkb2xvi' /* Frutos Secos */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FFAppState()
                                                                              .intoFrutosSecos ==
                                                                          'si'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState().intoSalsas ==
                                                    'no') {
                                                  _model.contadorComida =
                                                      _model.contadorComida + 1;
                                                  safeSetState(() {});
                                                  FFAppState().intoSalsas =
                                                      'si';
                                                  safeSetState(() {});
                                                  return;
                                                } else {
                                                  _model.contadorComida =
                                                      _model.contadorComida +
                                                          -1;
                                                  safeSetState(() {});
                                                  FFAppState().intoSalsas =
                                                      'no';
                                                  safeSetState(() {});
                                                  return;
                                                }
                                              },
                                              child: Container(
                                                width: 100.0,
                                                height: 120.0,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -1.0),
                                                      child: Container(
                                                        width: 75.0,
                                                        height: 75.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FFAppState()
                                                                      .intoSalsas ==
                                                                  'si'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .azulPerm
                                                              : Color(
                                                                  0x00000000),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Container(
                                                            width: 70.0,
                                                            height: 70.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Image.asset(
                                                              'assets/images/salsas.png',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'i7th3hzj' /* Salsas y Condimentos */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: FFAppState()
                                                                        .intoSalsas ==
                                                                    'si'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            fontSize: 13.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState().intoBebidas ==
                                                    'no') {
                                                  _model.contadorComida =
                                                      _model.contadorComida + 1;
                                                  safeSetState(() {});
                                                  FFAppState().intoBebidas =
                                                      'si';
                                                  safeSetState(() {});
                                                } else {
                                                  _model.contadorComida =
                                                      _model.contadorComida +
                                                          -1;
                                                  safeSetState(() {});
                                                  FFAppState().intoBebidas =
                                                      'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Container(
                                                width: 100.0,
                                                height: 120.0,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -1.0),
                                                      child: Container(
                                                        width: 75.0,
                                                        height: 75.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FFAppState()
                                                                      .intoBebidas ==
                                                                  'si'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .azulPerm
                                                              : Color(
                                                                  0x00000000),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Container(
                                                            width: 70.0,
                                                            height: 70.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Image.asset(
                                                              'assets/images/water2.png',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Flexible(
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zxtl0pom' /* Bebidas */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FFAppState()
                                                                              .intoBebidas ==
                                                                          'si'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
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
                                  ],
                                ),
                              ),
                            ),
                          if ((FFAppState().mostrarAyer == 'no') ||
                              (widget!.primerIdario == 'si'))
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
                                        frutoSecos:
                                            FFAppState().intoFrutosSecos,
                                        salsas: FFAppState().intoSalsas,
                                        bebidas: FFAppState().intoBebidas,
                                        editandoDiario:
                                            FFAppState().editandoDiario,
                                      );

                                      _shouldSetState = true;
                                      if ((_model.apiIntoP1?.succeeded ??
                                          true)) {
                                        if (_model.contadorComida >= 1) {
                                          context.pushNamed(
                                            'diario_Into2',
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

                                          if (_shouldSetState)
                                            safeSetState(() {});
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
                                                    child:
                                                        ModalSinComidaWidget(),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));

                                          if (_shouldSetState)
                                            safeSetState(() {});
                                          return;
                                        }
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Error X...',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                          ),
                                        );
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      }

                                      if (_shouldSetState) safeSetState(() {});
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'ezbcxlwo' /* Continuar */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 300.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                              (FFAppState().mostrarAyer == 'no'))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 30.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      _model.apiIntoP1F =
                                          await DiarioIntoleranciaUnoCall.call(
                                        authToken: FFAppState().authToken,
                                        diarioId: FFAppState().diarioIntoId,
                                        momento: FFAppState().momento,
                                        contadorComida: _model.contadorComida,
                                        carne: FFAppState().intoCarnes,
                                        pescado: FFAppState().intoPescado,
                                        marisco: FFAppState().intoMarisco,
                                        lacteos: FFAppState().intoLacteos,
                                        huevos: FFAppState().intoLacteos,
                                        cereales: FFAppState().intoCereales,
                                        frutas: FFAppState().intoFrutas,
                                        verduras: FFAppState().intoVerduras,
                                        legumbres: FFAppState().intoLegumbres,
                                        frutoSecos:
                                            FFAppState().intoFrutosSecos,
                                        salsas: FFAppState().intoSalsas,
                                        bebidas: FFAppState().intoBebidas,
                                      );

                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'DIario guardado!',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                          ),
                                        },
                                      );

                                      safeSetState(() {});
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'zhb4hhru' /* Finalizar más tarde */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 300.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
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
                                    onPressed: () async {
                                      unawaited(
                                        () async {
                                          _model.apiIntoP1FCopy =
                                              await DiarioIntoleranciaUnoCall
                                                  .call(
                                            authToken: FFAppState().authToken,
                                            diarioId: FFAppState().diarioIntoId,
                                            momento: FFAppState().momento,
                                            contadorComida:
                                                _model.contadorComida,
                                            carne: FFAppState().intoCarnes,
                                            pescado: FFAppState().intoPescado,
                                            marisco: FFAppState().intoMarisco,
                                            lacteos: FFAppState().intoLacteos,
                                            huevos: FFAppState().intoLacteos,
                                            cereales: FFAppState().intoCereales,
                                            frutas: FFAppState().intoFrutas,
                                            verduras: FFAppState().intoVerduras,
                                            legumbres:
                                                FFAppState().intoLegumbres,
                                            frutoSecos:
                                                FFAppState().intoFrutosSecos,
                                            salsas: FFAppState().intoSalsas,
                                            bebidas: FFAppState().intoBebidas,
                                          );
                                        }(),
                                      );
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'DIario guardado!',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                          ),
                                        },
                                      );

                                      safeSetState(() {});
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'wyqo8kc8' /* Guardar */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 300.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
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
