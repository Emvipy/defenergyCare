import '/backend/api_requests/api_calls.dart';
import '/carpeta_salud/modal_p_d_f/modal_p_d_f_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reporte_salud_model.dart';
export 'reporte_salud_model.dart';

class ReporteSaludWidget extends StatefulWidget {
  const ReporteSaludWidget({super.key});

  @override
  State<ReporteSaludWidget> createState() => _ReporteSaludWidgetState();
}

class _ReporteSaludWidgetState extends State<ReporteSaludWidget> {
  late ReporteSaludModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReporteSaludModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 1000));
      _model.generando = 'si';
      _model.rango = 1;
      _model.mostrarDatos = 'no';
      safeSetState(() {});
      _model.api7diasStart = await ReporteStdCall.call(
        dias: 7,
        authToken: FFAppState().authToken,
      );

      _model.promedioEnergia = ReporteStdCall.promedioEnergia(
        (_model.api7diasStart?.jsonBody ?? ''),
      );
      _model.momentoEnergia = ReporteStdCall.momentoEnergia(
        (_model.api7diasStart?.jsonBody ?? ''),
      );
      _model.promedioDolor = ReporteStdCall.promedioDolor(
        (_model.api7diasStart?.jsonBody ?? ''),
      );
      _model.actividades = ReporteStdCall.evolActividades(
        (_model.api7diasStart?.jsonBody ?? ''),
      );
      _model.actInicio = ReporteStdCall.actInicio(
        (_model.api7diasStart?.jsonBody ?? ''),
      )?.toString();
      _model.actFin = ReporteStdCall.actFin(
        (_model.api7diasStart?.jsonBody ?? ''),
      )?.toString();
      _model.evoSintomas = ReporteStdCall.evolucionSintomas(
        (_model.api7diasStart?.jsonBody ?? ''),
      );
      _model.evoSintInicio = ReporteStdCall.sintInicio(
        (_model.api7diasStart?.jsonBody ?? ''),
      )?.toString();
      _model.evoSintomasFin = ReporteStdCall.sintFinal(
        (_model.api7diasStart?.jsonBody ?? ''),
      )?.toString();
      _model.solucion = ReporteStdCall.mejorSolucion(
        (_model.api7diasStart?.jsonBody ?? ''),
      );
      _model.med1 = ReporteStdCall.mejorMed(
        (_model.api7diasStart?.jsonBody ?? ''),
      );
      _model.sup1 = ReporteStdCall.mejorSup(
        (_model.api7diasStart?.jsonBody ?? ''),
      );
      _model.diasSintomasInto = ReporteStdCall.cantDiasInto(
        (_model.api7diasStart?.jsonBody ?? ''),
      )?.toString();
      _model.porcentajeDias = ReporteStdCall.porcentajeDiasInto(
        (_model.api7diasStart?.jsonBody ?? ''),
      )?.toString();
      _model.promedioHoras = ReporteStdCall.promedioHoras(
        (_model.api7diasStart?.jsonBody ?? ''),
      )?.toString();
      _model.promedioCalidad = ReporteStdCall.promedioCalidad(
        (_model.api7diasStart?.jsonBody ?? ''),
      )?.toString();
      _model.estrategiaSueno = ReporteStdCall.suenoEstrategia(
        (_model.api7diasStart?.jsonBody ?? ''),
      );
      _model.medSueno = ReporteStdCall.suenoMed(
        (_model.api7diasStart?.jsonBody ?? ''),
      );
      _model.supSueno = ReporteStdCall.suenoSup(
        (_model.api7diasStart?.jsonBody ?? ''),
      );
      _model.diasReporte = '7';
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
                'rcf5yeea' /* Carpeta de Salud */,
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
                              'v5aze430' /* A continuación verás un report... */,
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
                                  _model.api7dias = await ReporteStdCall.call(
                                    dias: 7,
                                    authToken: FFAppState().authToken,
                                  );

                                  _model.promedioEnergia =
                                      ReporteStdCall.promedioEnergia(
                                    (_model.api7dias?.jsonBody ?? ''),
                                  );
                                  _model.momentoEnergia =
                                      ReporteStdCall.momentoEnergia(
                                    (_model.api7dias?.jsonBody ?? ''),
                                  );
                                  _model.promedioDolor =
                                      ReporteStdCall.promedioDolor(
                                    (_model.api7dias?.jsonBody ?? ''),
                                  );
                                  _model.actividades =
                                      ReporteStdCall.evolActividades(
                                    (_model.api7dias?.jsonBody ?? ''),
                                  );
                                  _model.actInicio = ReporteStdCall.actInicio(
                                    (_model.api7dias?.jsonBody ?? ''),
                                  )?.toString();
                                  _model.actFin = ReporteStdCall.actFin(
                                    (_model.api7dias?.jsonBody ?? ''),
                                  )?.toString();
                                  _model.evoSintomas =
                                      ReporteStdCall.evolucionSintomas(
                                    (_model.api7dias?.jsonBody ?? ''),
                                  );
                                  _model.evoSintInicio =
                                      ReporteStdCall.sintInicio(
                                    (_model.api7dias?.jsonBody ?? ''),
                                  )?.toString();
                                  _model.evoSintomasFin =
                                      ReporteStdCall.sintFinal(
                                    (_model.api7dias?.jsonBody ?? ''),
                                  )?.toString();
                                  _model.solucion =
                                      ReporteStdCall.mejorSolucion(
                                    (_model.api7dias?.jsonBody ?? ''),
                                  );
                                  _model.med1 = ReporteStdCall.mejorMed(
                                    (_model.api7dias?.jsonBody ?? ''),
                                  );
                                  _model.sup1 = ReporteStdCall.mejorSup(
                                    (_model.api7dias?.jsonBody ?? ''),
                                  );
                                  _model.diasSintomasInto =
                                      ReporteStdCall.cantDiasInto(
                                    (_model.api7dias?.jsonBody ?? ''),
                                  )?.toString();
                                  _model.porcentajeDias =
                                      ReporteStdCall.porcentajeDiasInto(
                                    (_model.api7dias?.jsonBody ?? ''),
                                  )?.toString();
                                  _model.promedioHoras =
                                      ReporteStdCall.promedioHoras(
                                    (_model.api7dias?.jsonBody ?? ''),
                                  )?.toString();
                                  _model.promedioCalidad =
                                      ReporteStdCall.promedioCalidad(
                                    (_model.api7dias?.jsonBody ?? ''),
                                  )?.toString();
                                  _model.estrategiaSueno =
                                      ReporteStdCall.suenoEstrategia(
                                    (_model.api7dias?.jsonBody ?? ''),
                                  );
                                  _model.medSueno = ReporteStdCall.suenoMed(
                                    (_model.api7dias?.jsonBody ?? ''),
                                  );
                                  _model.supSueno = ReporteStdCall.suenoSup(
                                    (_model.api7dias?.jsonBody ?? ''),
                                  );
                                  _model.diasReporte = '7';
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
                                        'cn2e8nnv' /* 7 Días */,
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
                                  _model.rango = 2;
                                  _model.generando = 'si';
                                  _model.mostrarDatos = 'no';
                                  safeSetState(() {});
                                  _model.api30dias = await ReporteStdCall.call(
                                    dias: 30,
                                    authToken: FFAppState().authToken,
                                  );

                                  _model.promedioEnergia =
                                      ReporteStdCall.promedioEnergia(
                                    (_model.api30dias?.jsonBody ?? ''),
                                  );
                                  _model.momentoEnergia =
                                      ReporteStdCall.momentoEnergia(
                                    (_model.api30dias?.jsonBody ?? ''),
                                  );
                                  _model.promedioDolor =
                                      ReporteStdCall.promedioDolor(
                                    (_model.api30dias?.jsonBody ?? ''),
                                  );
                                  _model.actividades =
                                      ReporteStdCall.evolActividades(
                                    (_model.api30dias?.jsonBody ?? ''),
                                  );
                                  _model.actInicio = ReporteStdCall.actInicio(
                                    (_model.api30dias?.jsonBody ?? ''),
                                  )?.toString();
                                  _model.actFin = ReporteStdCall.actFin(
                                    (_model.api30dias?.jsonBody ?? ''),
                                  )?.toString();
                                  _model.evoSintomas =
                                      ReporteStdCall.evolucionSintomas(
                                    (_model.api30dias?.jsonBody ?? ''),
                                  );
                                  _model.evoSintInicio =
                                      ReporteStdCall.sintInicio(
                                    (_model.api30dias?.jsonBody ?? ''),
                                  )?.toString();
                                  _model.evoSintomasFin =
                                      ReporteStdCall.sintFinal(
                                    (_model.api30dias?.jsonBody ?? ''),
                                  )?.toString();
                                  _model.solucion =
                                      ReporteStdCall.mejorSolucion(
                                    (_model.api30dias?.jsonBody ?? ''),
                                  );
                                  _model.med1 = ReporteStdCall.mejorMed(
                                    (_model.api30dias?.jsonBody ?? ''),
                                  );
                                  _model.sup1 = ReporteStdCall.mejorSup(
                                    (_model.api30dias?.jsonBody ?? ''),
                                  );
                                  _model.diasSintomasInto =
                                      ReporteStdCall.cantDiasInto(
                                    (_model.api30dias?.jsonBody ?? ''),
                                  )?.toString();
                                  _model.porcentajeDias =
                                      ReporteStdCall.porcentajeDiasInto(
                                    (_model.api30dias?.jsonBody ?? ''),
                                  )?.toString();
                                  _model.promedioHoras =
                                      ReporteStdCall.promedioHoras(
                                    (_model.api30dias?.jsonBody ?? ''),
                                  )?.toString();
                                  _model.promedioCalidad =
                                      ReporteStdCall.promedioCalidad(
                                    (_model.api30dias?.jsonBody ?? ''),
                                  )?.toString();
                                  _model.estrategiaSueno =
                                      ReporteStdCall.suenoEstrategia(
                                    (_model.api30dias?.jsonBody ?? ''),
                                  );
                                  _model.medSueno = ReporteStdCall.suenoMed(
                                    (_model.api30dias?.jsonBody ?? ''),
                                  );
                                  _model.supSueno = ReporteStdCall.suenoSup(
                                    (_model.api30dias?.jsonBody ?? ''),
                                  );
                                  _model.diasReporte = '30';
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
                                        '1mi5atx2' /* 30 Días */,
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
                                        'alepwlal' /* Personalizado */,
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
                                  'bav25zyf' /* Fecha de Inicio */,
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
                                  'm9xg6yaq' /* Fecha de Fin */,
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
                                    _model.apiCus = await ReporteCusCall.call(
                                      authToken: FFAppState().authToken,
                                      userId: FFAppState().xUserId,
                                      dias: 1,
                                      fechaInicio: _model
                                          .fechaInicio?.millisecondsSinceEpoch
                                          ?.toString(),
                                      fechaFin: _model
                                          .fechaFin?.millisecondsSinceEpoch
                                          ?.toString(),
                                      sessionId: FFAppState().xUserId,
                                    );

                                    if ((_model.apiCus?.succeeded ?? true)) {
                                      _model.apiCUSresult =
                                          await ReporteCusCargaCall.call(
                                        sessionId: FFAppState().xUserId,
                                        authToken: FFAppState().authToken,
                                      );

                                      _model.promedioEnergia =
                                          ReporteCusCargaCall.promedioEnergia(
                                        (_model.apiCUSresult?.jsonBody ?? ''),
                                      );
                                      _model.promedioDolor =
                                          ReporteCusCargaCall.promedioDolor(
                                        (_model.apiCUSresult?.jsonBody ?? ''),
                                      );
                                      _model.momentoEnergia =
                                          ReporteCusCargaCall.momentoEnergia(
                                        (_model.apiCUSresult?.jsonBody ?? ''),
                                      );
                                      _model.actividades =
                                          ReporteCusCargaCall.evolActividades(
                                        (_model.apiCUSresult?.jsonBody ?? ''),
                                      );
                                      _model.actInicio =
                                          ReporteCusCargaCall.actInicio(
                                        (_model.apiCUSresult?.jsonBody ?? ''),
                                      )?.toString();
                                      _model.actFin =
                                          ReporteCusCargaCall.actFin(
                                        (_model.apiCUSresult?.jsonBody ?? ''),
                                      )?.toString();
                                      _model.evoSintomas =
                                          ReporteCusCargaCall.evolucionSintomas(
                                        (_model.apiCUSresult?.jsonBody ?? ''),
                                      );
                                      _model.evoSintInicio =
                                          ReporteCusCargaCall.sintInicio(
                                        (_model.apiCUSresult?.jsonBody ?? ''),
                                      )?.toString();
                                      _model.evoSintomasFin =
                                          ReporteCusCargaCall.sintFinal(
                                        (_model.apiCUSresult?.jsonBody ?? ''),
                                      )?.toString();
                                      _model.solucion =
                                          ReporteCusCargaCall.mejorSolucion(
                                        (_model.apiCUSresult?.jsonBody ?? ''),
                                      );
                                      _model.med1 =
                                          ReporteCusCargaCall.mejorMed(
                                        (_model.apiCUSresult?.jsonBody ?? ''),
                                      );
                                      _model.sup1 =
                                          ReporteCusCargaCall.mejorSup(
                                        (_model.apiCUSresult?.jsonBody ?? ''),
                                      );
                                      _model.diasSintomasInto =
                                          ReporteCusCargaCall.cantDiasInto(
                                        (_model.apiCUSresult?.jsonBody ?? ''),
                                      )?.toString();
                                      _model.porcentajeDias =
                                          ReporteCusCargaCall
                                              .porcentajeDiasInto(
                                        (_model.apiCUSresult?.jsonBody ?? ''),
                                      )?.toString();
                                      _model.promedioHoras =
                                          ReporteCusCargaCall.promedioHoras(
                                        (_model.apiCUSresult?.jsonBody ?? ''),
                                      )?.toString();
                                      _model.promedioCalidad =
                                          ReporteCusCargaCall.promedioCalidad(
                                        (_model.apiCUSresult?.jsonBody ?? ''),
                                      )?.toString();
                                      _model.estrategiaSueno =
                                          ReporteCusCargaCall.suenoEstrategia(
                                        (_model.apiCUSresult?.jsonBody ?? ''),
                                      );
                                      _model.medSueno =
                                          ReporteCusCargaCall.suenoMed(
                                        (_model.apiCUSresult?.jsonBody ?? ''),
                                      );
                                      _model.diasReporte =
                                          ReporteCusCargaCall.dias(
                                        (_model.apiCUSresult?.jsonBody ?? ''),
                                      )?.toString();
                                      _model.supSueno =
                                          ReporteCusCargaCall.suenoSup(
                                        (_model.apiCUSresult?.jsonBody ?? ''),
                                      );
                                      _model.generando = 'no';
                                      _model.mostrarDatos = 'si';
                                      safeSetState(() {});
                                    }

                                    safeSetState(() {});
                                  },
                            text: FFLocalizations.of(context).getText(
                              'vndepwwe' /* Generar Reporte */,
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
                                        's1nimqrz' /* Promedio de Energía */,
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
                                  '${valueOrDefault<String>(
                                    _model.promedioEnergia?.toString(),
                                    '0',
                                  )} %',
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
                          if (_model.momentoEnergia != null &&
                              _model.momentoEnergia != '')
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                      'Has tenido menos energía en las ${_model.momentoEnergia}',
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
                          if (_model.momentoEnergia == null ||
                              _model.momentoEnergia == '')
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (_model.momentoEnergia == null ||
                                      _model.momentoEnergia == '')
                                    Flexible(
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'kv7t0m9x' /* De media, no se registran vari... */,
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
                  if (_model.mostrarDatos == 'si')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
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
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '7did0x1d' /* Promedio Intensidad de Dolor */,
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
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 10.0),
                              child: Container(
                                width: 150.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 10.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        _model.promedioDolor?.toString(),
                                        '0',
                                      ),
                                      textAlign: TextAlign.center,
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (_model.mostrarDatos == 'si')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
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
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'z2qr4zqr' /* Actividades */,
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
                                      FFLocalizations.of(context).getText(
                                        '47mctlva' /* En cuanto a las actividades qu... */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 10.0),
                              child: Container(
                                width: 150.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 10.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        _model.actividades,
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
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 5.0, 10.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'xj2kdvjs' /* Cantidad de actividades realiz... */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          TextSpan(
                                            text: valueOrDefault<String>(
                                              _model.actInicio,
                                              '-',
                                            ),
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.0,
                                            ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      textAlign: TextAlign.center,
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
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              '4hyu3d09' /* Cantidad de actividades realiz... */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          TextSpan(
                                            text: valueOrDefault<String>(
                                              _model.actFin,
                                              '-',
                                            ),
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.0,
                                            ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (_model.mostrarDatos == 'si')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
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
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '57ykt3p1' /* Evolución de síntomas */,
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
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 10.0),
                              child: Container(
                                width: 150.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 10.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        _model.evoSintomas,
                                        '-',
                                      ),
                                      textAlign: TextAlign.center,
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
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 5.0, 10.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              '460cvmas' /* Cantidad síntomas al inicio:  */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          TextSpan(
                                            text: valueOrDefault<String>(
                                              _model.evoSintInicio,
                                              '-',
                                            ),
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.0,
                                            ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      textAlign: TextAlign.center,
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
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'hxz29669' /* Cantidad de síntomas al final:... */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          TextSpan(
                                            text: valueOrDefault<String>(
                                              _model.evoSintomasFin,
                                              '-',
                                            ),
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.0,
                                            ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (_model.mostrarDatos == 'si')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
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
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'gx9uglew' /* Solución que mejor te ha funci... */,
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
                                      valueOrDefault<String>(
                                        _model.solucion,
                                        '-',
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
                          ],
                        ),
                      ),
                    ),
                  if (_model.mostrarDatos == 'si')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
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
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'cahcncyw' /* Medicamento que mejor te ha fu... */,
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
                                      valueOrDefault<String>(
                                        _model.med1,
                                        '-',
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
                          ],
                        ),
                      ),
                    ),
                  if (_model.mostrarDatos == 'si')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
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
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'pwo6tp63' /* Suplemento que mejor te ha fun... */,
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
                                      valueOrDefault<String>(
                                        _model.sup1,
                                        '-',
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
                          ],
                        ),
                      ),
                    ),
                  if (_model.mostrarDatos == 'si')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
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
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'cxuwwe35' /* Cantidad de días que has tenid... */,
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
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 10.0),
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
                                    '${valueOrDefault<String>(
                                      _model.diasSintomasInto,
                                      '0',
                                    )} de ${_model.diasReporte}',
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
                                  10.0, 5.0, 10.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: valueOrDefault<String>(
                                              _model.porcentajeDias,
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          TextSpan(
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              '4iizs6lx' /*  %  */,
                                            ),
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'pm9r7tky' /* de los días */,
                                            ),
                                            style: TextStyle(),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (_model.mostrarDatos == 'si')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
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
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'dq308fjo' /* Promedio de horas dormidas */,
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
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 10.0),
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
                                      _model.promedioHoras,
                                      '-',
                                    ),
                                    textAlign: TextAlign.center,
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
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
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
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'gbrowyhb' /* Promedio de calidad del sueño */,
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
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 10.0),
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
                                      _model.promedioCalidad,
                                      '-',
                                    ),
                                    textAlign: TextAlign.center,
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
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
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
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'bnnqvmuk' /* Estrategia que mejor ha funcio... */,
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
                                      valueOrDefault<String>(
                                        _model.estrategiaSueno,
                                        '-',
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
                          ],
                        ),
                      ),
                    ),
                  if (_model.mostrarDatos == 'si')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
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
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'b9g0un5i' /* Medicamento que mejor ha funci... */,
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
                                      valueOrDefault<String>(
                                        _model.medSueno,
                                        '-',
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
                          ],
                        ),
                      ),
                    ),
                  if (_model.mostrarDatos == 'si')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
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
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'cahuxd2t' /* Suplemento que mejor ha funcio... */,
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
                                      valueOrDefault<String>(
                                        _model.supSueno,
                                        '-',
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
                          ],
                        ),
                      ),
                    ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(
                              'reporteIntolerancias',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                ),
                              },
                            );
                          },
                          text: FFLocalizations.of(context).getText(
                            'xkvbqd7k' /* Ver Reporte de intolerancias */,
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () => FocusScope.of(context).unfocus(),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: ModalPDFWidget(),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          text: FFLocalizations.of(context).getText(
                            '4qfabyts' /* Generar Reporte PDF */,
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
                          ),
                        ),
                      ],
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
