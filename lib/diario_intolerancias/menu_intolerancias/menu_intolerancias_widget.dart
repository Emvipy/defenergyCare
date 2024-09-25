import '/backend/api_requests/api_calls.dart';
import '/diario_sintomas/modal_info_crear/modal_info_crear_widget.dart';
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
import 'menu_intolerancias_model.dart';
export 'menu_intolerancias_model.dart';

class MenuIntoleranciasWidget extends StatefulWidget {
  const MenuIntoleranciasWidget({super.key});

  @override
  State<MenuIntoleranciasWidget> createState() =>
      _MenuIntoleranciasWidgetState();
}

class _MenuIntoleranciasWidgetState extends State<MenuIntoleranciasWidget> {
  late MenuIntoleranciasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuIntoleranciasModel());
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
      future: DiarioInfoSelectorCall.call(
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
        final menuIntoleranciasDiarioInfoSelectorResponse = snapshot.data!;

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
                  '8suk6cd5' /* Diario de Intolerancias */,
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
                                      'z0zmoggg' /* Selecciona una opción */,
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
                                      '4v23bzg2' /* Las opciones solo estarán disp... */,
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
                        opacity: (DiarioInfoSelectorCall.intoDiarioHechoHoy(
                                      menuIntoleranciasDiarioInfoSelectorResponse
                                          .jsonBody,
                                    ) !=
                                    'si') &&
                                (DiarioInfoSelectorCall.intoFinalizar(
                                      menuIntoleranciasDiarioInfoSelectorResponse
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
                              color: FlutterFlowTheme.of(context).resumen,
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
                                                  .intoDiarioHechoHoy(
                                                menuIntoleranciasDiarioInfoSelectorResponse
                                                    .jsonBody,
                                              ) !=
                                              'si') &&
                                          (DiarioInfoSelectorCall.intoFinalizar(
                                                menuIntoleranciasDiarioInfoSelectorResponse
                                                    .jsonBody,
                                              ) !=
                                              'si')) {
                                        _model.apiCreaInto2 =
                                            await DiarioIntoCreaCall.call(
                                          authToken: FFAppState().authToken,
                                        );

                                        FFAppState().diarioIntoId =
                                            DiarioIntoCreaCall.id(
                                          (_model.apiCreaInto2?.jsonBody ?? ''),
                                        )!;
                                        FFAppState().mostrarAyer = 'si';
                                        FFAppState().momento = 1;
                                        FFAppState().diarioIntoAnterior =
                                            DiarioInfoSelectorCall.idIntoEditar(
                                          menuIntoleranciasDiarioInfoSelectorResponse
                                              .jsonBody,
                                        )!;
                                        FFAppState().editandoDiario = 'no';
                                        FFAppState().intoCarnes = 'no';
                                        FFAppState().intoMarisco = 'no';
                                        FFAppState().intoPescado = 'no';
                                        FFAppState().intoLacteos = 'no';
                                        FFAppState().intoHuevos = 'no';
                                        FFAppState().intoCereales = 'no';
                                        FFAppState().intoBebidas = 'no';
                                        FFAppState().intoSalsas = 'no';
                                        FFAppState().intoFrutas = 'no';
                                        FFAppState().intoVerduras = 'no';
                                        FFAppState().intoLegumbres = 'no';
                                        FFAppState().intoFrutosSecos = 'no';
                                        FFAppState().tieneComidaDesayuno = '';
                                        FFAppState().tieneComidaComida = '';
                                        FFAppState().tieneComidaCena = '';
                                        safeSetState(() {});

                                        context.goNamed(
                                          'diario_Into1',
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
                                                  'Acceso Crear Diario Intolerancias desde Menú Diario',
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
                                                              .intoDiarioHechoHoy(
                                                            menuIntoleranciasDiarioInfoSelectorResponse
                                                                .jsonBody,
                                                          ) !=
                                                          'si') &&
                                                      (DiarioInfoSelectorCall
                                                              .intoFinalizar(
                                                            menuIntoleranciasDiarioInfoSelectorResponse
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
                                              'qg7vv2bp' /* Crear el diario de hoy */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: (DiarioInfoSelectorCall
                                                                  .intoDiarioHechoHoy(
                                                                menuIntoleranciasDiarioInfoSelectorResponse
                                                                    .jsonBody,
                                                              ) !=
                                                              'si') &&
                                                          (DiarioInfoSelectorCall
                                                                  .intoFinalizar(
                                                                menuIntoleranciasDiarioInfoSelectorResponse
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
                        opacity: DiarioInfoSelectorCall.intoEditar(
                                  menuIntoleranciasDiarioInfoSelectorResponse
                                      .jsonBody,
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
                              color: FlutterFlowTheme.of(context).resumen,
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
                                      if (DiarioInfoSelectorCall.intoEditar(
                                            menuIntoleranciasDiarioInfoSelectorResponse
                                                .jsonBody,
                                          ) ==
                                          'si') {
                                        FFAppState().editandoDiario = 'si';
                                        FFAppState().diarioIntoId =
                                            DiarioInfoSelectorCall.idIntoEditar(
                                          menuIntoleranciasDiarioInfoSelectorResponse
                                              .jsonBody,
                                        )!;
                                        FFAppState().mostrarAyer = 'no';
                                        FFAppState().momento = 1;

                                        context.pushNamed(
                                          'diario_Into1',
                                          queryParameters: {
                                            'primerIdario': serializeParam(
                                              'no',
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
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
                                                  'Acceso Editar Diario Intolerancias desde Menú Diario',
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
                                                          .intoEditar(
                                                        menuIntoleranciasDiarioInfoSelectorResponse
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
                                              'x03o45de' /* Editar el último diario */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: DiarioInfoSelectorCall
                                                              .intoEditar(
                                                            menuIntoleranciasDiarioInfoSelectorResponse
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
                        opacity: DiarioInfoSelectorCall.intoFinalizar(
                                  menuIntoleranciasDiarioInfoSelectorResponse
                                      .jsonBody,
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
                              color: FlutterFlowTheme.of(context).resumen,
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
                                      if (DiarioInfoSelectorCall.intoFinalizar(
                                            menuIntoleranciasDiarioInfoSelectorResponse
                                                .jsonBody,
                                          ) ==
                                          'si') {
                                        FFAppState().editandoDiario = 'no';
                                        FFAppState().diarioIntoId =
                                            DiarioInfoSelectorCall
                                                .idIntoFinalizar(
                                          menuIntoleranciasDiarioInfoSelectorResponse
                                              .jsonBody,
                                        )!;
                                        FFAppState().momento =
                                            DiarioInfoSelectorCall
                                                .momentoIntoFinalizar(
                                          menuIntoleranciasDiarioInfoSelectorResponse
                                              .jsonBody,
                                        )!;
                                        FFAppState().mostrarAyer = 'no';
                                        safeSetState(() {});
                                        unawaited(
                                          () async {
                                            await UserLogActivityCall.call(
                                              authToken: FFAppState().authToken,
                                              seccion:
                                                  'Acceso Finalizar Diario Intolerancias desde Menú Diario',
                                            );
                                          }(),
                                        );
                                        if (DiarioInfoSelectorCall
                                                .pantallIntoFinalizar(
                                              menuIntoleranciasDiarioInfoSelectorResponse
                                                  .jsonBody,
                                            ) ==
                                            'p1') {
                                          context.goNamed(
                                            'diario_Into1',
                                            queryParameters: {
                                              'primerIdario': serializeParam(
                                                'no',
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
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
                                                  .pantallIntoFinalizar(
                                                menuIntoleranciasDiarioInfoSelectorResponse
                                                    .jsonBody,
                                              ) ==
                                              'p2') {
                                            context.goNamed(
                                              'diario_Into2',
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
                                                    .pantallIntoFinalizar(
                                                  menuIntoleranciasDiarioInfoSelectorResponse
                                                      .jsonBody,
                                                ) ==
                                                'p3') {
                                              context.goNamed(
                                                'diario_Into3',
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
                                                      .pantallIntoFinalizar(
                                                    menuIntoleranciasDiarioInfoSelectorResponse
                                                        .jsonBody,
                                                  ) ==
                                                  'p4') {
                                                context.goNamed(
                                                  'diario_Into4',
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
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Error última página...',
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                          .intoFinalizar(
                                                        menuIntoleranciasDiarioInfoSelectorResponse
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
                                              'hqo4dmnh' /* Finalizar el último diario */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: DiarioInfoSelectorCall
                                                              .intoFinalizar(
                                                            menuIntoleranciasDiarioInfoSelectorResponse
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
