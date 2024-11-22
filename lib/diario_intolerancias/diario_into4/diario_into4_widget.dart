import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'diario_into4_model.dart';
export 'diario_into4_model.dart';

class DiarioInto4Widget extends StatefulWidget {
  const DiarioInto4Widget({super.key});

  @override
  State<DiarioInto4Widget> createState() => _DiarioInto4WidgetState();
}

class _DiarioInto4WidgetState extends State<DiarioInto4Widget> {
  late DiarioInto4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiarioInto4Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiCarga4 = await DiarioIntoleranciasCuatroCargaCall.call(
        diarioId: FFAppState().diarioIntoId,
      );

      if (FFAppState().momento == 1) {
        _model.dolor1 = DiarioIntoleranciasCuatroCargaCall.desayunoDolor1(
          (_model.apiCarga4?.jsonBody ?? ''),
        )!;
        _model.dolor2 = DiarioIntoleranciasCuatroCargaCall.desayunoDolor2(
          (_model.apiCarga4?.jsonBody ?? ''),
        )!;
        _model.dolor3 = DiarioIntoleranciasCuatroCargaCall.desayunoDolor3(
          (_model.apiCarga4?.jsonBody ?? ''),
        )!;
        _model.dolor4 = DiarioIntoleranciasCuatroCargaCall.desayunoDolor4(
          (_model.apiCarga4?.jsonBody ?? ''),
        )!;
        _model.dolor5 = DiarioIntoleranciasCuatroCargaCall.desayunoDolor5(
          (_model.apiCarga4?.jsonBody ?? ''),
        )!;
        _model.dolor6 = DiarioIntoleranciasCuatroCargaCall.desayunoDolor6(
          (_model.apiCarga4?.jsonBody ?? ''),
        )!;
        _model.dolor7 = DiarioIntoleranciasCuatroCargaCall.desayunoDolor7(
          (_model.apiCarga4?.jsonBody ?? ''),
        )!;
        _model.dolor8 = DiarioIntoleranciasCuatroCargaCall.desayunoDolor8(
          (_model.apiCarga4?.jsonBody ?? ''),
        )!;
        _model.dolor9 = DiarioIntoleranciasCuatroCargaCall.desayunoDolor9(
          (_model.apiCarga4?.jsonBody ?? ''),
        )!;
        _model.contador = DiarioIntoleranciasCuatroCargaCall.contadorDesayuno(
          (_model.apiCarga4?.jsonBody ?? ''),
        )!;
        safeSetState(() {});
      } else {
        if (FFAppState().momento == 2) {
          _model.dolor1 = DiarioIntoleranciasCuatroCargaCall.comidaDolor1(
            (_model.apiCarga4?.jsonBody ?? ''),
          )!;
          _model.dolor2 = DiarioIntoleranciasCuatroCargaCall.comidaDolor2(
            (_model.apiCarga4?.jsonBody ?? ''),
          )!;
          _model.dolor3 = DiarioIntoleranciasCuatroCargaCall.comidaDolor3(
            (_model.apiCarga4?.jsonBody ?? ''),
          )!;
          _model.dolor4 = DiarioIntoleranciasCuatroCargaCall.comidaDolor4(
            (_model.apiCarga4?.jsonBody ?? ''),
          )!;
          _model.dolor5 = DiarioIntoleranciasCuatroCargaCall.comidaDolor5(
            (_model.apiCarga4?.jsonBody ?? ''),
          )!;
          _model.dolor6 = DiarioIntoleranciasCuatroCargaCall.comidaDolor6(
            (_model.apiCarga4?.jsonBody ?? ''),
          )!;
          _model.dolor7 = DiarioIntoleranciasCuatroCargaCall.comidaDolor7(
            (_model.apiCarga4?.jsonBody ?? ''),
          )!;
          _model.dolor8 = DiarioIntoleranciasCuatroCargaCall.comidaDolor8(
            (_model.apiCarga4?.jsonBody ?? ''),
          )!;
          _model.dolor9 = DiarioIntoleranciasCuatroCargaCall.comidaDolor9(
            (_model.apiCarga4?.jsonBody ?? ''),
          )!;
          _model.contador = DiarioIntoleranciasCuatroCargaCall.contadorComida(
            (_model.apiCarga4?.jsonBody ?? ''),
          )!;
          safeSetState(() {});
        } else {
          if (FFAppState().momento == 3) {
            _model.dolor1 = DiarioIntoleranciasCuatroCargaCall.cenaDolor1(
              (_model.apiCarga4?.jsonBody ?? ''),
            )!;
            _model.dolor2 = DiarioIntoleranciasCuatroCargaCall.cenaDolor2(
              (_model.apiCarga4?.jsonBody ?? ''),
            )!;
            _model.dolor3 = DiarioIntoleranciasCuatroCargaCall.cenaDolor3(
              (_model.apiCarga4?.jsonBody ?? ''),
            )!;
            _model.dolor4 = DiarioIntoleranciasCuatroCargaCall.cenaDolor4(
              (_model.apiCarga4?.jsonBody ?? ''),
            )!;
            _model.dolor5 = DiarioIntoleranciasCuatroCargaCall.cenaDolor5(
              (_model.apiCarga4?.jsonBody ?? ''),
            )!;
            _model.dolor6 = DiarioIntoleranciasCuatroCargaCall.cenaDolor6(
              (_model.apiCarga4?.jsonBody ?? ''),
            )!;
            _model.dolor7 = DiarioIntoleranciasCuatroCargaCall.cenaDolor7(
              (_model.apiCarga4?.jsonBody ?? ''),
            )!;
            _model.dolor8 = DiarioIntoleranciasCuatroCargaCall.cenaDolor8(
              (_model.apiCarga4?.jsonBody ?? ''),
            )!;
            _model.dolor9 = DiarioIntoleranciasCuatroCargaCall.cenaDolor9(
              (_model.apiCarga4?.jsonBody ?? ''),
            )!;
            _model.contador = DiarioIntoleranciasCuatroCargaCall.contadorCena(
              (_model.apiCarga4?.jsonBody ?? ''),
            )!;
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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).background,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
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
                _model.contador = 0;
                _model.dolor1 = 'no';
                _model.dolor2 = 'no';
                _model.dolor3 = 'no';
                _model.dolor4 = 'no';
                _model.dolor5 = 'no';
                _model.dolor6 = 'no';
                _model.dolor7 = 'no';
                _model.dolor8 = 'no';
                _model.dolor9 = 'no';
                safeSetState(() {});

                context.pushNamed(
                  'diario_Into3',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
            ),
            title: Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'z4gyjnn4' /* Diario de Intolerancias */,
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
            centerTitle: true,
            elevation: 2.0,
          ),
          body: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
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
                                            return 0.34;
                                          } else if (FFAppState().momento ==
                                              2) {
                                            return 0.66;
                                          } else {
                                            return 0.100;
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
                                              return '34%';
                                            } else if (FFAppState().momento ==
                                                2) {
                                              return '66%';
                                            } else {
                                              return '100%';
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
                      Flexible(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 10.0, 15.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '1uwt7r87' /* Has indicado que tuviste Dolor... */,
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 10.0),
                                child: Container(
                                  width: 335.0,
                                  height: 380.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset(
                                        'assets/images/abdomen.png',
                                      ).image,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Opacity(
                                        opacity:
                                            _model.dolor1 == 'si' ? 1.0 : 0.0,
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-0.9, -0.6),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (_model.dolor1 == 'no') {
                                                _model.dolor1 = 'si';
                                                _model.contador =
                                                    _model.contador + 1;
                                                safeSetState(() {});
                                              } else {
                                                _model.dolor1 = 'no';
                                                _model.contador =
                                                    _model.contador + -1;
                                                safeSetState(() {});
                                              }
                                            },
                                            child: Container(
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .suenoMal,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'q9wg57om' /* 1 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity:
                                            _model.dolor2 == 'si' ? 1.0 : 0.0,
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-0.02, -0.6),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (_model.dolor2 == 'no') {
                                                _model.contador =
                                                    _model.contador + 1;
                                                _model.dolor2 = 'si';
                                                safeSetState(() {});
                                              } else {
                                                _model.contador =
                                                    _model.contador + -1;
                                                _model.dolor2 = 'no';
                                                safeSetState(() {});
                                              }
                                            },
                                            child: Container(
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .suenoMal,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'psmw812w' /* 2 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity:
                                            _model.dolor3 == 'si' ? 1.0 : 0.0,
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.85, -0.6),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (_model.dolor3 == 'no') {
                                                _model.contador =
                                                    _model.contador + 1;
                                                _model.dolor3 = 'si';
                                                safeSetState(() {});
                                              } else {
                                                _model.contador =
                                                    _model.contador + -1;
                                                _model.dolor3 = 'no';
                                                safeSetState(() {});
                                              }
                                            },
                                            child: Container(
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .suenoMal,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '87nplw07' /* 3 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity:
                                            _model.dolor4 == 'si' ? 1.0 : 0.0,
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-0.9, 0.2),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (_model.dolor4 == 'no') {
                                                _model.contador =
                                                    _model.contador + 1;
                                                _model.dolor4 = 'si';
                                                safeSetState(() {});
                                              } else {
                                                _model.contador =
                                                    _model.contador + -1;
                                                _model.dolor4 = 'no';
                                                safeSetState(() {});
                                              }
                                            },
                                            child: Container(
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .suenoMal,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    't2bsff45' /* 4 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity:
                                            _model.dolor5 == 'si' ? 1.0 : 0.0,
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-0.02, 0.2),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (_model.dolor5 == 'no') {
                                                _model.contador =
                                                    _model.contador + 1;
                                                _model.dolor5 = 'si';
                                                safeSetState(() {});
                                              } else {
                                                _model.contador =
                                                    _model.contador + -1;
                                                _model.dolor5 = 'no';
                                                safeSetState(() {});
                                              }
                                            },
                                            child: Container(
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .suenoMal,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ofekpx1y' /* 5 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity:
                                            _model.dolor6 == 'si' ? 1.0 : 0.0,
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.85, 0.2),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (_model.dolor6 == 'no') {
                                                _model.contador =
                                                    _model.contador + 1;
                                                _model.dolor6 = 'si';
                                                safeSetState(() {});
                                              } else {
                                                _model.contador =
                                                    _model.contador + -1;
                                                _model.dolor6 = 'no';
                                                safeSetState(() {});
                                              }
                                            },
                                            child: Container(
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .suenoMal,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'k0hgm49d' /* 6 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity:
                                            _model.dolor7 == 'si' ? 1.0 : 0.0,
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-0.9, 0.9),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (_model.dolor7 == 'no') {
                                                _model.contador =
                                                    _model.contador + 1;
                                                _model.dolor7 = 'si';
                                                safeSetState(() {});
                                              } else {
                                                _model.contador =
                                                    _model.contador + -1;
                                                _model.dolor7 = 'no';
                                                safeSetState(() {});
                                              }
                                            },
                                            child: Container(
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .suenoMal,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6ul4q5ey' /* 7 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity:
                                            _model.dolor8 == 'si' ? 1.0 : 0.0,
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-0.02, 0.9),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (_model.dolor8 == 'no') {
                                                _model.contador =
                                                    _model.contador + 1;
                                                _model.dolor8 = 'si';
                                                safeSetState(() {});
                                              } else {
                                                _model.contador =
                                                    _model.contador + -1;
                                                _model.dolor8 = 'no';
                                                safeSetState(() {});
                                              }
                                            },
                                            child: Container(
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .suenoMal,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'qivh6ty7' /* 8 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity:
                                            _model.dolor9 == 'si' ? 1.0 : 0.0,
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.85, 0.9),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (_model.dolor9 == 'no') {
                                                _model.contador =
                                                    _model.contador + 1;
                                                _model.dolor9 = 'si';
                                                safeSetState(() {});
                                              } else {
                                                _model.contador =
                                                    _model.contador + -1;
                                                _model.dolor9 = 'no';
                                                safeSetState(() {});
                                              }
                                            },
                                            child: Container(
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .suenoMal,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'uvcmzina' /* 9 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ),
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
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: (_model.contador == 0)
                                  ? null
                                  : () async {
                                      _model.apiResultdl2 =
                                          await DiarioIntoleranciasCuatroCall
                                              .call(
                                        authToken: FFAppState().authToken,
                                        diarioId: FFAppState().diarioIntoId,
                                        momento: FFAppState().momento,
                                        dolor1: _model.dolor1,
                                        dolor2: _model.dolor2,
                                        dolor3: _model.dolor3,
                                        dolor4: _model.dolor4,
                                        dolor5: _model.dolor5,
                                        dolor6: _model.dolor6,
                                        dolor7: _model.dolor7,
                                        dolor8: _model.dolor8,
                                        dolor9: _model.dolor9,
                                        editando: FFAppState().editandoDiario,
                                        contador: _model.contador,
                                      );

                                      if (FFAppState().momento < 3) {
                                        FFAppState().momento =
                                            FFAppState().momento + 1;
                                        safeSetState(() {});

                                        context.pushNamed(
                                          'diario_Into1',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                            ),
                                          },
                                        );
                                      } else {
                                        _model.apiFIn3 =
                                            await IntoleranciaFinalizaDiarioCall
                                                .call(
                                          authToken: FFAppState().authToken,
                                          diarioId: FFAppState().diarioIntoId,
                                        );

                                        context.pushNamed(
                                          'diarioIntoFin',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                            ),
                                          },
                                        );
                                      }

                                      safeSetState(() {});
                                    },
                              text: FFLocalizations.of(context).getText(
                                'apbocexa' /* Continuar */,
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
                                disabledColor: FlutterFlowTheme.of(context)
                                    .botonDesactivado,
                                disabledTextColor:
                                    FlutterFlowTheme.of(context).accent4,
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (FFAppState().editandoDiario == 'no')
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 30.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FFButtonWidget(
                                onPressed: (_model.contador == 0)
                                    ? null
                                    : () async {
                                        unawaited(
                                          () async {
                                            _model.apiResultdl3 =
                                                await DiarioIntoleranciasCuatroCall
                                                    .call(
                                              authToken: FFAppState().authToken,
                                              diarioId:
                                                  FFAppState().diarioIntoId,
                                              momento: FFAppState().momento,
                                              dolor1: _model.dolor1,
                                              dolor2: _model.dolor2,
                                              dolor3: _model.dolor3,
                                              dolor4: _model.dolor4,
                                              dolor5: _model.dolor5,
                                              dolor6: _model.dolor6,
                                              dolor7: _model.dolor7,
                                              dolor8: _model.dolor8,
                                              dolor9: _model.dolor9,
                                              editando:
                                                  FFAppState().editandoDiario,
                                              contador: _model.contador,
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

                                        safeSetState(() {});
                                      },
                                text: FFLocalizations.of(context).getText(
                                  'xebjsduh' /* Finalizar más tarde */,
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
                                  disabledColor: FlutterFlowTheme.of(context)
                                      .botonDesactivado,
                                  disabledTextColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (FFAppState().editandoDiario == 'si')
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 30.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FFButtonWidget(
                                onPressed: (_model.contador == 0)
                                    ? null
                                    : () async {
                                        unawaited(
                                          () async {
                                            _model.apiResultdl4 =
                                                await DiarioIntoleranciasCuatroCall
                                                    .call(
                                              authToken: FFAppState().authToken,
                                              diarioId:
                                                  FFAppState().diarioIntoId,
                                              momento: FFAppState().momento,
                                              dolor1: _model.dolor1,
                                              dolor2: _model.dolor2,
                                              dolor3: _model.dolor3,
                                              dolor4: _model.dolor4,
                                              dolor5: _model.dolor5,
                                              dolor6: _model.dolor6,
                                              dolor7: _model.dolor7,
                                              dolor8: _model.dolor8,
                                              dolor9: _model.dolor9,
                                              editando:
                                                  FFAppState().editandoDiario,
                                              contador: _model.contador,
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

                                        safeSetState(() {});
                                      },
                                text: FFLocalizations.of(context).getText(
                                  'j5jusmzg' /* Guardar */,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
