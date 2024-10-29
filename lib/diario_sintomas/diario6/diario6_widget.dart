import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'diario6_model.dart';
export 'diario6_model.dart';

class Diario6Widget extends StatefulWidget {
  const Diario6Widget({super.key});

  @override
  State<Diario6Widget> createState() => _Diario6WidgetState();
}

class _Diario6WidgetState extends State<Diario6Widget> {
  late Diario6Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Diario6Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiCarga6 = await DiarioSeisCargaCall.call(
        diarioId: FFAppState().diarioId,
      );

      _model.contador = DiarioSeisCargaCall.contador(
        (_model.apiCarga6?.jsonBody ?? ''),
      )!;
      _model.desencadenante = DiarioSeisCargaCall.desencadenante(
        (_model.apiCarga6?.jsonBody ?? ''),
      );
      _model.solucion = DiarioSeisCargaCall.solucion(
        (_model.apiCarga6?.jsonBody ?? ''),
      );
      FFAppState().diarioMed1 = DiarioSeisCargaCall.med1(
        (_model.apiCarga6?.jsonBody ?? ''),
      )!;
      FFAppState().diarioMed2 = DiarioSeisCargaCall.med2(
        (_model.apiCarga6?.jsonBody ?? ''),
      )!;
      FFAppState().diarioVit = DiarioSeisCargaCall.vit(
        (_model.apiCarga6?.jsonBody ?? ''),
      )!;
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

