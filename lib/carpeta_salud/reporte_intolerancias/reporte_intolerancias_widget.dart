import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reporte_intolerancias_model.dart';
export 'reporte_intolerancias_model.dart';

class ReporteIntoleranciasWidget extends StatefulWidget {
  const ReporteIntoleranciasWidget({super.key});

  @override
  State<ReporteIntoleranciasWidget> createState() =>
      _ReporteIntoleranciasWidgetState();
}

class _ReporteIntoleranciasWidgetState
    extends State<ReporteIntoleranciasWidget> {
  late ReporteIntoleranciasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReporteIntoleranciasModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 1000));
      _model.generando = 'si';
      _model.rango = 1;
      _model.mostrarDatos = 'no';
      safeSetState(() {});
      _model.api7diasIntoStart = await ReporteIntoStdCargaCall.call(
        dias: 7,
        authToken: FFAppState().authToken,
      );

      _model.diasReporte = '7';
      _model.cantDiarios = ReporteIntoStdCargaCall.cantRegistros(
        (_model.api7diasIntoStart?.jsonBody ?? ''),
      )?.toString();
      _model.cantidadDiasSintomas = ReporteIntoStdCargaCall.cantDiasInto(
        (_model.api7diasIntoStart?.jsonBody ?? ''),
      )?.toString();
      _model.porcentaje = ReporteIntoStdCargaCall.porcentajeDias(
        (_model.api7diasIntoStart?.jsonBody ?? ''),
      )?.toString();
      _model.comidaSintoma = ReporteIntoStdCargaCall.comidaMasSintomas(
        (_model.api7diasIntoStart?.jsonBody ?? ''),
      );
      _model.desayuno1 = ReporteIntoStdCargaCall.des1(
        (_model.api7diasIntoStart?.jsonBody ?? ''),
      );
      _model.desayuno2 = ReporteIntoStdCargaCall.des2(
        (_model.api7diasIntoStart?.jsonBody ?? ''),
      );
      _model.desayuno3 = ReporteIntoStdCargaCall.des3(
        (_model.api7diasIntoStart?.jsonBody ?? ''),
      );
      _model.comida1 = ReporteIntoStdCargaCall.com1(
        (_model.api7diasIntoStart?.jsonBody ?? ''),
      );
      _model.comida2 = ReporteIntoStdCargaCall.com2(
        (_model.api7diasIntoStart?.jsonBody ?? ''),
      );
      _model.comida3 = ReporteIntoStdCargaCall.com3(
        (_model.api7diasIntoStart?.jsonBody ?? ''),
      );
      _model.cena1 = ReporteIntoStdCargaCall.cen1(
        (_model.api7diasIntoStart?.jsonBody ?? ''),
      );
      _model.cena2 = ReporteIntoStdCargaCall.cen2(
        (_model.api7diasIntoStart?.jsonBody ?? ''),
      );
      _model.cena3 = ReporteIntoStdCargaCall.cen3(
        (_model.api7diasIntoStart?.jsonBody ?? ''),
      );
      safeSetState(() {});
      _model.generando = 'no';
      _model.mostrarDatos = 'si';
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
              context.pop();
            },
          ),
          title: Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'l52912zx' /* Reporte de Intolerancias */,
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
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '6b8pgdtd' /* A continuación verás un report... */,
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 360.0,
                          height: 39.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.generando = 'si';
                                  _model.rango = 1;
                                  _model.mostrarDatos = 'no';
                                  safeSetState(() {});
                                  _model.api7diasInto =
                                      await ReporteIntoStdCargaCall.call(
                                    dias: 7,
                                    authToken: FFAppState().authToken,
                                  );

                                  _model.diasReporte = '7';
                                  _model.cantDiarios =
                                      ReporteIntoStdCargaCall.cantRegistros(
                                    (_model.api7diasInto?.jsonBody ?? ''),
                                  )?.toString();
                                  _model.cantidadDiasSintomas =
                                      ReporteIntoStdCargaCall.cantDiasInto(
                                    (_model.api7diasInto?.jsonBody ?? ''),
                                  )?.toString();
                                  _model.porcentaje =
                                      ReporteIntoStdCargaCall.porcentajeDias(
                                    (_model.api7diasInto?.jsonBody ?? ''),
                                  )?.toString();
                                  _model.comidaSintoma =
                                      ReporteIntoStdCargaCall.comidaMasSintomas(
                                    (_model.api7diasInto?.jsonBody ?? ''),
                                  );
                                  _model.desayuno1 =
                                      ReporteIntoStdCargaCall.des1(
                                    (_model.api7diasInto?.jsonBody ?? ''),
                                  );
                                  _model.desayuno2 =
                                      ReporteIntoStdCargaCall.des2(
                                    (_model.api7diasInto?.jsonBody ?? ''),
                                  );
                                  _model.desayuno3 =
                                      ReporteIntoStdCargaCall.des3(
                                    (_model.api7diasInto?.jsonBody ?? ''),
                                  );
                                  _model.comida1 = ReporteIntoStdCargaCall.com1(
                                    (_model.api7diasInto?.jsonBody ?? ''),
                                  );
                                  _model.comida2 = ReporteIntoStdCargaCall.com2(
                                    (_model.api7diasInto?.jsonBody ?? ''),
                                  );
                                  _model.comida3 = ReporteIntoStdCargaCall.com3(
                                    (_model.api7diasInto?.jsonBody ?? ''),
                                  );
                                  _model.cena1 = ReporteIntoStdCargaCall.cen1(
                                    (_model.api7diasInto?.jsonBody ?? ''),
                                  );
                                  _model.cena2 = ReporteIntoStdCargaCall.cen2(
                                    (_model.api7diasInto?.jsonBody ?? ''),
                                  );
                                  _model.cena3 = ReporteIntoStdCargaCall.cen3(
                                    (_model.api7diasInto?.jsonBody ?? ''),
                                  );
                                  safeSetState(() {});
                                  _model.generando = 'no';
                                  _model.mostrarDatos = 'si';
                                  safeSetState(() {});

                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 120.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: _model.rango == 1
                                        ? FlutterFlowTheme.of(context).secondary
                                        : Color(0x00000000),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'vp2754fx' /* 7 Días */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: _model.rango == 1
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.generando = 'si';
                                  _model.rango = 2;
                                  _model.mostrarDatos = 'no';
                                  safeSetState(() {});
                                  _model.api30diasInto =
                                      await ReporteIntoStdCargaCall.call(
                                    dias: 7,
                                    authToken: FFAppState().authToken,
                                  );

                                  _model.diasReporte = '30';
                                  _model.cantDiarios =
                                      ReporteIntoStdCargaCall.cantRegistros(
                                    (_model.api30diasInto?.jsonBody ?? ''),
                                  )?.toString();
                                  _model.cantidadDiasSintomas =
                                      ReporteIntoStdCargaCall.cantDiasInto(
                                    (_model.api30diasInto?.jsonBody ?? ''),
                                  )?.toString();
                                  _model.porcentaje =
                                      ReporteIntoStdCargaCall.porcentajeDias(
                                    (_model.api30diasInto?.jsonBody ?? ''),
                                  )?.toString();
                                  _model.comidaSintoma =
                                      ReporteIntoStdCargaCall.comidaMasSintomas(
                                    (_model.api30diasInto?.jsonBody ?? ''),
                                  );
                                  _model.desayuno1 =
                                      ReporteIntoStdCargaCall.des1(
                                    (_model.api30diasInto?.jsonBody ?? ''),
                                  );
                                  _model.desayuno2 =
                                      ReporteIntoStdCargaCall.des2(
                                    (_model.api30diasInto?.jsonBody ?? ''),
                                  );
                                  _model.desayuno3 =
                                      ReporteIntoStdCargaCall.des3(
                                    (_model.api30diasInto?.jsonBody ?? ''),
                                  );
                                  _model.comida1 = ReporteIntoStdCargaCall.com1(
                                    (_model.api30diasInto?.jsonBody ?? ''),
                                  );
                                  _model.comida2 = ReporteIntoStdCargaCall.com2(
                                    (_model.api30diasInto?.jsonBody ?? ''),
                                  );
                                  _model.comida3 = ReporteIntoStdCargaCall.com3(
                                    (_model.api30diasInto?.jsonBody ?? ''),
                                  );
                                  _model.cena1 = ReporteIntoStdCargaCall.cen1(
                                    (_model.api30diasInto?.jsonBody ?? ''),
                                  );
                                  _model.cena2 = ReporteIntoStdCargaCall.cen2(
                                    (_model.api30diasInto?.jsonBody ?? ''),
                                  );
                                  _model.cena3 = ReporteIntoStdCargaCall.cen3(
                                    (_model.api30diasInto?.jsonBody ?? ''),
                                  );
                                  safeSetState(() {});
                                  _model.generando = 'no';
                                  _model.mostrarDatos = 'si';
                                  safeSetState(() {});

                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 120.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: _model.rango == 2
                                        ? FlutterFlowTheme.of(context).secondary
                                        : Color(0x00000000),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'nwsttlwf' /* 30 Días */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: _model.rango == 2
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.rango = 3;
                                  _model.fechaInicio = null;
                                  _model.fechaFin = null;
                                  _model.generando = 'no';
                                  _model.mostrarDatos = 'no';
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 120.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: _model.rango == 3
                                        ? FlutterFlowTheme.of(context).secondary
                                        : Color(0x00000000),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'b5sblil8' /* Personalizado */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: _model.rango == 3
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            letterSpacing: 0.0,
                                          ),
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
                  if (_model.rango == 3)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'm7co29su' /* Fecha de Inicio */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await showModalBottomSheet<bool>(
                                        context: context,
                                        builder: (context) {
                                          final _datePicked1CupertinoTheme =
                                              CupertinoTheme.of(context);
                                          return Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                3,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            child: CupertinoTheme(
                                              data: _datePicked1CupertinoTheme
                                                  .copyWith(
                                                textTheme:
                                                    _datePicked1CupertinoTheme
                                                        .textTheme
                                                        .copyWith(
                                                  dateTimePickerTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineMedium
                                                          .override(
                                                            fontFamily:
                                                                'Open Sans',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            letterSpacing: 0.0,
                                                          ),
                                                ),
                                              ),
                                              child: CupertinoDatePicker(
                                                mode: CupertinoDatePickerMode
                                                    .date,
                                                minimumDate: DateTime(1900),
                                                initialDateTime:
                                                    getCurrentTimestamp,
                                                maximumDate:
                                                    getCurrentTimestamp,
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                use24hFormat: false,
                                                onDateTimeChanged:
                                                    (newDateTime) =>
                                                        safeSetState(() {
                                                  _model.datePicked1 =
                                                      newDateTime;
                                                }),
                                              ),
                                            ),
                                          );
                                        });
                                    _model.fechaInicio = _model.datePicked1;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: 150.0,
                                    height: 45.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            dateTimeFormat(
                                              "d/M/y",
                                              _model.fechaInicio,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            'Inicio',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '5pxhm0xg' /* Fecha de Fin */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await showModalBottomSheet<bool>(
                                        context: context,
                                        builder: (context) {
                                          final _datePicked2CupertinoTheme =
                                              CupertinoTheme.of(context);
                                          return Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                3,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            child: CupertinoTheme(
                                              data: _datePicked2CupertinoTheme
                                                  .copyWith(
                                                textTheme:
                                                    _datePicked2CupertinoTheme
                                                        .textTheme
                                                        .copyWith(
                                                  dateTimePickerTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineMedium
                                                          .override(
                                                            fontFamily:
                                                                'Open Sans',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            letterSpacing: 0.0,
                                                          ),
                                                ),
                                              ),
                                              child: CupertinoDatePicker(
                                                mode: CupertinoDatePickerMode
                                                    .date,
                                                minimumDate: DateTime(1900),
                                                initialDateTime:
                                                    getCurrentTimestamp,
                                                maximumDate:
                                                    getCurrentTimestamp,
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                use24hFormat: false,
                                                onDateTimeChanged:
                                                    (newDateTime) =>
                                                        safeSetState(() {
                                                  _model.datePicked2 =
                                                      newDateTime;
                                                }),
                                              ),
                                            ),
                                          );
                                        });
                                    _model.fechaFin = _model.datePicked2;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: 150.0,
                                    height: 45.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            dateTimeFormat(
                                              "d/M/y",
                                              _model.fechaFin,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            'Fin',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  if (_model.rango == 3)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FFButtonWidget(
                            onPressed: ((_model.fechaInicio == null) ||
                                    (_model.fechaFin == null))
                                ? null
                                : () async {
                                    _model.generando = 'si';
                                    safeSetState(() {});
                                    _model.apiCusInto =
                                        await ReporteIntoCusCreaCall.call(
                                      dias: 1,
                                      userId: FFAppState().xUserId,
                                      fechaInicio: _model
                                          .fechaInicio?.millisecondsSinceEpoch
                                          ?.toString(),
                                      fechaFin: _model
                                          .fechaFin?.millisecondsSinceEpoch
                                          ?.toString(),
                                    );

                                    if ((_model.apiCusInto?.succeeded ??
                                        true)) {
                                      _model.diasReporte =
                                          ReporteIntoCusCreaCall.dias(
                                        (_model.apiCusInto?.jsonBody ?? ''),
                                      )?.toString();
                                      _model.cantDiarios =
                                          ReporteIntoCusCreaCall.cantRegistros(
                                        (_model.apiCusInto?.jsonBody ?? ''),
                                      )?.toString();
                                      _model.cantidadDiasSintomas =
                                          ReporteIntoCusCreaCall.cantDiasInto(
                                        (_model.apiCusInto?.jsonBody ?? ''),
                                      )?.toString();
                                      _model.porcentaje =
                                          ReporteIntoCusCreaCall.porcentaje(
                                        (_model.apiCusInto?.jsonBody ?? ''),
                                      )?.toString();
                                      _model.comidaSintoma =
                                          ReporteIntoCusCreaCall.comidaSintoma(
                                        (_model.apiCusInto?.jsonBody ?? ''),
                                      );
                                      _model.desayuno1 =
                                          ReporteIntoCusCreaCall.des1(
                                        (_model.apiCusInto?.jsonBody ?? ''),
                                      );
                                      _model.desayuno2 =
                                          ReporteIntoCusCreaCall.des2(
                                        (_model.apiCusInto?.jsonBody ?? ''),
                                      );
                                      _model.desayuno3 =
                                          ReporteIntoCusCreaCall.des3(
                                        (_model.apiCusInto?.jsonBody ?? ''),
                                      );
                                      _model.comida1 =
                                          ReporteIntoCusCreaCall.com1(
                                        (_model.apiCusInto?.jsonBody ?? ''),
                                      );
                                      _model.comida2 =
                                          ReporteIntoCusCreaCall.com2(
                                        (_model.apiCusInto?.jsonBody ?? ''),
                                      );
                                      _model.comida3 =
                                          ReporteIntoCusCreaCall.com3(
                                        (_model.apiCusInto?.jsonBody ?? ''),
                                      );
                                      _model.cena1 =
                                          ReporteIntoCusCreaCall.cen1(
                                        (_model.apiCusInto?.jsonBody ?? ''),
                                      );
                                      _model.cena2 =
                                          ReporteIntoCusCreaCall.cen2(
                                        (_model.apiCusInto?.jsonBody ?? ''),
                                      );
                                      _model.cena3 =
                                          ReporteIntoCusCreaCall.cen3(
                                        (_model.apiCusInto?.jsonBody ?? ''),
                                      );
                                      _model.generando = 'no';
                                      _model.mostrarDatos = 'si';
                                      safeSetState(() {});
                                    }

                                    safeSetState(() {});
                                  },
                            text: FFLocalizations.of(context).getText(
                              'qgxsymox' /* Generar Reporte */,
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
                              disabledColor:
                                  FlutterFlowTheme.of(context).botonDesactivado,
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (_model.generando == 'si')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/Wedges@1x-3.0s-200px-200px.gif',
                              width: 108.0,
                              height: 124.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (_model.mostrarDatos == 'si')
                    Container(
                      width: 350.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
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
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '83stepg4' /* Has creado */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Container(
                              width: 150.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primary,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    _model.cantDiarios,
                                    '-',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ),
                          ),
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
                                      'bpt7kxfg' /* Diarios de intolerancias en el... */,
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    'de los cuales en ${_model.cantidadDiasSintomas} tuviste síntomas',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    '${_model.porcentaje} % de los días',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (_model.mostrarDatos == 'si')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Container(
                        width: 350.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
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
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 10.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '64lclhio' /* Esta es la comida con la que m... */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 15.0),
                              child: Container(
                                width: 325.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      _model.comidaSintoma,
                                      '-',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (_model.mostrarDatos == 'si')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Container(
                        width: 350.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
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
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 10.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'j8yyrw0g' /* Los alimentos más consumidos c... */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 15.0),
                              child: Container(
                                width: 325.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '6itobulm' /* Desayuno */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            if (_model.desayuno1 != null &&
                                _model.desayuno1 != '')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        valueOrDefault<String>(
                                          _model.desayuno1,
                                          '-',
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            if (_model.desayuno2 != null &&
                                _model.desayuno2 != '')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        valueOrDefault<String>(
                                          _model.desayuno2,
                                          '-',
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            if (_model.desayuno3 != null &&
                                _model.desayuno3 != '')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        valueOrDefault<String>(
                                          _model.desayuno3,
                                          '-',
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 15.0),
                              child: Container(
                                width: 325.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'iflohp1o' /* Comida */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            if (_model.comida1 != null && _model.comida1 != '')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        valueOrDefault<String>(
                                          _model.comida1,
                                          '-',
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            if (_model.comida2 != null && _model.comida2 != '')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        valueOrDefault<String>(
                                          _model.comida2,
                                          '-',
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            if (_model.comida3 != null && _model.comida3 != '')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        valueOrDefault<String>(
                                          _model.comida3,
                                          '-',
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 15.0),
                              child: Container(
                                width: 325.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'zboy0mlw' /* Cena */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            if (_model.cena1 != null && _model.cena1 != '')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        valueOrDefault<String>(
                                          _model.cena1,
                                          '-',
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            if (_model.cena2 != null && _model.cena2 != '')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        valueOrDefault<String>(
                                          _model.cena2,
                                          '-',
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            if (_model.cena3 != null && _model.cena3 != '')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        valueOrDefault<String>(
                                          _model.cena3,
                                          '-',
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
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
                ].addToEnd(SizedBox(height: 120.0)),
              ),
            ),
            wrapWithModel(
              model: _model.menuUsuarioModel,
              updateCallback: () => safeSetState(() {}),
              child: MenuUsuarioWidget(
                index: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
