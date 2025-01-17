import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'listado_model.dart';
export 'listado_model.dart';

class ListadoWidget extends StatefulWidget {
  const ListadoWidget({super.key});

  @override
  State<ListadoWidget> createState() => _ListadoWidgetState();
}

class _ListadoWidgetState extends State<ListadoWidget> {
  late ListadoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListadoModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.spinner = 'si';
      safeSetState(() {});
      _model.apiResult23g = await ResumenVariableMesCall.call();

      _model.mes = ResumenVariableMesCall.mes(
        (_model.apiResult23g?.jsonBody ?? ''),
      );
      _model.year = ResumenVariableMesCall.year(
        (_model.apiResult23g?.jsonBody ?? ''),
      );
      _model.fecha = getCurrentTimestamp;
      safeSetState(() {});
      await Future.delayed(const Duration(milliseconds: 1000));
      _model.mostrarLista = 'si';
      _model.spinner = 'no';
      safeSetState(() {});
      safeSetState(() => _model.apiRequestCompleter = null);
      await _model.waitForApiRequestCompleted();
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
            title: Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'oid5mtbq' /* Diarios */,
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
          body: Stack(
            children: [
              if (_model.spinner == 'no')
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FlutterFlowCalendar(
                          color: FlutterFlowTheme.of(context).secondary,
                          iconColor: FlutterFlowTheme.of(context).primary,
                          weekFormat: true,
                          weekStartsMonday: true,
                          initialDate: getCurrentTimestamp,
                          rowHeight: 65.0,
                          onChange: (DateTimeRange? newSelectedDate) async {
                            if (_model.calendarSelectedDay == newSelectedDate) {
                              return;
                            }
                            _model.calendarSelectedDay = newSelectedDate;
                            _model.fecha = null;
                            safeSetState(() {});
                            _model.fecha = _model.calendarSelectedDay?.start;
                            safeSetState(() {});
                            safeSetState(
                                () => _model.apiRequestCompleter = null);
                            await _model.waitForApiRequestCompleted();
                            safeSetState(() {});
                          },
                          titleStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Open Sans',
                                letterSpacing: 0.0,
                              ),
                          dayOfWeekStyle:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                  ),
                          dateStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                          selectedDateStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                          inactiveDateStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                      ],
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '7j47i75c' /* Selecciona un diario para ver ... */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (_model.mostrarLista == 'si')
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 20.0, 10.0, 0.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FutureBuilder<ApiCallResponse>(
                                          future: (_model
                                                      .apiRequestCompleter ??=
                                                  Completer<ApiCallResponse>()
                                                    ..complete(
                                                        ResumenListadoDiariosNewCall
                                                            .call(
                                                      fecha: _model.fecha
                                                          ?.toString(),
                                                      authToken: FFAppState()
                                                          .authToken,
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
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 50.0,
                                                  ),
                                                ),
                                              );
                                            }
                                            final listViewResumenListadoDiariosNewResponse =
                                                snapshot.data!;

