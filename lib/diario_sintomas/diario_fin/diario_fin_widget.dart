import '/backend/api_requests/api_calls.dart';
import '/diario_sintomas/modal_push/modal_push_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'diario_fin_model.dart';
export 'diario_fin_model.dart';

class DiarioFinWidget extends StatefulWidget {
  const DiarioFinWidget({super.key});

  @override
  State<DiarioFinWidget> createState() => _DiarioFinWidgetState();
}

class _DiarioFinWidgetState extends State<DiarioFinWidget> {
  late DiarioFinModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiarioFinModel());
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
      future: DiarioPantallaFinalCall.call(
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
        final diarioFinDiarioPantallaFinalResponse = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
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
                    'xvg4soab' /* Diario de Síntomas */,
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
                  if (DiarioPantallaFinalCall.ranking(
                        diarioFinDiarioPantallaFinalResponse.jsonBody,
                      ) ==
                      'Crea tu primer diario para participar')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Container(
                        width: 397.0,
                        height: 293.0,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 10.0, 15.0, 10.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'qmqu3sky' /* ¡Gracias por tu contribución! ... */,
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
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/gracias.png',
                                width: 300.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (DiarioPantallaFinalCall.ranking(
                        diarioFinDiarioPantallaFinalResponse.jsonBody,
                      ) !=
                      'Crea tu primer diario para participar')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Container(
                        width: 397.0,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 1.0),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: valueOrDefault<String>(
                                        DiarioPantallaFinalCall.ranking(
                                          diarioFinDiarioPantallaFinalResponse
                                              .jsonBody,
                                        ),
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    TextSpan(
                                      text: FFLocalizations.of(context).getText(
                                        'lw4xfulm' /* 
 Es tu posición en el ranking... */
                                        ,
                                      ),
                                      style: TextStyle(
                                        fontSize: 16.0,
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
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/ranking.png',
                                width: 300.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
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

                        FFAppState().deleteDiarioUltimoMed1();
                        FFAppState().diarioUltimoMed1 = '';

                        FFAppState().deleteDiarioUltimoMed2();
                        FFAppState().diarioUltimoMed2 = '';

                        FFAppState().deleteDiarioUltimoSup1();
                        FFAppState().diarioUltimoSup1 = '';

                        FFAppState().deleteDiarioUltimoSup2();
                        FFAppState().diarioUltimoSup2 = '';

                        FFAppState().deleteDiarioUltimoSup3();
                        FFAppState().diarioUltimoSup3 = '';

                        FFAppState().deleteTmpCantidadSuplementos();
                        FFAppState().tmpCantidadSuplementos = 0;

                        if (DiarioPantallaFinalCall.mensajePush(
                              diarioFinDiarioPantallaFinalResponse.jsonBody,
                            ) ==
                            'si') {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            isDismissible: false,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return GestureDetector(
                                onTap: () => FocusScope.of(context).unfocus(),
                                child: Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: ModalPushWidget(),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        } else {
                          context.goNamed(
                            'Home',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                              ),
                            },
                          );
                        }
                      },
                      text: FFLocalizations.of(context).getText(
                        '5iux48nb' /* Finalizar */,
                      ),
                      options: FFButtonOptions(
                        width: 300.0,
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
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
