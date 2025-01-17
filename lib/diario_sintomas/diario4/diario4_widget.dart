import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'diario4_model.dart';
export 'diario4_model.dart';

class Diario4Widget extends StatefulWidget {
  const Diario4Widget({super.key});

  @override
  State<Diario4Widget> createState() => _Diario4WidgetState();
}

class _Diario4WidgetState extends State<Diario4Widget> {
  late Diario4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Diario4Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiCarga4 = await DiarioCuatroCargaCall.call(
        diarioId: FFAppState().diarioId,
      );

      _model.contador = DiarioCuatroCargaCall.contadorP3(
        (_model.apiCarga4?.jsonBody ?? ''),
      )!;
      _model.trabajo = DiarioCuatroCargaCall.trabajo(
        (_model.apiCarga4?.jsonBody ?? ''),
      )!;
      _model.estudios = DiarioCuatroCargaCall.estudios(
        (_model.apiCarga4?.jsonBody ?? ''),
      )!;
      _model.familia = DiarioCuatroCargaCall.familia(
        (_model.apiCarga4?.jsonBody ?? ''),
      )!;
      _model.hogar = DiarioCuatroCargaCall.hogar(
        (_model.apiCarga4?.jsonBody ?? ''),
      )!;
      _model.social = DiarioCuatroCargaCall.social(
        (_model.apiCarga4?.jsonBody ?? ''),
      )!;
      _model.ejercicio = DiarioCuatroCargaCall.ejercicio(
        (_model.apiCarga4?.jsonBody ?? ''),
      )!;
      _model.caminar = DiarioCuatroCargaCall.caminar(
        (_model.apiCarga4?.jsonBody ?? ''),
      )!;
      _model.leer = _model.leer;
      _model.higiene = DiarioCuatroCargaCall.higiene(
        (_model.apiCarga4?.jsonBody ?? ''),
      )!;
      _model.otros = _model.otros;
      safeSetState(() {});
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
                if (FFAppState().diarioDolor == 'si') {
                  context.pushNamed(
                    'diario3',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                } else {
                  context.pushNamed(
                    'diario2',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                }
              },
            ),
            title: Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'zkqsl9j5' /* Diario de Síntomas */,
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
                                          percent: 0.6,
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
                                            FFLocalizations.of(context).getText(
                                              '2bxylyci' /* 60% */,
                                            ),
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '79sljha7' /* ¿Qué actividades has podido ha... */,
                            ),
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
                              10.0, 20.0, 10.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).secondary,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
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
                                            if (_model.trabajo == 'no') {
                                              _model.trabajo = 'si';
                                              _model.contador =
                                                  _model.contador + 1;
                                              _model.cama = 'no';
                                              safeSetState(() {});
                                            } else {
                                              _model.trabajo = 'no';
                                              _model.contador =
                                                  _model.contador + -1;
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
                                                      color: _model.trabajo ==
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
                                                          'assets/images/trabajo.png',
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '5ovf98ks' /* Trabajo */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: _model.trabajo ==
                                                                'si'
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : FlutterFlowTheme
                                                                    .of(context)
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
                                            if (_model.estudios == 'no') {
                                              _model.contador =
                                                  _model.contador + 1;
                                              _model.estudios = 'si';
                                              _model.cama = 'no';
                                              safeSetState(() {});
                                            } else {
                                              _model.contador =
                                                  _model.contador + -1;
                                              _model.estudios = 'no';
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
                                                      color: _model.estudios ==
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
                                                          'assets/images/estudio.png',
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'l9tz7clv' /* Estudios */,
                                                  ),
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: _model
                                                                        .estudios ==
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
                                            if (_model.familia == 'no') {
                                              _model.contador =
                                                  _model.contador + 1;
                                              _model.familia = 'si';
                                              _model.cama = 'no';
                                              safeSetState(() {});
                                            } else {
                                              _model.contador =
                                                  _model.contador + -1;
                                              _model.familia = 'no';
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
                                                      color: _model.familia ==
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
                                                          'assets/images/familia.png',
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
                                                      'ak1y2xw1' /* Tiempo en
familia */
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
                                                              color: _model
                                                                          .familia ==
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
                                            if (_model.hogar == 'no') {
                                              _model.contador =
                                                  _model.contador + 1;
                                              _model.hogar = 'si';
                                              _model.cama = 'no';
                                              safeSetState(() {});
                                            } else {
                                              _model.contador =
                                                  _model.contador + -1;
                                              _model.hogar = 'no';
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
                                                      color: _model.hogar ==
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
                                                          'assets/images/hogar.png',
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
                                                      '12gvsql7' /* Tareas del
Hogar */
                                                      ,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: _model.hogar ==
                                                                  'si'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .primary
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                          letterSpacing: 0.0,
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
                                            if (_model.social == 'no') {
                                              _model.contador =
                                                  _model.contador + 1;
                                              _model.social = 'si';
                                              _model.cama = 'no';
                                              safeSetState(() {});
                                            } else {
                                              _model.contador =
                                                  _model.contador + -1;
                                              _model.social = 'no';
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
                                                      color: _model.social ==
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
                                                          'assets/images/social.png',
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '2c0jkwki' /* Socializar */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: _model.social ==
                                                                'si'
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : FlutterFlowTheme
                                                                    .of(context)
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
                                            if (_model.ejercicio == 'no') {
                                              _model.contador =
                                                  _model.contador + 1;
                                              _model.ejercicio = 'si';
                                              _model.cama = 'no';
                                              safeSetState(() {});
                                            } else {
                                              _model.contador =
                                                  _model.contador + -1;
                                              _model.ejercicio = 'no';
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
                                                      color: _model.ejercicio ==
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
                                                          'assets/images/ejercicio.png',
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
                                                      'seckctd0' /* Ejercicio
Físico */
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
                                                              color: _model
                                                                          .ejercicio ==
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
                                            if (_model.caminar == 'no') {
                                              _model.contador =
                                                  _model.contador + 1;
                                              _model.caminar = 'si';
                                              _model.cama = 'no';
                                              safeSetState(() {});
                                            } else {
                                              _model.contador =
                                                  _model.contador + -1;
                                              _model.caminar = 'no';
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
                                                      color: _model.caminar ==
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
                                                          'assets/images/caminar.png',
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
                                                      'mpinzuo8' /* Caminar */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: _model
                                                                          .caminar ==
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
                                            if (_model.leer == 'no') {
                                              _model.contador =
                                                  _model.contador + 1;
                                              _model.leer = 'si';
                                              _model.cama = 'no';
                                              safeSetState(() {});
                                            } else {
                                              _model.contador =
                                                  _model.contador + -1;
                                              _model.leer = 'no';
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
                                                      color: _model.leer == 'si'
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
                                                          'assets/images/leer.png',
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'wrwrfz1n' /* Leer */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: _model.leer ==
                                                                'si'
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : FlutterFlowTheme
                                                                    .of(context)
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
                                            if (_model.higiene == 'no') {
                                              _model.contador =
                                                  _model.contador + 1;
                                              _model.higiene = 'si';
                                              _model.cama = 'no';
                                              safeSetState(() {});
                                            } else {
                                              _model.contador =
                                                  _model.contador + -1;
                                              _model.higiene = 'no';
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
                                                      color: _model.higiene ==
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
                                                          'assets/images/duche.png',
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
                                                      'wm2s0kc4' /* Hábitos de 
Higiene Pers. */
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
                                                              color: _model
                                                                          .higiene ==
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
                                            if (_model.otros == 'no') {
                                              _model.contador =
                                                  _model.contador + 1;
                                              _model.otros = 'si';
                                              _model.cama = 'no';
                                              safeSetState(() {});
                                            } else {
                                              _model.contador =
                                                  _model.contador + -1;
                                              _model.otros = 'no';
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
                                                      color: _model.otros ==
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
                                                          'assets/images/otros.png',
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
                                                      'szikwiu8' /* Otros */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: _model.otros ==
                                                                  'si'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .primary
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                          letterSpacing: 0.0,
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
                                            if (_model.cama == 'no') {
                                              _model.contador =
                                                  _model.contador + 1;
                                              _model.cama = 'si';
                                              _model.trabajo = 'no';
                                              _model.estudios = 'no';
                                              _model.familia = 'no';
                                              _model.hogar = 'no';
                                              _model.social = 'no';
                                              _model.ejercicio = 'no';
                                              _model.caminar = 'no';
                                              _model.leer = 'no';
                                              _model.higiene = 'no';
                                              _model.otros = 'no';
                                              safeSetState(() {});
                                            } else {
                                              _model.contador =
                                                  _model.contador + -1;
                                              _model.cama = 'no';
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
                                                      color: _model.cama == 'si'
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
                                                          'assets/images/cama.png',
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
                                                      'cubr0ze1' /* Ninguna */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: _model.otros ==
                                                                  'si'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .primary
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                          letterSpacing: 0.0,
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FFButtonWidget(
                                onPressed: (_model.contador < 1)
                                    ? null
                                    : () async {
                                        _model.apiP3 =
                                            await DiarioCuatroCall.call(
                                          diarioId: FFAppState().diarioId,
                                          authToken: FFAppState().authToken,
                                          trabajo: _model.trabajo,
                                          estudios: _model.estudios,
                                          familia: _model.familia,
                                          hogar: _model.hogar,
                                          social: _model.social,
                                          ejercicio: _model.ejercicio,
                                          caminar: _model.caminar,
                                          leer: _model.leer,
                                          higiene: _model.higiene,
                                          otros: _model.otros,
                                          contador: _model.contador,
                                          editando: FFAppState().editandoDiario,
                                          cama: _model.cama,
                                        );

                                        context.pushNamed(
                                          'diario5',
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
                                  '3p65jwe9' /* Continuar */,
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
                                  onPressed: (_model.contador < 1)
                                      ? null
                                      : () async {
                                          unawaited(
                                            () async {
                                              _model.apiP3F =
                                                  await DiarioCuatroCall.call(
                                                diarioId: FFAppState().diarioId,
                                                authToken:
                                                    FFAppState().authToken,
                                                trabajo: _model.trabajo,
                                                estudios: _model.estudios,
                                                familia: _model.familia,
                                                hogar: _model.hogar,
                                                social: _model.social,
                                                ejercicio: _model.ejercicio,
                                                caminar: _model.caminar,
                                                leer: _model.leer,
                                                higiene: _model.higiene,
                                                otros: _model.otros,
                                                contador: _model.contador,
                                                editando:
                                                    FFAppState().editandoDiario,
                                                cama: _model.cama,
                                              );
                                            }(),
                                          );
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Diario guardado!',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .success,
                                            ),
                                          );
                                          FFAppState().deleteDiarioId();
                                          FFAppState().diarioId = 0;

                                          context.pushNamed(
                                            'Home',
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

                                          safeSetState(() {});
                                        },
                                  text: FFLocalizations.of(context).getText(
                                    'fraphe6a' /* Finalizar más tarde */,
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
                        if (FFAppState().editandoDiario == 'si')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 30.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: (_model.contador < 1)
                                      ? null
                                      : () async {
                                          unawaited(
                                            () async {
                                              _model.apiP3F2 =
                                                  await DiarioCuatroCall.call(
                                                diarioId: FFAppState().diarioId,
                                                authToken:
                                                    FFAppState().authToken,
                                                trabajo: _model.trabajo,
                                                estudios: _model.estudios,
                                                familia: _model.familia,
                                                hogar: _model.hogar,
                                                social: _model.social,
                                                ejercicio: _model.ejercicio,
                                                caminar: _model.caminar,
                                                leer: _model.leer,
                                                higiene: _model.higiene,
                                                otros: _model.otros,
                                                contador: _model.contador,
                                                editando:
                                                    FFAppState().editandoDiario,
                                                cama: _model.cama,
                                              );
                                            }(),
                                          );
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Diario guardado!',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .success,
                                            ),
                                          );
                                          FFAppState().deleteDiarioId();
                                          FFAppState().diarioId = 0;

                                          context.pushNamed(
                                            'Home',
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

                                          safeSetState(() {});
                                        },
                                  text: FFLocalizations.of(context).getText(
                                    'jtp7lqny' /* Guardar */,
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
