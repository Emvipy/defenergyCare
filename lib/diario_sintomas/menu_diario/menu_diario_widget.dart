import '/backend/api_requests/api_calls.dart';
import '/diario_sintomas/modal_info_crear/modal_info_crear_widget.dart';
import '/diario_sintomas/modal_info_duplicar/modal_info_duplicar_widget.dart';
import '/diario_sintomas/modal_info_editar/modal_info_editar_widget.dart';
import '/diario_sintomas/modal_info_finalizar/modal_info_finalizar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_diario_model.dart';
export 'menu_diario_model.dart';

class MenuDiarioWidget extends StatefulWidget {
  const MenuDiarioWidget({super.key});

  @override
  State<MenuDiarioWidget> createState() => _MenuDiarioWidgetState();
}

class _MenuDiarioWidgetState extends State<MenuDiarioWidget> {
  late MenuDiarioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuDiarioModel());
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
      future: (_model.apiRequestCompleter ??= Completer<ApiCallResponse>()
            ..complete(DiarioInfoSelectorCall.call(
              authToken: FFAppState().authToken,
            )))
          .future,
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
        final menuDiarioDiarioInfoSelectorResponse = snapshot.data!;

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
              title: Text(
                FFLocalizations.of(context).getText(
                  'gjihg8om' /* Diario de Síntomas */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
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
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, -1.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '3i4i9mgm' /* Selecciona una opción */,
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 3.0, 15.0, 5.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, -1.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'o6x1qx7s' /* Las opciones solo estarán disp... */,
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: (DiarioInfoSelectorCall.diarioHoyHecho(
                                      menuDiarioDiarioInfoSelectorResponse
                                          .jsonBody,
                                    ) !=
                                    'si') &&
                                (DiarioInfoSelectorCall.diarioFinalizar(
                                      menuDiarioDiarioInfoSelectorResponse
                                          .jsonBody,
                                    ) !=
                                    'si')
                            ? 1.0
                            : 0.5,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Container(
                            width: 335.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).rosaHome,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Flexible(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          ModalInfoCrearWidget(),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: Icon(
                                              Icons.more_vert,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 5.0, 5.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if ((DiarioInfoSelectorCall
                                                  .diarioHoyHecho(
                                                menuDiarioDiarioInfoSelectorResponse
                                                    .jsonBody,
                                              ) !=
                                              'si') &&
                                          (DiarioInfoSelectorCall
                                                  .diarioFinalizar(
                                                menuDiarioDiarioInfoSelectorResponse
                                                    .jsonBody,
                                              ) !=
                                              'si')) {
                                        _model.apiResultNew1 =
                                            await DiarioCreaCall.call(
                                          authToken: FFAppState().authToken,
                                        );

                                        FFAppState().diarioId =
                                            DiarioCreaCall.diarioId(
                                          (_model.apiResultNew1?.jsonBody ??
                                              ''),
                                        )!;
                                        safeSetState(() {});

                                        context.goNamed(
                                          'diario1',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                            ),
                                          },
                                        );

                                        unawaited(
                                          () async {
                                            await UserLogActivityCall.call(
                                              authToken: FFAppState().authToken,
                                              seccion:
                                                  'Acceso Crear Diario Sintomas desde Menú Diario',
                                            );
                                          }(),
                                        );
                                      }

                                      safeSetState(() {});
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Icon(
                                              Icons.add_circle_outline,
                                              color: (DiarioInfoSelectorCall
                                                              .diarioHoyHecho(
                                                            menuDiarioDiarioInfoSelectorResponse
                                                                .jsonBody,
                                                          ) !=
                                                          'si') &&
                                                      (DiarioInfoSelectorCall
                                                              .diarioFinalizar(
                                                            menuDiarioDiarioInfoSelectorResponse
                                                                .jsonBody,
                                                          ) !=
                                                          'si')
                                                  ? FlutterFlowTheme.of(context)
                                                      .primaryText
                                                  : FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 30.0,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'mm2i90zh' /* Crear el diario de hoy */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: (DiarioInfoSelectorCall
                                                                  .diarioHoyHecho(
                                                                menuDiarioDiarioInfoSelectorResponse
                                                                    .jsonBody,
                                                              ) !=
                                                              'si') &&
                                                          (DiarioInfoSelectorCall
                                                                  .diarioFinalizar(
                                                                menuDiarioDiarioInfoSelectorResponse
                                                                    .jsonBody,
                                                              ) !=
                                                              'si')
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  fontSize: 18.0,
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
                      ),
                      Opacity(
                        opacity: (DiarioInfoSelectorCall.diarioHoyHecho(
                                      menuDiarioDiarioInfoSelectorResponse
                                          .jsonBody,
                                    ) !=
                                    'si') &&
                                (DiarioInfoSelectorCall.diarioFinalizar(
                                      menuDiarioDiarioInfoSelectorResponse
                                          .jsonBody,
                                    ) !=
                                    'si') &&
                                (DiarioInfoSelectorCall.idDiarioEditar(
                                      menuDiarioDiarioInfoSelectorResponse
                                          .jsonBody,
                                    )! >=
                                    1)
                            ? 1.0
                            : 0.5,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Container(
                            width: 335.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).rosaHome,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Flexible(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          ModalInfoDuplicarWidget(),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: Icon(
                                              Icons.more_vert,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 5.0, 5.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if ((DiarioInfoSelectorCall
                                                  .diarioHoyHecho(
                                                menuDiarioDiarioInfoSelectorResponse
                                                    .jsonBody,
                                              ) !=
                                              'si') &&
                                          (DiarioInfoSelectorCall
                                                  .diarioFinalizar(
                                                menuDiarioDiarioInfoSelectorResponse
                                                    .jsonBody,
                                              ) !=
                                              'si') &&
                                          (DiarioInfoSelectorCall
                                                  .idDiarioEditar(
                                                menuDiarioDiarioInfoSelectorResponse
                                                    .jsonBody,
                                              )! >=
                                              1)) {
                                        _model.apiResult2lr =
                                            await DiarioDuplicaCall.call(
                                          authToken: FFAppState().authToken,
                                        );

                                        if ((_model.apiResult2lr?.succeeded ??
                                            true)) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'DIario duplicado!',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                          safeSetState(() => _model
                                              .apiRequestCompleter = null);
                                          await _model
                                              .waitForApiRequestCompleted();
                                          unawaited(
                                            () async {
                                              await UserLogActivityCall.call(
                                                authToken:
                                                    FFAppState().authToken,
                                                seccion:
                                                    'Acceso Replicar Diario Sintomas desde Menú Diario',
                                              );
                                            }(),
                                          );
                                        }
                                      }

                                      safeSetState(() {});
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Icon(
                                              Icons.content_copy_rounded,
                                              color: (DiarioInfoSelectorCall
                                                              .diarioHoyHecho(
                                                            menuDiarioDiarioInfoSelectorResponse
                                                                .jsonBody,
                                                          ) !=
                                                          'si') &&
                                                      (DiarioInfoSelectorCall
                                                              .diarioFinalizar(
                                                            menuDiarioDiarioInfoSelectorResponse
                                                                .jsonBody,
                                                          ) !=
                                                          'si')
                                                  ? FlutterFlowTheme.of(context)
                                                      .primaryText
                                                  : FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '0m10o1re' /* Replicar el último diario */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: (DiarioInfoSelectorCall
                                                                  .diarioHoyHecho(
                                                                menuDiarioDiarioInfoSelectorResponse
                                                                    .jsonBody,
                                                              ) !=
                                                              'si') &&
                                                          (DiarioInfoSelectorCall
                                                                  .diarioFinalizar(
                                                                menuDiarioDiarioInfoSelectorResponse
                                                                    .jsonBody,
                                                              ) !=
                                                              'si')
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  fontSize: 18.0,
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
                      ),
                      Opacity(
                        opacity: DiarioInfoSelectorCall.diarioParaEditar(
                                  menuDiarioDiarioInfoSelectorResponse.jsonBody,
                                ) ==
                                'si'
                            ? 1.0
                            : 0.5,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Container(
                            width: 335.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).rosaHome,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Flexible(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          ModalInfoEditarWidget(),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: Icon(
                                              Icons.more_vert,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 5.0, 5.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (DiarioInfoSelectorCall
                                              .diarioParaEditar(
                                            menuDiarioDiarioInfoSelectorResponse
                                                .jsonBody,
                                          ) ==
                                          'si') {
                                        FFAppState().diarioId =
                                            DiarioInfoSelectorCall
                                                .idDiarioEditar(
                                          menuDiarioDiarioInfoSelectorResponse
                                              .jsonBody,
                                        )!;
                                        FFAppState().editandoDiario = 'si';

                                        context.pushNamed(
                                          'diario1',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                            ),
                                          },
                                        );

                                        unawaited(
                                          () async {
                                            await UserLogActivityCall.call(
                                              authToken: FFAppState().authToken,
                                              seccion:
                                                  'Acceso Editar Diario Sintomas desde Menú Diario',
                                            );
                                          }(),
                                        );
                                      }
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Icon(
                                              Icons.edit_road_rounded,
                                              color: DiarioInfoSelectorCall
                                                          .diarioParaEditar(
                                                        menuDiarioDiarioInfoSelectorResponse
                                                            .jsonBody,
                                                      ) ==
                                                      'si'
                                                  ? FlutterFlowTheme.of(context)
                                                      .primaryText
                                                  : FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'fy8r68df' /* Editar el último diario */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: DiarioInfoSelectorCall
                                                              .diarioParaEditar(
                                                            menuDiarioDiarioInfoSelectorResponse
                                                                .jsonBody,
                                                          ) ==
                                                          'si'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  fontSize: 18.0,
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
                      ),
                      Opacity(
                        opacity: DiarioInfoSelectorCall.diarioFinalizar(
                                  menuDiarioDiarioInfoSelectorResponse.jsonBody,
                                ) ==
                                'si'
                            ? 1.0
                            : 0.5,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Container(
                            width: 335.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).rosaHome,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Flexible(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          ModalInfoFinalizarWidget(),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: Icon(
                                              Icons.more_vert,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 5.0, 5.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (DiarioInfoSelectorCall
                                              .diarioFinalizar(
                                            menuDiarioDiarioInfoSelectorResponse
                                                .jsonBody,
                                          ) ==
                                          'si') {
                                        FFAppState().diarioId =
                                            DiarioInfoSelectorCall
                                                .idDiarioFinalizar(
                                          menuDiarioDiarioInfoSelectorResponse
                                              .jsonBody,
                                        )!;
                                        safeSetState(() {});
                                        unawaited(
                                          () async {
                                            await UserLogActivityCall.call(
                                              authToken: FFAppState().authToken,
                                              seccion:
                                                  'Acceso Finalizar Diario Sintomas desde Menú Diario',
                                            );
                                          }(),
                                        );
                                        if (DiarioInfoSelectorCall
                                                .ultimaPantalla(
                                              menuDiarioDiarioInfoSelectorResponse
                                                  .jsonBody,
                                            ) ==
                                            'p1') {
                                          context.goNamed(
                                            'diario1',
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
                                          if (DiarioInfoSelectorCall
                                                  .ultimaPantalla(
                                                menuDiarioDiarioInfoSelectorResponse
                                                    .jsonBody,
                                              ) ==
                                              'p2') {
                                            context.goNamed(
                                              'diario2',
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
                                            if (DiarioInfoSelectorCall
                                                    .ultimaPantalla(
                                                  menuDiarioDiarioInfoSelectorResponse
                                                      .jsonBody,
                                                ) ==
                                                'p3') {
                                              context.goNamed(
                                                'diario3',
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
                                              if (DiarioInfoSelectorCall
                                                      .ultimaPantalla(
                                                    menuDiarioDiarioInfoSelectorResponse
                                                        .jsonBody,
                                                  ) ==
                                                  'p4') {
                                                context.goNamed(
                                                  'diario4',
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
                                              } else {
                                                if (DiarioInfoSelectorCall
                                                        .ultimaPantalla(
                                                      menuDiarioDiarioInfoSelectorResponse
                                                          .jsonBody,
                                                    ) ==
                                                    'p5') {
                                                  context.goNamed(
                                                    'diario5',
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
                                                } else {
                                                  if (DiarioInfoSelectorCall
                                                          .ultimaPantalla(
                                                        menuDiarioDiarioInfoSelectorResponse
                                                            .jsonBody,
                                                      ) ==
                                                      'p6') {
                                                    context.goNamed(
                                                      'diario6',
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
                                                  } else {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Error última página...',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
                                                          ),
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                      ),
                                                    );
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Icon(
                                              Icons.move_down,
                                              color: DiarioInfoSelectorCall
                                                          .diarioFinalizar(
                                                        menuDiarioDiarioInfoSelectorResponse
                                                            .jsonBody,
                                                      ) ==
                                                      'si'
                                                  ? FlutterFlowTheme.of(context)
                                                      .primaryText
                                                  : FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'qq5aoojz' /* Finalizar el último diario */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: DiarioInfoSelectorCall
                                                              .diarioFinalizar(
                                                            menuDiarioDiarioInfoSelectorResponse
                                                                .jsonBody,
                                                          ) ==
                                                          'si'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  fontSize: 18.0,
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
                      ),
                    ].addToEnd(SizedBox(height: 30.0)),
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
      },
    );
  }
}
