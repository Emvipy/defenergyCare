import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'resumen_sueno_model.dart';
export 'resumen_sueno_model.dart';

class ResumenSuenoWidget extends StatefulWidget {
  const ResumenSuenoWidget({
    super.key,
    required this.diarioId,
    required this.fechaTxt,
  });

  final int? diarioId;
  final String? fechaTxt;

  @override
  State<ResumenSuenoWidget> createState() => _ResumenSuenoWidgetState();
}

class _ResumenSuenoWidgetState extends State<ResumenSuenoWidget> {
  late ResumenSuenoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResumenSuenoModel());
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
      future: ResumenSuenoCall.call(
        id: widget!.diarioId,
        authToken: FFAppState().authToken,
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
        final resumenSuenoResumenSuenoResponse = snapshot.data!;

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
                    context.pop();
                  },
                ),
                title: Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'ii6k49r0' /* Resumen de Sueño */,
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Datos de fecha: ${widget!.fechaTxt}',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 15.0, 10.0, 3.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'xqm5ik06' /* Has dormido */,
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 15.0, 10.0, 3.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 100.0,
                                  height: 85.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Flexible(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                ResumenSuenoCall.horasSueno(
                                                  resumenSuenoResumenSuenoResponse
                                                      .jsonBody,
                                                )?.toString(),
                                                '0',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    fontSize: 28.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 5.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'bfxdpk98' /* horas */,
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
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 15.0, 10.0, 3.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '04oczcif' /* Esta fue tu calidad de sueño */,
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 3.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    valueOrDefault<String>(
                                      ResumenSuenoCall.calidad(
                                        resumenSuenoResumenSuenoResponse
                                            .jsonBody,
                                      ),
                                      '-',
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
                                0.0, 5.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    ResumenSuenoCall.caraUrl(
                                      resumenSuenoResumenSuenoResponse.jsonBody,
                                    )!,
                                    width: 80.0,
                                    height: 80.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 15.0, 10.0, 3.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'piyx5myn' /* Estrategias utilizadas para do... */,
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 0.0),
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
                                                      color: ResumenSuenoCall
                                                                  .estCuartoOscuro(
                                                                resumenSuenoResumenSuenoResponse
                                                                    .jsonBody,
                                                              ) ==
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
                                                          'assets/images/oscuro.png',
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'fgsuygbf' /* Cuarto
Oscuro */
                                                    ,
                                                  ),
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: ResumenSuenoCall
                                                                        .estCuartoOscuro(
                                                                      resumenSuenoResumenSuenoResponse
                                                                          .jsonBody,
                                                                    ) ==
                                                                    'si'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                            fontSize: 13.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
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
                                                      color: ResumenSuenoCall
                                                                  .estAntifaz(
                                                                resumenSuenoResumenSuenoResponse
                                                                    .jsonBody,
                                                              ) ==
                                                              'si'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .azulPerm
                                                          : Color(0x00000000),
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Opacity(
                                                      opacity: ResumenSuenoCall
                                                                  .estAntifaz(
                                                                resumenSuenoResumenSuenoResponse
                                                                    .jsonBody,
                                                              ) ==
                                                              'si'
                                                          ? 1.0
                                                          : 0.5,
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
                                                            'assets/images/antifaz.png',
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '10afn74e' /* Antifaz para
dormir */
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
                                                            color: ResumenSuenoCall
                                                                        .estAntifaz(
                                                                      resumenSuenoResumenSuenoResponse
                                                                          .jsonBody,
                                                                    ) ==
                                                                    'si'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                            fontSize: 13.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
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
                                                      color: ResumenSuenoCall
                                                                  .estTapones(
                                                                resumenSuenoResumenSuenoResponse
                                                                    .jsonBody,
                                                              ) ==
                                                              'si'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .azulPerm
                                                          : Color(0x00000000),
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Opacity(
                                                      opacity: ResumenSuenoCall
                                                                  .estTapones(
                                                                resumenSuenoResumenSuenoResponse
                                                                    .jsonBody,
                                                              ) ==
                                                              'si'
                                                          ? 1.0
                                                          : 0.5,
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
                                                            'assets/images/tapones.png',
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'elui4vpu' /* Tapones para
dormir */
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
                                                              color: ResumenSuenoCall
                                                                          .estTapones(
                                                                        resumenSuenoResumenSuenoResponse
                                                                            .jsonBody,
                                                                      ) ==
                                                                      'si'
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
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
                                                      color: ResumenSuenoCall
                                                                  .estMovil(
                                                                resumenSuenoResumenSuenoResponse
                                                                    .jsonBody,
                                                              ) ==
                                                              'si'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .azulPerm
                                                          : Color(0x00000000),
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Opacity(
                                                      opacity: ResumenSuenoCall
                                                                  .estMovil(
                                                                resumenSuenoResumenSuenoResponse
                                                                    .jsonBody,
                                                              ) ==
                                                              'si'
                                                          ? 1.0
                                                          : 0.5,
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
                                                            'assets/images/movil.png',
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0906hvx8' /* No usar  el
móvil */
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
                                                              color: ResumenSuenoCall
                                                                          .estMovil(
                                                                        resumenSuenoResumenSuenoResponse
                                                                            .jsonBody,
                                                                      ) ==
                                                                      'si'
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
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
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
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
                                                      color: ResumenSuenoCall
                                                                  .estCane(
                                                                resumenSuenoResumenSuenoResponse
                                                                    .jsonBody,
                                                              ) ==
                                                              'si'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .azulPerm
                                                          : Color(0x00000000),
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Opacity(
                                                      opacity: ResumenSuenoCall
                                                                  .estCane(
                                                                resumenSuenoResumenSuenoResponse
                                                                    .jsonBody,
                                                              ) ==
                                                              'si'
                                                          ? 1.0
                                                          : 0.5,
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
                                                            'assets/images/cena.png',
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'yood4s07' /* Cenar ligero */,
                                                  ),
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: ResumenSuenoCall
                                                                        .estCane(
                                                                      resumenSuenoResumenSuenoResponse
                                                                          .jsonBody,
                                                                    ) ==
                                                                    'si'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                            fontSize: 13.0,
                                                            letterSpacing: 0.0,
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
                                    padding: EdgeInsets.all(5.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
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
                                                      color: ResumenSuenoCall
                                                                  .estOtras(
                                                                resumenSuenoResumenSuenoResponse
                                                                    .jsonBody,
                                                              ) ==
                                                              'si'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .azulPerm
                                                          : Color(0x00000000),
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Opacity(
                                                      opacity: ResumenSuenoCall
                                                                  .estOtras(
                                                                resumenSuenoResumenSuenoResponse
                                                                    .jsonBody,
                                                              ) ==
                                                              'si'
                                                          ? 1.0
                                                          : 0.5,
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
                                                            'assets/images/otras.png',
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'znbh6r0x' /* Otras */,
                                                  ),
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: ResumenSuenoCall
                                                                        .estOtras(
                                                                      resumenSuenoResumenSuenoResponse
                                                                          .jsonBody,
                                                                    ) ==
                                                                    'si'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                            fontSize: 13.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
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
                                                      color: ResumenSuenoCall
                                                                  .estSin(
                                                                resumenSuenoResumenSuenoResponse
                                                                    .jsonBody,
                                                              ) ==
                                                              'si'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .azulPerm
                                                          : Color(0x00000000),
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Opacity(
                                                      opacity: ResumenSuenoCall
                                                                  .estSin(
                                                                resumenSuenoResumenSuenoResponse
                                                                    .jsonBody,
                                                              ) ==
                                                              'si'
                                                          ? 1.0
                                                          : 0.5,
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
                                                            'assets/images/nada.png',
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'q6zvpk0z' /* No he probado ninguna */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: ResumenSuenoCall
                                                                          .estSin(
                                                                        resumenSuenoResumenSuenoResponse
                                                                            .jsonBody,
                                                                      ) ==
                                                                      'si'
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
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
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if ((ResumenSuenoCall.medDormir(
                                    resumenSuenoResumenSuenoResponse.jsonBody,
                                  ) ==
                                  'no') &&
                              (ResumenSuenoCall.supDormir(
                                    resumenSuenoResumenSuenoResponse.jsonBody,
                                  ) ==
                                  'no'))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 15.0, 10.0, 3.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '20ywux47' /* No has utilizado ningún medica... */,
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
                          if ((ResumenSuenoCall.medDormir(
                                    resumenSuenoResumenSuenoResponse.jsonBody,
                                  ) ==
                                  'si') &&
                              (FFLocalizations.of(context).languageCode ==
                                  'es'))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 15.0, 10.0, 3.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                      'Has utilizado el medicamento ${ResumenSuenoCall.nombreMed(
                                        resumenSuenoResumenSuenoResponse
                                            .jsonBody,
                                      )} para dormir y ${ResumenSuenoCall.mejoraMedicamento(
                                            resumenSuenoResumenSuenoResponse
                                                .jsonBody,
                                          ) == 'si' ? 'si te ha ayudado.' : 'no te ha ayudado.'}',
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
                          if ((ResumenSuenoCall.medDormir(
                                    resumenSuenoResumenSuenoResponse.jsonBody,
                                  ) ==
                                  'si') &&
                              (FFLocalizations.of(context).languageCode ==
                                  'en'))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 15.0, 10.0, 3.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                      'You have used medication${ResumenSuenoCall.nombreMed(
                                        resumenSuenoResumenSuenoResponse
                                            .jsonBody,
                                      )}to sleep ${ResumenSuenoCall.mejoraMedicamento(
                                            resumenSuenoResumenSuenoResponse
                                                .jsonBody,
                                          ) == 'si' ? 'and if it has helped you.' : 'it hasn\'t helped.'}',
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
                          if ((ResumenSuenoCall.supDormir(
                                    resumenSuenoResumenSuenoResponse.jsonBody,
                                  ) ==
                                  'si') &&
                              (FFLocalizations.of(context).languageCode ==
                                  'es'))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 15.0, 10.0, 3.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                      'Has utilizado el suplemento ${ResumenSuenoCall.nombreSup(
                                        resumenSuenoResumenSuenoResponse
                                            .jsonBody,
                                      )} para dormir y ${ResumenSuenoCall.mejoraSup(
                                            resumenSuenoResumenSuenoResponse
                                                .jsonBody,
                                          ) == 'si' ? 'si te ha ayudado.' : 'no te ha ayudado.'}',
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
                          if ((ResumenSuenoCall.supDormir(
                                    resumenSuenoResumenSuenoResponse.jsonBody,
                                  ) ==
                                  'si') &&
                              (FFLocalizations.of(context).languageCode ==
                                  'en'))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 15.0, 10.0, 3.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                      'You have used supplement${ResumenSuenoCall.nombreSup(
                                        resumenSuenoResumenSuenoResponse
                                            .jsonBody,
                                      )}to sleep ${ResumenSuenoCall.mejoraSup(
                                            resumenSuenoResumenSuenoResponse
                                                .jsonBody,
                                          ) == 'si' ? 'and if it has helped you.' : 'it hasn\'t helped.'}',
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
                        ].addToEnd(SizedBox(height: 150.0)),
                      ),
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
          ),
        );
      },
    );
  }
}