    return FutureBuilder<ApiCallResponse>(
      future: DiarioSeisCargaCall.call(
        diarioId: FFAppState().diarioId,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitCircle(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        final diario6DiarioSeisCargaResponse = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
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
                  context.pushNamed(
                    'diario5',
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
                    '2xk0afml' /* Diario de Síntomas */,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: LinearPercentIndicator(
                                            percent: 0.9,
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
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'gbikkr5a' /* 90% */,
                                              ),
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
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '8r9mynpc' /* ¿Cuál crees que fue el desenca... */,
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: FutureBuilder<ApiCallResponse>(
                              future: DespDesencadenantesCall.call(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: SpinKitCircle(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 50.0,
                                      ),
                                    ),
                                  );
                                }
                                final dropDownDesencadenaDespDesencadenantesResponse =
                                    snapshot.data!;

                                return FlutterFlowDropDown<String>(
                                  controller: _model
                                          .dropDownDesencadenaValueController ??=
                                      FormFieldController<String>(
                                    _model.dropDownDesencadenaValue ??=
                                        DiarioSeisCargaCall.desencadenante(
                                      diario6DiarioSeisCargaResponse.jsonBody,
                                    ),
                                  ),
                                  options: FFLocalizations.of(context)
                                              .languageCode ==
                                          'en'
                                      ? DespDesencadenantesCall.en(
                                          dropDownDesencadenaDespDesencadenantesResponse
                                              .jsonBody,
                                        )!
                                      : DespDesencadenantesCall.es(
                                          dropDownDesencadenaDespDesencadenantesResponse
                                              .jsonBody,
                                        )!,
                                  onChanged: (val) async {
                                    safeSetState(() =>
                                        _model.dropDownDesencadenaValue = val);
                                    _model.contador = _model.contador + 1;
                                    _model.desencadenante =
                                        _model.dropDownDesencadenaValue;
                                    safeSetState(() {});
                                  },
                                  width: 350.0,
                                  height: 50.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    '2dt1li0h' /* Selecciona tu respuesta */,
                                  ),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .rellenoCampo2,
                                  elevation: 2.0,
                                  borderColor: Colors.transparent,
                                  borderWidth: 2.0,
                                  borderRadius: 12.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'xcib687s' /* ¿Qué solución crees que te ha ... */,
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
                                0.0, 10.0, 0.0, 0.0),
                            child: FutureBuilder<ApiCallResponse>(
                              future: DespSolucionesCall.call(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: SpinKitCircle(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 50.0,
                                      ),
                                    ),
                                  );
                                }
                                final dropDownAyudaDespSolucionesResponse =
                                    snapshot.data!;

                                return FlutterFlowDropDown<String>(
                                  controller:
                                      _model.dropDownAyudaValueController ??=
                                          FormFieldController<String>(
                                    _model.dropDownAyudaValue ??=
                                        DiarioSeisCargaCall.solucion(
                                      diario6DiarioSeisCargaResponse.jsonBody,
                                    ),
                                  ),
                                  options: FFLocalizations.of(context)
                                              .languageCode ==
                                          'en'
                                      ? DespSolucionesCall.en(
                                          dropDownAyudaDespSolucionesResponse
                                              .jsonBody,
                                        )!
                                      : DespSolucionesCall.es(
                                          dropDownAyudaDespSolucionesResponse
                                              .jsonBody,
                                        )!,
                                  onChanged: (val) async {
                                    safeSetState(
                                        () => _model.dropDownAyudaValue = val);
                                    _model.contador = _model.contador + 1;
                                    _model.solucion = _model.dropDownAyudaValue;
                                    safeSetState(() {});
                                  },
                                  width: 350.0,
                                  height: 50.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    'gqmahh1w' /* Selecciona tu respuesta */,
                                  ),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .rellenoCampo2,
                                  elevation: 2.0,
                                  borderColor: Colors.transparent,
                                  borderWidth: 2.0,
                                  borderRadius: 12.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'wcrc1vlq' /* Indica si hoy has tomado: */,
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
                                0.0, 10.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: BoxDecoration(),
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
                                      if (FFAppState().diarioMed1 == 'no') {
                                        FFAppState().diarioMed1 = 'si';
                                        safeSetState(() {});
                                      } else {
                                        FFAppState().diarioMed1 = 'no';
                                        safeSetState(() {});
                                      }
                                    },
                                    child: Container(
                                      width: 130.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: FFAppState().diarioMed1 == 'no'
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : FlutterFlowTheme.of(context)
                                                .secondary,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.flash_on_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            size: 50.0,
                                          ),
                                          Flexible(
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'dkieffmg' /* Medicamentos
para el Dolor */
                                                ,
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
                                                        letterSpacing: 0.0,
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
                                      if (FFAppState().diarioMed2 == 'no') {
                                        FFAppState().diarioMed2 = 'si';
                                        safeSetState(() {});
                                      } else {
                                        FFAppState().diarioMed2 = 'no';
                                        safeSetState(() {});
                                      }
                                    },
                                    child: Container(
                                      width: 130.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: FFAppState().diarioMed2 == 'no'
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : FlutterFlowTheme.of(context)
                                                .secondary,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.medication_liquid,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            size: 50.0,
                                          ),
                                          Flexible(
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'wmqrsrjd' /* Otros
Medicamentos */
                                                ,
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
                                                        letterSpacing: 0.0,
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
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 1.0, 0.0, 0.0),
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
                                        if (FFAppState().diarioVit == 'no') {
                                          FFAppState().diarioVit = 'si';
                                          safeSetState(() {});
                                        } else {
                                          FFAppState().diarioVit = 'no';
                                          safeSetState(() {});
                                        }
                                      },
                                      child: Container(
                                        width: 130.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().diarioVit == 'no'
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : FlutterFlowTheme.of(context)
                                                  .secondary,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.group_work_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              size: 50.0,
                                            ),
                                            Flexible(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '3ud5ufia' /* Suplementos */,
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
                                                        letterSpacing: 0.0,
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
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: (_model.contador < 2)
                                      ? null
                                      : () async {
                                          _model.apiP6 =
                                              await DiarioSeisCall.call(
                                            authToken: FFAppState().authToken,
                                            diarioId: FFAppState().diarioId,
                                            desencadenante:
                                                _model.desencadenante,
                                            solucion: _model.solucion,
                                            med1: FFAppState().diarioMed1,
                                            med2: FFAppState().diarioMed2,
                                            vit: FFAppState().diarioVit,
                                            contador: _model.contador,
                                            editando:
                                                FFAppState().editandoDiario,
                                          );

                                          if ((FFAppState().diarioMed1 == 'si') ||
                                              (FFAppState().diarioMed2 ==
                                                  'si') ||
                                              (FFAppState().diarioVit ==
                                                  'si')) {
                                            _model.apiUltMeds =
                                                await DiarioUltimosMedsCall
                                                    .call(
                                              authToken: FFAppState().authToken,
                                            );

                                            FFAppState().diarioUltimoMed1 =
                                                DiarioUltimosMedsCall.med1(
                                              (_model.apiUltMeds?.jsonBody ??
                                                  ''),
                                            )!;
                                            FFAppState().diarioUltimoMed2 =
                                                DiarioUltimosMedsCall.med2(
                                              (_model.apiUltMeds?.jsonBody ??
                                                  ''),
                                            )!;
                                            FFAppState().diarioUltimoSup1 =
                                                DiarioUltimosMedsCall.sup1(
                                              (_model.apiUltMeds?.jsonBody ??
                                                  ''),
                                            )!;
                                            FFAppState().diarioUltimoSup2 =
                                                DiarioUltimosMedsCall.sup2(
                                              (_model.apiUltMeds?.jsonBody ??
                                                  ''),
                                            )!;
                                            FFAppState().diarioUltimoSup3 =
                                                DiarioUltimosMedsCall.sup3(
                                              (_model.apiUltMeds?.jsonBody ??
                                                  ''),
                                            )!;
                                            FFAppState()
                                                .tmpCantidadSuplementos = 0;
                                          }
                                          if (FFAppState().diarioMed1 == 'si') {
                                            context.pushNamed(
                                              'diario7',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                ),
                                              },
                                            );
                                          } else {
                                            if (FFAppState().diarioMed2 ==
                                                'si') {
                                              context.pushNamed(
                                                'diario8',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                  ),
                                                },
                                              );
                                            } else {
                                              if (FFAppState().diarioVit ==
                                                  'si') {
                                                context.pushNamed('diario9');
                                              } else {
                                                _model.apiResultyly =
                                                    await DiarioFinalizaCall
                                                        .call(
                                                  authToken:
                                                      FFAppState().authToken,
                                                  idDiario:
                                                      FFAppState().diarioId,
                                                );

                                                context.pushNamed(
                                                  'diarioFin',
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
                                                );
                                              }
                                            }
                                          }

                                          safeSetState(() {});
                                        },
                                  text: FFLocalizations.of(context).getText(
                                    '3jwtdya8' /* Continuar */,
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
                                    onPressed: (_model.contador < 2)
                                        ? null
                                        : () async {
                                            unawaited(
                                              () async {
                                                _model.apiP6F =
                                                    await DiarioSeisCall.call(
                                                  authToken:
                                                      FFAppState().authToken,
                                                  diarioId:
                                                      FFAppState().diarioId,
                                                  desencadenante:
                                                      _model.desencadenante,
                                                  solucion: _model.solucion,
                                                  med1: FFAppState().diarioMed1,
                                                  med2: FFAppState().diarioMed2,
                                                  vit: FFAppState().diarioVit,
                                                  contador: _model.contador,
                                                  editando: FFAppState()
                                                      .editandoDiario,
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
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );

                                            FFAppState().deleteDiarioId();
                                            FFAppState().diarioId = 0;

                                            FFAppState().deleteDiarioDolor();
                                            FFAppState().diarioDolor = 'no';

                                            FFAppState().deleteDiarioMed1();
                                            FFAppState().diarioMed1 = 'no';

                                            FFAppState().deleteDiarioMed2();
                                            FFAppState().diarioMed2 = 'no';

                                            FFAppState().deleteDiarioVit();
                                            FFAppState().diarioVit = 'no';

                                            FFAppState()
                                                .deleteDiarioUltimoMed1();
                                            FFAppState().diarioUltimoMed1 = '';

                                            FFAppState()
                                                .deleteDiarioUltimoMed2();
                                            FFAppState().diarioUltimoMed2 = '';

                                            FFAppState()
                                                .deleteDiarioUltimoSup1();
                                            FFAppState().diarioUltimoSup1 = '';

                                            FFAppState()
                                                .deleteDiarioUltimoSup2();
                                            FFAppState().diarioUltimoSup2 = '';

                                            FFAppState()
                                                .deleteDiarioUltimoSup3();
                                            FFAppState().diarioUltimoSup3 = '';

                                            safeSetState(() {});
                                          },
                                    text: FFLocalizations.of(context).getText(
                                      'gd5vpe2a' /* Finalizar más tarde */,
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
                          if (FFAppState().editandoDiario == 'si')
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 30.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FFButtonWidget(
                                    onPressed: (_model.contador < 2)
                                        ? null
                                        : () async {
                                            unawaited(
                                              () async {
                                                _model.apiP6F2 =
                                                    await DiarioSeisCall.call(
                                                  authToken:
                                                      FFAppState().authToken,
                                                  diarioId:
                                                      FFAppState().diarioId,
                                                  desencadenante:
                                                      _model.desencadenante,
                                                  solucion: _model.solucion,
                                                  med1: FFAppState().diarioMed1,
                                                  med2: FFAppState().diarioMed2,
                                                  vit: FFAppState().diarioVit,
                                                  contador: _model.contador,
                                                  editando: FFAppState()
                                                      .editandoDiario,
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
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );

                                            FFAppState().deleteDiarioId();
                                            FFAppState().diarioId = 0;

                                            FFAppState().deleteDiarioDolor();
                                            FFAppState().diarioDolor = 'no';

                                            FFAppState().deleteDiarioMed1();
                                            FFAppState().diarioMed1 = 'no';

                                            FFAppState().deleteDiarioMed2();
                                            FFAppState().diarioMed2 = 'no';

                                            FFAppState().deleteDiarioVit();
                                            FFAppState().diarioVit = 'no';

                                            FFAppState()
                                                .deleteDiarioUltimoMed1();
                                            FFAppState().diarioUltimoMed1 = '';

                                            FFAppState()
                                                .deleteDiarioUltimoMed2();
                                            FFAppState().diarioUltimoMed2 = '';

                                            FFAppState()
                                                .deleteDiarioUltimoSup1();
                                            FFAppState().diarioUltimoSup1 = '';

                                            FFAppState()
                                                .deleteDiarioUltimoSup2();
                                            FFAppState().diarioUltimoSup2 = '';

                                            FFAppState()
                                                .deleteDiarioUltimoSup3();
                                            FFAppState().diarioUltimoSup3 = '';

                                            safeSetState(() {});
                                          },
                                    text: FFLocalizations.of(context).getText(
                                      'nswpuh9p' /* Guardar */,
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
