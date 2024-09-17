import '/backend/api_requests/api_calls.dart';
import '/diario_intolerancias/modal_sin_comida/modal_sin_comida_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
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

      await Future.delayed(const Duration(milliseconds: 500));
      if (FFAppState().momento == 1) {
        _model.malestarAyer = null;
        _model.comidaId = 0;
        _model.contadorComida = DiarioIntoleranciaUnoCargaCall.contadorD(
          (_model.cargaUnoInto?.jsonBody ?? ''),
        )!;
        safeSetState(() {});
        FFAppState().intoCarnes = DiarioIntoleranciaUnoCargaCall.carneD(
          (_model.cargaUnoInto?.jsonBody ?? ''),
        )!;
        FFAppState().intoPescado = DiarioIntoleranciaUnoCargaCall.pescadoD(
          (_model.cargaUnoInto?.jsonBody ?? ''),
        )!;
        FFAppState().intoMarisco = DiarioIntoleranciaUnoCargaCall.mariscoD(
          (_model.cargaUnoInto?.jsonBody ?? ''),
        )!;
        FFAppState().intoLacteos = DiarioIntoleranciaUnoCargaCall.lacteoD(
          (_model.cargaUnoInto?.jsonBody ?? ''),
        )!;
        FFAppState().intoHuevos = DiarioIntoleranciaUnoCargaCall.huevosD(
          (_model.cargaUnoInto?.jsonBody ?? ''),
        )!;
        FFAppState().intoCereales = DiarioIntoleranciaUnoCargaCall.cerealesD(
          (_model.cargaUnoInto?.jsonBody ?? ''),
        )!;
        FFAppState().intoFrutas = DiarioIntoleranciaUnoCargaCall.frutasD(
          (_model.cargaUnoInto?.jsonBody ?? ''),
        )!;
        FFAppState().intoVerduras = DiarioIntoleranciaUnoCargaCall.verdurasD(
          (_model.cargaUnoInto?.jsonBody ?? ''),
        )!;
        FFAppState().intoLegumbres = DiarioIntoleranciaUnoCargaCall.legumbresD(
          (_model.cargaUnoInto?.jsonBody ?? ''),
        )!;
        FFAppState().intoFrutosSecos = DiarioIntoleranciaUnoCargaCall.secosD(
          (_model.cargaUnoInto?.jsonBody ?? ''),
        )!;
        FFAppState().intoSalsas = DiarioIntoleranciaUnoCargaCall.salsasD(
          (_model.cargaUnoInto?.jsonBody ?? ''),
        )!;
        FFAppState().intoBebidas = DiarioIntoleranciaUnoCargaCall.bebidasD(
          (_model.cargaUnoInto?.jsonBody ?? ''),
        )!;
        FFAppState().tieneComidaDesayuno =
            DiarioIntoleranciaUnoCargaCall.contadorD(
                      (_model.cargaUnoInto?.jsonBody ?? ''),
                    )! >=
                    1
                ? 'si'
                : 'no';
        safeSetState(() {});
      } else {
        if (FFAppState().momento == 2) {
          _model.malestarAyer = null;
          _model.comidaId = 0;
          _model.contadorComida = DiarioIntoleranciaUnoCargaCall.contadorC(
            (_model.cargaUnoInto?.jsonBody ?? ''),
          )!;
          safeSetState(() {});
          FFAppState().intoCarnes = DiarioIntoleranciaUnoCargaCall.carneC(
            (_model.cargaUnoInto?.jsonBody ?? ''),
          )!;
          FFAppState().intoPescado = DiarioIntoleranciaUnoCargaCall.pescadoC(
            (_model.cargaUnoInto?.jsonBody ?? ''),
          )!;
          FFAppState().intoMarisco = DiarioIntoleranciaUnoCargaCall.mariscoC(
            (_model.cargaUnoInto?.jsonBody ?? ''),
          )!;
          FFAppState().intoLacteos = DiarioIntoleranciaUnoCargaCall.lacteoC(
            (_model.cargaUnoInto?.jsonBody ?? ''),
          )!;
          FFAppState().intoHuevos = DiarioIntoleranciaUnoCargaCall.huevosC(
            (_model.cargaUnoInto?.jsonBody ?? ''),
          )!;
          FFAppState().intoCereales = DiarioIntoleranciaUnoCargaCall.cerealesC(
            (_model.cargaUnoInto?.jsonBody ?? ''),
          )!;
          FFAppState().intoFrutas = DiarioIntoleranciaUnoCargaCall.frutasC(
            (_model.cargaUnoInto?.jsonBody ?? ''),
          )!;
          FFAppState().intoVerduras = DiarioIntoleranciaUnoCargaCall.verdurasC(
            (_model.cargaUnoInto?.jsonBody ?? ''),
          )!;
          FFAppState().intoLegumbres =
              DiarioIntoleranciaUnoCargaCall.legumbresC(
            (_model.cargaUnoInto?.jsonBody ?? ''),
          )!;
          FFAppState().intoFrutosSecos = DiarioIntoleranciaUnoCargaCall.secosC(
            (_model.cargaUnoInto?.jsonBody ?? ''),
          )!;
          FFAppState().intoSalsas = DiarioIntoleranciaUnoCargaCall.salsaC(
            (_model.cargaUnoInto?.jsonBody ?? ''),
          )!;
          FFAppState().intoBebidas = DiarioIntoleranciaUnoCargaCall.bebidasC(
            (_model.cargaUnoInto?.jsonBody ?? ''),
          )!;
          FFAppState().tieneComidaComida =
              DiarioIntoleranciaUnoCargaCall.contadorC(
                        (_model.cargaUnoInto?.jsonBody ?? ''),
                      )! >=
                      1
                  ? 'si'
                  : 'no';
          safeSetState(() {});
        } else {
          if (FFAppState().momento == 3) {
            _model.malestarAyer = null;
            _model.comidaId = 0;
            _model.contadorComida = DiarioIntoleranciaUnoCargaCall.contadorCena(
              (_model.cargaUnoInto?.jsonBody ?? ''),
            )!;
            safeSetState(() {});
            FFAppState().intoCarnes = DiarioIntoleranciaUnoCargaCall.carneCena(
              (_model.cargaUnoInto?.jsonBody ?? ''),
            )!;
            FFAppState().intoPescado =
                DiarioIntoleranciaUnoCargaCall.pescadoCena(
              (_model.cargaUnoInto?.jsonBody ?? ''),
            )!;
            FFAppState().intoMarisco =
                DiarioIntoleranciaUnoCargaCall.mariscoCena(
              (_model.cargaUnoInto?.jsonBody ?? ''),
            )!;
            FFAppState().intoLacteos =
                DiarioIntoleranciaUnoCargaCall.lacteoCena(
              (_model.cargaUnoInto?.jsonBody ?? ''),
            )!;
            FFAppState().intoHuevos = DiarioIntoleranciaUnoCargaCall.huevosCena(
              (_model.cargaUnoInto?.jsonBody ?? ''),
            )!;
            FFAppState().intoCereales =
                DiarioIntoleranciaUnoCargaCall.cerealesCena(
              (_model.cargaUnoInto?.jsonBody ?? ''),
            )!;
            FFAppState().intoFrutas = DiarioIntoleranciaUnoCargaCall.frutasCena(
              (_model.cargaUnoInto?.jsonBody ?? ''),
            )!;
            FFAppState().intoVerduras =
                DiarioIntoleranciaUnoCargaCall.verdurasCena(
              (_model.cargaUnoInto?.jsonBody ?? ''),
            )!;
            FFAppState().intoLegumbres =
                DiarioIntoleranciaUnoCargaCall.legumbresCena(
              (_model.cargaUnoInto?.jsonBody ?? ''),
            )!;
            FFAppState().intoFrutosSecos =
                DiarioIntoleranciaUnoCargaCall.secosCena(
              (_model.cargaUnoInto?.jsonBody ?? ''),
            )!;
            FFAppState().intoSalsas = DiarioIntoleranciaUnoCargaCall.salsasCena(
              (_model.cargaUnoInto?.jsonBody ?? ''),
            )!;
            FFAppState().intoBebidas =
                DiarioIntoleranciaUnoCargaCall.bebidasCena(
              (_model.cargaUnoInto?.jsonBody ?? ''),
            )!;
            FFAppState().tieneComidaCena =
                DiarioIntoleranciaUnoCargaCall.contadorCena(
                          (_model.cargaUnoInto?.jsonBody ?? ''),
                        )! >=
                        1
                    ? 'si'
                    : 'no';
            safeSetState(() {});
          }
        }
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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).background,
          automaticallyImplyLeading: false,
          leading: Visibility(
            visible: FFAppState().momento > 1,
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
                if (FFAppState().momento == 2) {
                  if (FFAppState().tieneComidaDesayuno == 'si') {
                    FFAppState().momento = FFAppState().momento + -1;
                    safeSetState(() {});
                    context.pop();
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
                  }
                } else {
                  if (FFAppState().momento == 3) {
                    if (FFAppState().tieneComidaComida == 'si') {
                      FFAppState().momento = FFAppState().momento + -1;
                      safeSetState(() {});
                      context.pop();
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
                    }
                  }
                }
              },
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                          color:
                                              _model.malestarAyer == 'no sabe'
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
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                      onPressed: (_model.malestarAyer == null ||
                                              _model.malestarAyer == '')
                                          ? null
                                          : () async {
                                              _model.apiResultozv =
                                                  await DiarioIntoAyerCall.call(
                                                authToken:
                                                    FFAppState().authToken,
                                                respuesta: _model.malestarAyer,
                                                diarioAnterior: FFAppState()
                                                    .diarioIntoAnterior,
                                              );

                                              FFAppState().mostrarAyer = 'no';
                                              safeSetState(() {});

                                              safeSetState(() {});
                                            },
                                      text: FFLocalizations.of(context).getText(
                                        '7c3im5j9' /* Guardar */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 300.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .azulPerm,
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
                                if (FFLocalizations.of(context).languageCode ==
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              '¿Qué has comido en ${() {
                                                if (FFAppState().momento == 1) {
                                                  return 'el desayuno';
                                                } else if (FFAppState()
                                                        .momento ==
                                                    2) {
                                                  return 'la comida';
                                                } else {
                                                  return 'la cena';
                                                }
                                              }()} ?',
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
                                if (FFLocalizations.of(context).languageCode ==
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              'What did you eat for${() {
                                                if (FFAppState().momento == 1) {
                                                  return 'breakfast?';
                                                } else if (FFAppState()
                                                        .momento ==
                                                    2) {
                                                  return 'for lunch?';
                                                } else {
                                                  return 'dinner?';
                                                }
                                              }()}',
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
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (FFAppState().intoCarnes ==
                                                'no') {
                                              _model.contadorComida =
                                                  _model.contadorComida + 1;
                                              safeSetState(() {});
                                              FFAppState().intoCarnes = 'si';
                                              safeSetState(() {});
                                            } else {
                                              _model.contadorComida =
                                                  _model.contadorComida + -1;
                                              safeSetState(() {});
                                              FFAppState().intoCarnes = 'no';
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
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Container(
                                                    width: 75.0,
                                                    height: 75.0,
                                                    decoration: BoxDecoration(
                                                      color: FFAppState()
                                                                  .intoCarnes ==
                                                              'si'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .azulPerm
                                                          : Color(0x00000000),
                                                      shape: BoxShape.circle,
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
                                                          shape:
                                                              BoxShape.circle,
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
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '13erp0g4' /* Carnes */,
                                                  ),
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (FFAppState().intoPescado ==
                                                'no') {
                                              _model.contadorComida =
                                                  _model.contadorComida + 1;
                                              safeSetState(() {});
                                              FFAppState().intoPescado = 'si';
                                              safeSetState(() {});
                                            } else {
                                              _model.contadorComida =
                                                  _model.contadorComida + -1;
                                              safeSetState(() {});
                                              FFAppState().intoPescado = 'no';
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
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Container(
                                                    width: 75.0,
                                                    height: 75.0,
                                                    decoration: BoxDecoration(
                                                      color: FFAppState()
                                                                  .intoPescado ==
                                                              'si'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .azulPerm
                                                          : Color(0x00000000),
                                                      shape: BoxShape.circle,
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
                                                          shape:
                                                              BoxShape.circle,
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
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'virzdhyc' /* Pescado */,
                                                  ),
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (FFAppState().intoMarisco ==
                                                'no') {
                                              _model.contadorComida =
                                                  _model.contadorComida + 1;
                                              safeSetState(() {});
                                              FFAppState().intoMarisco = 'si';
                                              safeSetState(() {});
                                            } else {
                                              _model.contadorComida =
                                                  _model.contadorComida + -1;
                                              safeSetState(() {});
                                              FFAppState().intoMarisco = 'no';
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
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Container(
                                                    width: 75.0,
                                                    height: 75.0,
                                                    decoration: BoxDecoration(
                                                      color: FFAppState()
                                                                  .intoMarisco ==
                                                              'si'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .azulPerm
                                                          : Color(0x00000000),
                                                      shape: BoxShape.circle,
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
                                                          shape:
                                                              BoxShape.circle,
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
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'd0cepzed' /* Mariscos */,
                                                    ),
                                                    textAlign: TextAlign.center,
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
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (FFAppState().intoLacteos ==
                                                'no') {
                                              _model.contadorComida =
                                                  _model.contadorComida + 1;
                                              safeSetState(() {});
                                              FFAppState().intoLacteos = 'si';
                                              safeSetState(() {});
                                            } else {
                                              _model.contadorComida =
                                                  _model.contadorComida + -1;
                                              safeSetState(() {});
                                              FFAppState().intoLacteos = 'no';
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
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Container(
                                                    width: 75.0,
                                                    height: 75.0,
                                                    decoration: BoxDecoration(
                                                      color: FFAppState()
                                                                  .intoLacteos ==
                                                              'si'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .azulPerm
                                                          : Color(0x00000000),
                                                      shape: BoxShape.circle,
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
                                                          shape:
                                                              BoxShape.circle,
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
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vbamupkq' /* Lácteos */,
                                                    ),
                                                    textAlign: TextAlign.center,
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
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (FFAppState().intoHuevos ==
                                                'no') {
                                              _model.contadorComida =
                                                  _model.contadorComida + 1;
                                              safeSetState(() {});
                                              FFAppState().intoHuevos = 'si';
                                              safeSetState(() {});
                                            } else {
                                              _model.contadorComida =
                                                  _model.contadorComida + -1;
                                              safeSetState(() {});
                                              FFAppState().intoHuevos = 'no';
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
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Container(
                                                    width: 75.0,
                                                    height: 75.0,
                                                    decoration: BoxDecoration(
                                                      color: FFAppState()
                                                                  .intoHuevos ==
                                                              'si'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .azulPerm
                                                          : Color(0x00000000),
                                                      shape: BoxShape.circle,
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
                                                          shape:
                                                              BoxShape.circle,
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
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '0z492xia' /* Huevos */,
                                                  ),
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (FFAppState().intoCereales ==
                                                'no') {
                                              _model.contadorComida =
                                                  _model.contadorComida + 1;
                                              safeSetState(() {});
                                              FFAppState().intoCereales = 'si';
                                              safeSetState(() {});
                                            } else {
                                              _model.contadorComida =
                                                  _model.contadorComida + -1;
                                              safeSetState(() {});
                                              FFAppState().intoCereales = 'no';
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
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Container(
                                                    width: 75.0,
                                                    height: 75.0,
                                                    decoration: BoxDecoration(
                                                      color: FFAppState()
                                                                  .intoCereales ==
                                                              'si'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .azulPerm
                                                          : Color(0x00000000),
                                                      shape: BoxShape.circle,
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
                                                          shape:
                                                              BoxShape.circle,
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
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'h6ozv3vr' /* Panes y Cereales */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
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
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (FFAppState().intoFrutas ==
                                                'no') {
                                              _model.contadorComida =
                                                  _model.contadorComida + 1;
                                              safeSetState(() {});
                                              FFAppState().intoFrutas = 'si';
                                              safeSetState(() {});
                                            } else {
                                              _model.contadorComida =
                                                  _model.contadorComida + -1;
                                              safeSetState(() {});
                                              FFAppState().intoFrutas = 'no';
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
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Container(
                                                    width: 75.0,
                                                    height: 75.0,
                                                    decoration: BoxDecoration(
                                                      color: FFAppState()
                                                                  .intoFrutas ==
                                                              'si'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .azulPerm
                                                          : Color(0x00000000),
                                                      shape: BoxShape.circle,
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
                                                          shape:
                                                              BoxShape.circle,
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
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xttnnnrd' /* Frutas */,
                                                    ),
                                                    textAlign: TextAlign.center,
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
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (FFAppState().intoVerduras ==
                                                'no') {
                                              _model.contadorComida =
                                                  _model.contadorComida + 1;
                                              safeSetState(() {});
                                              FFAppState().intoVerduras = 'si';
                                              safeSetState(() {});
                                            } else {
                                              _model.contadorComida =
                                                  _model.contadorComida + -1;
                                              safeSetState(() {});
                                              FFAppState().intoVerduras = 'no';
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
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Container(
                                                    width: 75.0,
                                                    height: 75.0,
                                                    decoration: BoxDecoration(
                                                      color: FFAppState()
                                                                  .intoVerduras ==
                                                              'si'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .azulPerm
                                                          : Color(0x00000000),
                                                      shape: BoxShape.circle,
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
                                                          shape:
                                                              BoxShape.circle,
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
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'x7pie9s5' /* Verduras 
y Hortalizas */
                                                    ,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (FFAppState().intoLegumbres ==
                                                'no') {
                                              _model.contadorComida =
                                                  _model.contadorComida + 1;
                                              safeSetState(() {});
                                              FFAppState().intoLegumbres = 'si';
                                              safeSetState(() {});
                                            } else {
                                              _model.contadorComida =
                                                  _model.contadorComida + -1;
                                              safeSetState(() {});
                                              FFAppState().intoLegumbres = 'no';
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
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Container(
                                                    width: 75.0,
                                                    height: 75.0,
                                                    decoration: BoxDecoration(
                                                      color: FFAppState()
                                                                  .intoLegumbres ==
                                                              'si'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .azulPerm
                                                          : Color(0x00000000),
                                                      shape: BoxShape.circle,
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
                                                          shape:
                                                              BoxShape.circle,
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
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'uwqmv5vi' /* Legumbres */,
                                                    ),
                                                    textAlign: TextAlign.center,
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
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (FFAppState().intoFrutosSecos ==
                                                'no') {
                                              _model.contadorComida =
                                                  _model.contadorComida + 1;
                                              safeSetState(() {});
                                              FFAppState().intoFrutosSecos =
                                                  'si';
                                              safeSetState(() {});
                                            } else {
                                              _model.contadorComida =
                                                  _model.contadorComida + -1;
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
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Container(
                                                    width: 75.0,
                                                    height: 75.0,
                                                    decoration: BoxDecoration(
                                                      color: FFAppState()
                                                                  .intoFrutosSecos ==
                                                              'si'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .azulPerm
                                                          : Color(0x00000000),
                                                      shape: BoxShape.circle,
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
                                                          shape:
                                                              BoxShape.circle,
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
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4krmm350' /* Frutos Secos */,
                                                    ),
                                                    textAlign: TextAlign.center,
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
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (FFAppState().intoSalsas ==
                                                'no') {
                                              _model.contadorComida =
                                                  _model.contadorComida + 1;
                                              safeSetState(() {});
                                              FFAppState().intoSalsas = 'si';
                                              safeSetState(() {});
                                            } else {
                                              _model.contadorComida =
                                                  _model.contadorComida + -1;
                                              safeSetState(() {});
                                              FFAppState().intoSalsas = 'no';
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
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Container(
                                                    width: 75.0,
                                                    height: 75.0,
                                                    decoration: BoxDecoration(
                                                      color: FFAppState()
                                                                  .intoSalsas ==
                                                              'si'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .azulPerm
                                                          : Color(0x00000000),
                                                      shape: BoxShape.circle,
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
                                                          shape:
                                                              BoxShape.circle,
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
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'wvg3v7zq' /* Salsas y Condimentos */,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (FFAppState().intoBebidas ==
                                                'no') {
                                              _model.contadorComida =
                                                  _model.contadorComida + 1;
                                              safeSetState(() {});
                                              FFAppState().intoBebidas = 'si';
                                              safeSetState(() {});
                                            } else {
                                              _model.contadorComida =
                                                  _model.contadorComida + -1;
                                              safeSetState(() {});
                                              FFAppState().intoBebidas = 'no';
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
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Container(
                                                    width: 75.0,
                                                    height: 75.0,
                                                    decoration: BoxDecoration(
                                                      color: FFAppState()
                                                                  .intoBebidas ==
                                                              'si'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .azulPerm
                                                          : Color(0x00000000),
                                                      shape: BoxShape.circle,
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
                                                          shape:
                                                              BoxShape.circle,
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
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'e29cj0bt' /* Bebidas */,
                                                    ),
                                                    textAlign: TextAlign.center,
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
                                    editandoDiario: FFAppState().editandoDiario,
                                  );

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
                                  } else {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () =>
                                              FocusScope.of(context).unfocus(),
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: ModalSinComidaWidget(),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  }

                                  safeSetState(() {});
                                },
                                text: FFLocalizations.of(context).getText(
                                  '6lcxtsj7' /* Continuar */,
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
                                    frutoSecos: FFAppState().intoFrutosSecos,
                                    salsas: FFAppState().intoSalsas,
                                    bebidas: FFAppState().intoBebidas,
                                  );

                                  _model.malestarAyer = null;
                                  _model.contadorComida = 0;
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
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'DIario guardado!',
                                        style: TextStyle(
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context).success,
                                    ),
                                  );

                                  context.pushNamed(
                                    'Home',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
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
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
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
                                  _model.apiIntoP1FCopy =
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
                                    frutoSecos: FFAppState().intoFrutosSecos,
                                    salsas: FFAppState().intoSalsas,
                                    bebidas: FFAppState().intoBebidas,
                                  );

                                  _model.malestarAyer = null;
                                  _model.contadorComida = 0;
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
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'DIario guardado!',
                                        style: TextStyle(
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context).success,
                                    ),
                                  );

                                  context.pushNamed(
                                    'Home',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
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
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
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
    );
  }
}