                                            return Builder(
                                              builder: (context) {
                                                final childDiarios =
                                                    getJsonField(
                                                  listViewResumenListadoDiariosNewResponse
                                                      .jsonBody,
                                                  r'''$''',
                                                ).toList();
                                                if (childDiarios.isEmpty) {
                                                  return Image.asset(
                                                    'assets/images/empty.png',
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.5,
                                                  );
                                                }

                                                return ListView.separated(
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      childDiarios.length,
                                                  separatorBuilder: (_, __) =>
                                                      SizedBox(height: 15.0),
                                                  itemBuilder: (context,
                                                      childDiariosIndex) {
                                                    final childDiariosItem =
                                                        childDiarios[
                                                            childDiariosIndex];
                                                    return Container(
                                                      width: 360.0,
                                                      height: 65.0,
                                                      decoration: BoxDecoration(
                                                        color: () {
                                                          if (functions
                                                                  .parseJsonValueToInteger(
                                                                      getJsonField(
                                                                    childDiariosItem,
                                                                    r'''$.tipo_id''',
                                                                  ))
                                                                  .toString() ==
                                                              '1') {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .rosaHome;
                                                          } else if (functions
                                                                  .parseJsonValueToInteger(
                                                                      getJsonField(
                                                                    childDiariosItem,
                                                                    r'''$.tipo_id''',
                                                                  ))
                                                                  .toString() ==
                                                              '2') {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .resumen;
                                                          } else if (functions
                                                                  .parseJsonValueToInteger(
                                                                      getJsonField(
                                                                    childDiariosItem,
                                                                    r'''$.tipo_id''',
                                                                  ))
                                                                  .toString() ==
                                                              '3') {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .lavanda;
                                                          } else {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .primary;
                                                          }
                                                        }(),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    5.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if ((functions
                                                                        .parseJsonValueToInteger(
                                                                            getJsonField(
                                                                          childDiariosItem,
                                                                          r'''$.tipo_id''',
                                                                        ))
                                                                        .toString() ==
                                                                    '1') ||
                                                                (functions
                                                                        .parseJsonValueToInteger(
                                                                            getJsonField(
                                                                          childDiariosItem,
                                                                          r'''$.tipo_id''',
                                                                        ))
                                                                        .toString() ==
                                                                    '4'))
                                                              Container(
                                                                width: 35.0,
                                                                height: 35.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/diario_sintomas.png',
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            if ((functions
                                                                        .parseJsonValueToInteger(
                                                                            getJsonField(
                                                                          childDiariosItem,
                                                                          r'''$.tipo_id''',
                                                                        ))
                                                                        .toString() ==
                                                                    '2') ||
                                                                (functions
                                                                        .parseJsonValueToInteger(
                                                                            getJsonField(
                                                                          childDiariosItem,
                                                                          r'''$.tipo_id''',
                                                                        ))
                                                                        .toString() ==
                                                                    '5'))
                                                              Container(
                                                                width: 35.0,
                                                                height: 35.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/bed.png',
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            if ((functions
                                                                        .parseJsonValueToInteger(
                                                                            getJsonField(
                                                                          childDiariosItem,
                                                                          r'''$.tipo_id''',
                                                                        ))
                                                                        .toString() ==
                                                                    '3') ||
                                                                (functions
                                                                        .parseJsonValueToInteger(
                                                                            getJsonField(
                                                                          childDiariosItem,
                                                                          r'''$.tipo_id''',
                                                                        ))
                                                                        .toString() ==
                                                                    '6'))
                                                              Container(
                                                                width: 35.0,
                                                                height: 35.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/intolerancia.png',
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            if ((functions
                                                                        .parseJsonValueToInteger(
                                                                            getJsonField(
                                                                          childDiariosItem,
                                                                          r'''$.tipo_id''',
                                                                        ))
                                                                        .toString() ==
                                                                    '1') ||
                                                                (functions
                                                                        .parseJsonValueToInteger(
                                                                            getJsonField(
                                                                          childDiariosItem,
                                                                          r'''$.tipo_id''',
                                                                        ))
                                                                        .toString() ==
                                                                    '2') ||
                                                                (functions
                                                                        .parseJsonValueToInteger(
                                                                            getJsonField(
                                                                          childDiariosItem,
                                                                          r'''$.tipo_id''',
                                                                        ))
                                                                        .toString() ==
                                                                    '3'))
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'uikjrfgh' /* Diario de  */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    if (FFLocalizations.of(context)
                                                                            .languageCode ==
                                                                        'es')
                                                                      Text(
                                                                        () {
                                                                          if (functions
                                                                                  .parseJsonValueToInteger(getJsonField(
                                                                                    childDiariosItem,
                                                                                    r'''$.tipo_id''',
                                                                                  ))
                                                                                  .toString() ==
                                                                              '1') {
                                                                            return 'Síntomas ';
                                                                          } else if (functions
                                                                                  .parseJsonValueToInteger(getJsonField(
                                                                                    childDiariosItem,
                                                                                    r'''$.tipo_id''',
                                                                                  ))
                                                                                  .toString() ==
                                                                              '2') {
                                                                            return 'Sueño ';
                                                                          } else {
                                                                            return 'Intolerancias ';
                                                                          }
                                                                        }(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    if (FFLocalizations.of(context)
                                                                            .languageCode ==
                                                                        'en')
                                                                      Text(
                                                                        () {
                                                                          if (functions
                                                                                  .parseJsonValueToInteger(getJsonField(
                                                                                    childDiariosItem,
                                                                                    r'''$.tipo_id''',
                                                                                  ))
                                                                                  .toString() ==
                                                                              '1') {
                                                                            return 'Symptom - ';
                                                                          } else if (functions
                                                                                  .parseJsonValueToInteger(getJsonField(
                                                                                    childDiariosItem,
                                                                                    r'''$.tipo_id''',
                                                                                  ))
                                                                                  .toString() ==
                                                                              '2') {
                                                                            return 'Sleep - ';
                                                                          } else {
                                                                            return 'Intolerences - ';
                                                                          }
                                                                        }(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    Text(
                                                                      getJsonField(
                                                                        childDiariosItem,
                                                                        r'''$.fecha_txt''',
                                                                      ).toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            if ((functions
                                                                        .parseJsonValueToInteger(
                                                                            getJsonField(
                                                                          childDiariosItem,
                                                                          r'''$.tipo_id''',
                                                                        ))
                                                                        .toString() ==
                                                                    '4') ||
                                                                (functions
                                                                        .parseJsonValueToInteger(
                                                                            getJsonField(
                                                                          childDiariosItem,
                                                                          r'''$.tipo_id''',
                                                                        ))
                                                                        .toString() ==
                                                                    '5') ||
                                                                (functions
                                                                        .parseJsonValueToInteger(
                                                                            getJsonField(
                                                                          childDiariosItem,
                                                                          r'''$.tipo_id''',
                                                                        ))
                                                                        .toString() ==
                                                                    '6'))
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    var _shouldSetState =
                                                                        false;
                                                                    if (functions
                                                                            .parseJsonValueToInteger(getJsonField(
                                                                              childDiariosItem,
                                                                              r'''$.tipo_id''',
                                                                            ))
                                                                            .toString() ==
                                                                        '4') {
                                                                      if (functions
                                                                              .parseJsonValueToString(getJsonField(
                                                                            FFAppState().userIndividual,
                                                                            r'''$.finalizo_setup''',
                                                                          )) ==
                                                                          'no') {
                                                                        if (functions.parseJsonValueToString(getJsonField(
                                                                              FFAppState().userIndividual,
                                                                              r'''$.id_enfermedad''',
                                                                            )) !=
                                                                            '4') {
                                                                          context
                                                                              .pushNamed(
                                                                            'setup',
                                                                            queryParameters:
                                                                                {
                                                                              'enfermedadId': serializeParam(
                                                                                getJsonField(
                                                                                  FFAppState().userIndividual,
                                                                                  r'''$.id_enfermedad''',
                                                                                ),
                                                                                ParamType.int,
                                                                              ),
                                                                            }.withoutNulls,
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              kTransitionInfoKey: TransitionInfo(
                                                                                hasTransition: true,
                                                                                transitionType: PageTransitionType.fade,
                                                                              ),
                                                                            },
                                                                          );

                                                                          unawaited(
                                                                            () async {
                                                                              await UserLogActivityCall.call(
                                                                                authToken: FFAppState().authToken,
                                                                                seccion: 'Acceso Diario Sintomas Home',
                                                                              );
                                                                            }(),
                                                                          );
                                                                          if (_shouldSetState)
                                                                            safeSetState(() {});
                                                                          return;
                                                                        } else {
                                                                          _model.apiDiarioCreaAnterior =
                                                                              await DiarioCreaAnteriorCall.call(
                                                                            authToken:
                                                                                FFAppState().authToken,
                                                                            fecha:
                                                                                _model.fecha?.millisecondsSinceEpoch?.toString(),
                                                                          );

                                                                          _shouldSetState =
                                                                              true;
                                                                          if ((_model.apiDiarioCreaAnterior?.succeeded ??
                                                                              true)) {
                                                                            FFAppState().deleteDiarioDolor();
                                                                            FFAppState().diarioDolor =
                                                                                'no';

                                                                            FFAppState().deleteDiarioMed1();
                                                                            FFAppState().diarioMed1 =
                                                                                'no';

                                                                            FFAppState().deleteDiarioMed2();
                                                                            FFAppState().diarioMed2 =
                                                                                'no';

                                                                            FFAppState().deleteDiarioVit();
                                                                            FFAppState().diarioVit =
                                                                                'no';

                                                                            FFAppState().deleteDiarioUltimoMed1();
                                                                            FFAppState().diarioUltimoMed1 =
                                                                                '';

                                                                            FFAppState().deleteDiarioUltimoMed2();
                                                                            FFAppState().diarioUltimoMed2 =
                                                                                '';

                                                                            FFAppState().deleteDiarioUltimoSup1();
                                                                            FFAppState().diarioUltimoSup1 =
                                                                                '';

                                                                            FFAppState().deleteDiarioUltimoSup2();
                                                                            FFAppState().diarioUltimoSup2 =
                                                                                '';

                                                                            FFAppState().deleteDiarioUltimoSup3();
                                                                            FFAppState().diarioUltimoSup3 =
                                                                                '';

                                                                            FFAppState().deleteTmpCantidadSuplementos();
                                                                            FFAppState().tmpCantidadSuplementos =
                                                                                0;

                                                                            FFAppState().editandoDiario =
                                                                                'no';
                                                                            FFAppState().activarCargaChat =
                                                                                'no';
                                                                            FFAppState().diarioId =
                                                                                DiarioCreaAnteriorCall.diarioId(
                                                                              (_model.apiDiarioCreaAnterior?.jsonBody ?? ''),
                                                                            )!;

                                                                            context.pushNamed(
                                                                              'diario1',
                                                                              extra: <String, dynamic>{
                                                                                kTransitionInfoKey: TransitionInfo(
                                                                                  hasTransition: true,
                                                                                  transitionType: PageTransitionType.fade,
                                                                                ),
                                                                              },
                                                                            );

                                                                            unawaited(
                                                                              () async {
                                                                                await UserLogActivityCall.call(
                                                                                  authToken: FFAppState().authToken,
                                                                                  seccion: 'Acceso Diario Sintomas Home',
                                                                                );
                                                                              }(),
                                                                            );
                                                                            if (_shouldSetState)
                                                                              safeSetState(() {});
                                                                            return;
                                                                          } else {
                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                              SnackBar(
                                                                                content: Text(
                                                                                  'Ha ocurrido un error...',
                                                                                  style: TextStyle(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  ),
                                                                                ),
                                                                                duration: Duration(milliseconds: 4000),
                                                                                backgroundColor: FlutterFlowTheme.of(context).error,
                                                                              ),
                                                                            );
                                                                            if (_shouldSetState)
                                                                              safeSetState(() {});
                                                                            return;
                                                                          }
                                                                        }
                                                                      } else {
                                                                        _model.apiDiarioCreaAnterior2 =
                                                                            await DiarioCreaAnteriorCall.call(
                                                                          authToken:
                                                                              FFAppState().authToken,
                                                                          fecha: _model
                                                                              .fecha
                                                                              ?.millisecondsSinceEpoch
                                                                              ?.toString(),
                                                                        );

                                                                        _shouldSetState =
                                                                            true;
                                                                        if ((_model.apiDiarioCreaAnterior2?.succeeded ??
                                                                            true)) {
                                                                          FFAppState()
                                                                              .deleteDiarioDolor();
                                                                          FFAppState().diarioDolor =
                                                                              'no';

                                                                          FFAppState()
                                                                              .deleteDiarioMed1();
                                                                          FFAppState().diarioMed1 =
                                                                              'no';

                                                                          FFAppState()
                                                                              .deleteDiarioMed2();
                                                                          FFAppState().diarioMed2 =
                                                                              'no';

                                                                          FFAppState()
                                                                              .deleteDiarioVit();
                                                                          FFAppState().diarioVit =
                                                                              'no';

                                                                          FFAppState()
                                                                              .deleteDiarioUltimoMed1();
                                                                          FFAppState().diarioUltimoMed1 =
                                                                              '';

                                                                          FFAppState()
                                                                              .deleteDiarioUltimoMed2();
                                                                          FFAppState().diarioUltimoMed2 =
                                                                              '';

                                                                          FFAppState()
                                                                              .deleteDiarioUltimoSup1();
                                                                          FFAppState().diarioUltimoSup1 =
                                                                              '';

                                                                          FFAppState()
                                                                              .deleteDiarioUltimoSup2();
                                                                          FFAppState().diarioUltimoSup2 =
                                                                              '';

                                                                          FFAppState()
                                                                              .deleteDiarioUltimoSup3();
                                                                          FFAppState().diarioUltimoSup3 =
                                                                              '';

                                                                          FFAppState()
                                                                              .deleteTmpCantidadSuplementos();
                                                                          FFAppState().tmpCantidadSuplementos =
                                                                              0;

                                                                          FFAppState().editandoDiario =
                                                                              'no';
                                                                          FFAppState().activarCargaChat =
                                                                              'no';
                                                                          FFAppState().diarioId =
                                                                              DiarioCreaAnteriorCall.diarioId(
                                                                            (_model.apiDiarioCreaAnterior2?.jsonBody ??
                                                                                ''),
                                                                          )!;

                                                                          context
                                                                              .pushNamed(
                                                                            'diario1',
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              kTransitionInfoKey: TransitionInfo(
                                                                                hasTransition: true,
                                                                                transitionType: PageTransitionType.fade,
                                                                              ),
                                                                            },
                                                                          );

                                                                          unawaited(
                                                                            () async {
                                                                              await UserLogActivityCall.call(
                                                                                authToken: FFAppState().authToken,
                                                                                seccion: 'Acceso Diario Sintomas Home',
                                                                              );
                                                                            }(),
                                                                          );
                                                                          if (_shouldSetState)
                                                                            safeSetState(() {});
                                                                          return;
                                                                        } else {
                                                                          ScaffoldMessenger.of(context)
                                                                              .showSnackBar(
                                                                            SnackBar(
                                                                              content: Text(
                                                                                'Ha ocurrido un error...',
                                                                                style: TextStyle(
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                ),
                                                                              ),
                                                                              duration: Duration(milliseconds: 4000),
                                                                              backgroundColor: FlutterFlowTheme.of(context).error,
                                                                            ),
                                                                          );
                                                                          if (_shouldSetState)
                                                                            safeSetState(() {});
                                                                          return;
                                                                        }
                                                                      }
                                                                    } else {
                                                                      if (functions
                                                                              .parseJsonValueToInteger(getJsonField(
                                                                                childDiariosItem,
                                                                                r'''$.tipo_id''',
                                                                              ))
                                                                              .toString() ==
                                                                          '5') {
                                                                        _model.apiCreaSuenoAnterior =
                                                                            await SuenoCreaDiarioAnteriorCall.call(
                                                                          authToken:
                                                                              FFAppState().authToken,
                                                                          fecha: _model
                                                                              .fecha
                                                                              ?.millisecondsSinceEpoch
                                                                              ?.toString(),
                                                                        );

                                                                        _shouldSetState =
                                                                            true;
                                                                        FFAppState().diarioSuenoSup =
                                                                            'no';
                                                                        FFAppState().diarioSuenoMed =
                                                                            'no';
                                                                        FFAppState().diarioSuenoUltMed =
                                                                            '';
                                                                        FFAppState().diarioSuenoUltSup =
                                                                            '';
                                                                        FFAppState().diarioSuenoId =
                                                                            SuenoCreaDiarioAnteriorCall.id(
                                                                          (_model.apiCreaSuenoAnterior?.jsonBody ??
                                                                              ''),
                                                                        )!;

                                                                        context
                                                                            .pushNamed(
                                                                          'diario_sueno1',
                                                                          extra: <String,
                                                                              dynamic>{
                                                                            kTransitionInfoKey:
                                                                                TransitionInfo(
                                                                              hasTransition: true,
                                                                              transitionType: PageTransitionType.fade,
                                                                            ),
                                                                          },
                                                                        );

                                                                        unawaited(
                                                                          () async {
                                                                            await UserLogActivityCall.call(
                                                                              authToken: FFAppState().authToken,
                                                                              seccion: 'Acceso Diario Sueño Home',
                                                                            );
                                                                          }(),
                                                                        );
                                                                        if (_shouldSetState)
                                                                          safeSetState(
                                                                              () {});
                                                                        return;
                                                                      } else {
                                                                        if (functions
                                                                                .parseJsonValueToInteger(getJsonField(
                                                                                  childDiariosItem,
                                                                                  r'''$.tipo_id''',
                                                                                ))
                                                                                .toString() ==
                                                                            '6') {
                                                                          _model.apiDiarioIntoAnterior =
                                                                              await DiarioIntoCreaAnteriorCall.call(
                                                                            authToken:
                                                                                FFAppState().authToken,
                                                                            fecha:
                                                                                _model.fecha?.millisecondsSinceEpoch?.toString(),
                                                                          );

                                                                          _shouldSetState =
                                                                              true;
                                                                          if ((_model.apiDiarioIntoAnterior?.succeeded ??
                                                                              true)) {
                                                                            FFAppState().intoCarnes =
                                                                                'no';
                                                                            FFAppState().intoMarisco =
                                                                                'no';
                                                                            FFAppState().intoPescado =
                                                                                'no';
                                                                            FFAppState().intoLacteos =
                                                                                'no';
                                                                            FFAppState().intoHuevos =
                                                                                'no';
                                                                            FFAppState().intoCereales =
                                                                                'no';
                                                                            FFAppState().intoFrutas =
                                                                                'no';
                                                                            FFAppState().intoVerduras =
                                                                                'no';
                                                                            FFAppState().intoLegumbres =
                                                                                'no';
                                                                            FFAppState().intoFrutosSecos =
                                                                                'no';
                                                                            FFAppState().intoSalsas =
                                                                                'no';
                                                                            FFAppState().intoBebidas =
                                                                                'no';
                                                                            FFAppState().diarioIntoId =
                                                                                DiarioIntoCreaAnteriorCall.id(
                                                                              (_model.apiDiarioIntoAnterior?.jsonBody ?? ''),
                                                                            )!;
                                                                            FFAppState().primerDiarioInto =
                                                                                'no';
                                                                            FFAppState().diarioIntoAnterior =
                                                                                getJsonField(
                                                                              FFAppState().userIndividual,
                                                                              r'''$.id_diario_into_editar''',
                                                                            );
                                                                            FFAppState().editandoDiario =
                                                                                'no';
                                                                            FFAppState().mostrarAyer =
                                                                                'no';

                                                                            context.goNamed(
                                                                              'diarioIntoCargaDesplegables',
                                                                              queryParameters: {
                                                                                'primerDiario': serializeParam(
                                                                                  'no',
                                                                                  ParamType.String,
                                                                                ),
                                                                              }.withoutNulls,
                                                                              extra: <String, dynamic>{
                                                                                kTransitionInfoKey: TransitionInfo(
                                                                                  hasTransition: true,
                                                                                  transitionType: PageTransitionType.fade,
                                                                                ),
                                                                              },
                                                                            );

                                                                            unawaited(
                                                                              () async {
                                                                                await UserLogActivityCall.call(
                                                                                  authToken: FFAppState().authToken,
                                                                                  seccion: 'Acceso Diario Inolerancias Home',
                                                                                );
                                                                              }(),
                                                                            );
                                                                            if (_shouldSetState)
                                                                              safeSetState(() {});
                                                                            return;
                                                                          } else {
                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                              SnackBar(
                                                                                content: Text(
                                                                                  'Ha ocurrido un error...',
                                                                                  style: TextStyle(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  ),
                                                                                ),
                                                                                duration: Duration(milliseconds: 4000),
                                                                                backgroundColor: FlutterFlowTheme.of(context).error,
                                                                              ),
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
                                                                      }
                                                                    }

                                                                    if (_shouldSetState)
                                                                      safeSetState(
                                                                          () {});
                                                                  },
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '8bztguff' /* Crear Diario de  */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                      if (FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'es')
                                                                        Text(
                                                                          () {
                                                                            if (functions
                                                                                    .parseJsonValueToInteger(getJsonField(
                                                                                      childDiariosItem,
                                                                                      r'''$.tipo_id''',
                                                                                    ))
                                                                                    .toString() ==
                                                                                '4') {
                                                                              return 'Síntomas ';
                                                                            } else if (functions
                                                                                    .parseJsonValueToInteger(getJsonField(
                                                                                      childDiariosItem,
                                                                                      r'''$.tipo_id''',
                                                                                    ))
                                                                                    .toString() ==
                                                                                '5') {
                                                                              return 'Sueño ';
                                                                            } else {
                                                                              return 'Intolerancias ';
                                                                            }
                                                                          }(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      if (FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'en')
                                                                        Text(
                                                                          () {
                                                                            if (functions
                                                                                    .parseJsonValueToInteger(getJsonField(
                                                                                      childDiariosItem,
                                                                                      r'''$.tipo_id''',
                                                                                    ))
                                                                                    .toString() ==
                                                                                '4') {
                                                                              return 'Symptom - ';
                                                                            } else if (functions
                                                                                    .parseJsonValueToInteger(getJsonField(
                                                                                      childDiariosItem,
                                                                                      r'''$.tipo_id''',
                                                                                    ))
                                                                                    .toString() ==
                                                                                '5') {
                                                                              return 'Sleep - ';
                                                                            } else {
                                                                              return 'Intolerences - ';
                                                                            }
                                                                          }(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      Text(
                                                                        getJsonField(
                                                                          childDiariosItem,
                                                                          r'''$.fecha_txt''',
                                                                        ).toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            if ((functions
                                                                        .parseJsonValueToInteger(
                                                                            getJsonField(
                                                                          childDiariosItem,
                                                                          r'''$.tipo_id''',
                                                                        ))
                                                                        .toString() ==
                                                                    '1') ||
                                                                (functions
                                                                        .parseJsonValueToInteger(
                                                                            getJsonField(
                                                                          childDiariosItem,
                                                                          r'''$.tipo_id''',
                                                                        ))
                                                                        .toString() ==
                                                                    '2') ||
                                                                (functions
                                                                        .parseJsonValueToInteger(
                                                                            getJsonField(
                                                                          childDiariosItem,
                                                                          r'''$.tipo_id''',
                                                                        ))
                                                                        .toString() ==
                                                                    '3'))
                                                              Flexible(
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                    child:
                                                                        FlutterFlowIconButton(
                                                                      borderRadius:
                                                                          20.0,
                                                                      borderWidth:
                                                                          1.0,
                                                                      buttonSize:
                                                                          40.0,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .visibility_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .negroPerm,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        if (functions
                                                                                .parseJsonValueToInteger(getJsonField(
                                                                                  childDiariosItem,
                                                                                  r'''$.tipo_id''',
                                                                                ))
                                                                                .toString() ==
                                                                            '1') {
                                                                          context
                                                                              .pushNamed(
                                                                            'resumen_sintomas',
                                                                            queryParameters:
                                                                                {
                                                                              'diarioId': serializeParam(
                                                                                getJsonField(
                                                                                  childDiariosItem,
                                                                                  r'''$.id_int''',
                                                                                ),
                                                                                ParamType.int,
                                                                              ),
                                                                              'fechaTxt': serializeParam(
                                                                                getJsonField(
                                                                                  childDiariosItem,
                                                                                  r'''$.fecha_txt''',
                                                                                ).toString(),
                                                                                ParamType.String,
                                                                              ),
                                                                            }.withoutNulls,
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              kTransitionInfoKey: TransitionInfo(
                                                                                hasTransition: true,
                                                                                transitionType: PageTransitionType.fade,
                                                                              ),
                                                                            },
                                                                          );

                                                                          return;
                                                                        } else {
                                                                          if (functions
                                                                                  .parseJsonValueToInteger(getJsonField(
                                                                                    childDiariosItem,
                                                                                    r'''$.tipo_id''',
                                                                                  ))
                                                                                  .toString() ==
                                                                              '2') {
                                                                            context.pushNamed(
                                                                              'resumen_sueno',
                                                                              queryParameters: {
                                                                                'diarioId': serializeParam(
                                                                                  getJsonField(
                                                                                    childDiariosItem,
                                                                                    r'''$.id_int''',
                                                                                  ),
                                                                                  ParamType.int,
                                                                                ),
                                                                                'fechaTxt': serializeParam(
                                                                                  getJsonField(
                                                                                    childDiariosItem,
                                                                                    r'''$.fecha_txt''',
                                                                                  ).toString(),
                                                                                  ParamType.String,
                                                                                ),
                                                                              }.withoutNulls,
                                                                              extra: <String, dynamic>{
                                                                                kTransitionInfoKey: TransitionInfo(
                                                                                  hasTransition: true,
                                                                                  transitionType: PageTransitionType.fade,
                                                                                ),
                                                                              },
                                                                            );

                                                                            return;
                                                                          } else {
                                                                            if (functions
                                                                                    .parseJsonValueToInteger(getJsonField(
                                                                                      childDiariosItem,
                                                                                      r'''$.tipo_id''',
                                                                                    ))
                                                                                    .toString() ==
                                                                                '3') {
                                                                              context.pushNamed(
                                                                                'resumen_into',
                                                                                queryParameters: {
                                                                                  'diarioId': serializeParam(
                                                                                    getJsonField(
                                                                                      childDiariosItem,
                                                                                      r'''$.id_int''',
                                                                                    ),
                                                                                    ParamType.int,
                                                                                  ),
                                                                                  'fechaTxt': serializeParam(
                                                                                    getJsonField(
                                                                                      childDiariosItem,
                                                                                      r'''$.fecha_txt''',
                                                                                    ).toString(),
                                                                                    ParamType.String,
                                                                                  ),
                                                                                }.withoutNulls,
                                                                                extra: <String, dynamic>{
                                                                                  kTransitionInfoKey: TransitionInfo(
                                                                                    hasTransition: true,
                                                                                    transitionType: PageTransitionType.fade,
                                                                                  ),
                                                                                },
                                                                              );

                                                                              return;
                                                                            } else {
                                                                              return;
                                                                            }
                                                                          }
                                                                        }
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            );
                                          },
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
                  ].addToEnd(SizedBox(height: 150.0)),
                ),
              if (_model.spinner == 'si')
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/Ellipsis@1x-1.0s-200px-200px.gif',
                            width: 107.0,
                            height: 81.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: wrapWithModel(
                  model: _model.menuUsuarioModel,
                  updateCallback: () => safeSetState(() {}),
                  child: MenuUsuarioWidget(
                    index: 0,
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
