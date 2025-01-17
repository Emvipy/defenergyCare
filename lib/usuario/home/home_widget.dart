import '/backend/api_requests/api_calls.dart';
import '/diario_sueno/modal_aviso_sueno_hecho/modal_aviso_sueno_hecho_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/registro/modal_error_cuenta/modal_error_cuenta_widget.dart';
import '/resumen_diarios/modal_sin_diario/modal_sin_diario_widget.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import '/usuario/modal_cierre_sesion/modal_cierre_sesion_widget.dart';
import '/usuario/modal_info_into/modal_info_into_widget.dart';
import '/usuario/modal_info_resumen/modal_info_resumen_widget.dart';
import '/usuario/modal_info_salud/modal_info_salud_widget.dart';
import '/usuario/modal_info_sintomas/modal_info_sintomas_widget.dart';
import '/usuario/modal_info_sueno/modal_info_sueno_widget.dart';
import 'dart:async';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiCargaUser = await UserIndividualCall.call(
        authToken: FFAppState().authToken,
      );

      if ((_model.apiCargaUser?.succeeded ?? true)) {
        FFAppState().userIndividual = getJsonField(
          (_model.apiCargaUser?.jsonBody ?? ''),
          r'''$''',
        );
        safeSetState(() {});
        if (UserIndividualCall.cerrarSesion(
              (_model.apiCargaUser?.jsonBody ?? ''),
            ) ==
            'si') {
          await showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            isDismissible: false,
            enableDrag: false,
            context: context,
            builder: (context) {
              return WebViewAware(
                child: GestureDetector(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: ModalCierreSesionWidget(),
                  ),
                ),
              );
            },
          ).then((value) => safeSetState(() {}));

          return;
        } else {
          return;
        }
      } else {
        return;
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
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
              ),
              Flexible(
                child: Stack(
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if ((FFAppState().authToken != null &&
                                            FFAppState().authToken != '') &&
                                        (FFAppState().email != null &&
                                            FFAppState().email != '')) {
                                      if (FFAppState().creadoOk == 'si') {
                                        context.pushNamed(
                                          'perfil',
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
                                              seccion: 'Acceso Mi Perfil',
                                            );
                                          }(),
                                        );
                                      } else {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return WebViewAware(
                                              child: GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(context)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child:
                                                      ModalErrorCuentaWidget(),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      }
                                    } else {
                                      context.pushNamed(
                                        'login',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    }
                                  },
                                  child: Container(
                                    width: 45.0,
                                    height: 45.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: CachedNetworkImage(
                                      fadeInDuration:
                                          Duration(milliseconds: 500),
                                      fadeOutDuration:
                                          Duration(milliseconds: 500),
                                      imageUrl: getJsonField(
                                        FFAppState().userIndividual,
                                        r'''$.avatar.url''',
                                      ).toString(),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      3.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if ((FFAppState().authToken !=
                                                        null &&
                                                    FFAppState().authToken !=
                                                        '') &&
                                                (FFAppState().email != null &&
                                                    FFAppState().email != '')) {
                                              if (FFAppState().creadoOk ==
                                                  'si') {
                                                unawaited(
                                                  () async {
                                                    await UserLogActivityCall
                                                        .call(
                                                      authToken: FFAppState()
                                                          .authToken,
                                                      seccion:
                                                          'Acceso Mi Perfil',
                                                    );
                                                  }(),
                                                );

                                                context.pushNamed(
                                                  'perfil',
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

                                                return;
                                              } else {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return WebViewAware(
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          FocusScope.of(context)
                                                              .unfocus();
                                                          FocusManager.instance
                                                              .primaryFocus
                                                              ?.unfocus();
                                                        },
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child:
                                                              ModalErrorCuentaWidget(),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));

                                                return;
                                              }
                                            } else {
                                              context.pushNamed(
                                                'login',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 0),
                                                  ),
                                                },
                                              );

                                              return;
                                            }
                                          },
                                          child: Text(
                                            '${FFLocalizations.of(context).languageCode == 'es' ? 'Hola ' : 'Hello '}${FFAppState().authToken != null && FFAppState().authToken != '' ? FFAppState().nombre : ' '}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if ((FFAppState().authToken !=
                                                        null &&
                                                    FFAppState().authToken !=
                                                        '') &&
                                                (FFAppState().email != null &&
                                                    FFAppState().email != '')) {
                                              if (FFAppState().creadoOk ==
                                                  'si') {
                                                unawaited(
                                                  () async {
                                                    await UserLogActivityCall
                                                        .call(
                                                      authToken: FFAppState()
                                                          .authToken,
                                                      seccion:
                                                          'Acceso Mi Perfil',
                                                    );
                                                  }(),
                                                );

                                                context.pushNamed(
                                                  'perfil',
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

                                                return;
                                              } else {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return WebViewAware(
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          FocusScope.of(context)
                                                              .unfocus();
                                                          FocusManager.instance
                                                              .primaryFocus
                                                              ?.unfocus();
                                                        },
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child:
                                                              ModalErrorCuentaWidget(),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              }
                                            } else {
                                              context.pushNamed(
                                                'login',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 0),
                                                  ),
                                                },
                                              );

                                              return;
                                            }
                                          },
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'ay8wdlx9' /* ¿Cómo te encuentras hoy? */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Flexible(
                                  child: Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Container(
                                      width: 45.0,
                                      height: 45.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: functions
                                                      .parseJsonValueToInteger(
                                                          getJsonField(
                                                        FFAppState()
                                                            .userIndividual,
                                                        r'''$._notificaciones_cuenta''',
                                                      ))
                                                      .toString() ==
                                                  '0'
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryBackground
                                              : FlutterFlowTheme.of(context)
                                                  .secondary,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'perfil_notificaciones',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                ),
                                              },
                                            );
                                          },
                                          child: Icon(
                                            Icons.notifications_none,
                                            color: functions
                                                        .parseJsonValueToInteger(
                                                            getJsonField(
                                                          FFAppState()
                                                              .userIndividual,
                                                          r'''$._notificaciones_cuenta''',
                                                        ))
                                                        .toString() ==
                                                    '0'
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryText
                                                : FlutterFlowTheme.of(context)
                                                    .secondary,
                                            size: 26.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 25.0, 15.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: Opacity(
                                            opacity: 0.9,
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Container(
                                                width: 360.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .rosaHome,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
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
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              var _shouldSetState =
                                                                  false;
                                                              if ((FFAppState()
                                                                              .authToken !=
                                                                          null &&
                                                                      FFAppState()
                                                                              .authToken !=
                                                                          '') &&
                                                                  (FFAppState()
                                                                              .email !=
                                                                          null &&
                                                                      FFAppState()
                                                                              .email !=
                                                                          '')) {
                                                                if (FFAppState()
                                                                        .creadoOk ==
                                                                    'si') {
                                                                  if (functions
                                                                          .parseJsonValueToString(
                                                                              getJsonField(
                                                                        FFAppState()
                                                                            .userIndividual,
                                                                        r'''$.primer_diario''',
                                                                      )) ==
                                                                      'si') {
                                                                    if (functions
                                                                            .parseJsonValueToString(getJsonField(
                                                                          FFAppState()
                                                                              .userIndividual,
                                                                          r'''$.finalizo_setup''',
                                                                        )) ==
                                                                        'no') {
                                                                      if (functions
                                                                              .parseJsonValueToString(getJsonField(
                                                                            FFAppState().userIndividual,
                                                                            r'''$.id_enfermedad''',
                                                                          )) !=
                                                                          '4') {
                                                                        context
                                                                            .pushNamed(
                                                                          'setup',
                                                                          queryParameters:
                                                                              {
                                                                            'enfermedadId':
                                                                                serializeParam(
                                                                              getJsonField(
                                                                                FFAppState().userIndividual,
                                                                                r'''$.id_enfermedad''',
                                                                              ),
                                                                              ParamType.int,
                                                                            ),
                                                                          }.withoutNulls,
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
                                                                              seccion: 'Acceso Diario Sintomas Home',
                                                                            );
                                                                          }(),
                                                                        );
                                                                        if (_shouldSetState)
                                                                          safeSetState(
                                                                              () {});
                                                                        return;
                                                                      } else {
                                                                        _model.apiDiarioCreaicon =
                                                                            await DiarioCreaCall.call(
                                                                          authToken:
                                                                              FFAppState().authToken,
                                                                        );

                                                                        _shouldSetState =
                                                                            true;
                                                                        if ((_model.apiDiarioCreaicon?.succeeded ??
                                                                            true)) {
                                                                          FFAppState().diarioId =
                                                                              DiarioCreaCall.diarioId(
                                                                            (_model.apiDiarioCreaicon?.jsonBody ??
                                                                                ''),
                                                                          )!;
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
                                                                      _model.apiDiarioCrea2icon =
                                                                          await DiarioCreaCall
                                                                              .call(
                                                                        authToken:
                                                                            FFAppState().authToken,
                                                                      );

                                                                      _shouldSetState =
                                                                          true;
                                                                      if ((_model
                                                                              .apiDiarioCrea2icon
                                                                              ?.succeeded ??
                                                                          true)) {
                                                                        FFAppState().diarioId =
                                                                            DiarioCreaCall.diarioId(
                                                                          (_model.apiDiarioCrea2icon?.jsonBody ??
                                                                              ''),
                                                                        )!;
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
                                                                        FFAppState()
                                                                            .tmpCantidadSuplementos = 0;

                                                                        FFAppState().editandoDiario =
                                                                            'no';
                                                                        FFAppState().activarCargaChat =
                                                                            'no';

                                                                        context
                                                                            .pushNamed(
                                                                          'diario1',
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
                                                                              seccion: 'Acceso Diario Sintomas Home',
                                                                            );
                                                                          }(),
                                                                        );
                                                                        if (_shouldSetState)
                                                                          safeSetState(
                                                                              () {});
                                                                        return;
                                                                      } else {
                                                                        ScaffoldMessenger.of(context)
                                                                            .showSnackBar(
                                                                          SnackBar(
                                                                            content:
                                                                                Text(
                                                                              'Ha ocurrido un error...',
                                                                              style: TextStyle(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              ),
                                                                            ),
                                                                            duration:
                                                                                Duration(milliseconds: 4000),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).error,
                                                                          ),
                                                                        );
                                                                        if (_shouldSetState)
                                                                          safeSetState(
                                                                              () {});
                                                                        return;
                                                                      }
                                                                    }
                                                                  } else {
                                                                    context
                                                                        .pushNamed(
                                                                      'menu_diario',
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.fade,
                                                                        ),
                                                                      },
                                                                    );

                                                                    if (_shouldSetState)
                                                                      safeSetState(
                                                                          () {});
                                                                    return;
                                                                  }
                                                                } else {
                                                                  await showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    enableDrag:
                                                                        false,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      return WebViewAware(
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            FocusScope.of(context).unfocus();
                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                          },
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                MediaQuery.viewInsetsOf(context),
                                                                            child:
                                                                                ModalErrorCuentaWidget(),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      safeSetState(
                                                                          () {}));

                                                                  if (_shouldSetState)
                                                                    safeSetState(
                                                                        () {});
                                                                  return;
                                                                }
                                                              } else {
                                                                context
                                                                    .pushNamed(
                                                                  'login',
                                                                  extra: <String,
                                                                      dynamic>{
                                                                    kTransitionInfoKey:
                                                                        TransitionInfo(
                                                                      hasTransition:
                                                                          true,
                                                                      transitionType:
                                                                          PageTransitionType
                                                                              .fade,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              0),
                                                                    ),
                                                                  },
                                                                );

                                                                if (_shouldSetState)
                                                                  safeSetState(
                                                                      () {});
                                                                return;
                                                              }

                                                              if (_shouldSetState)
                                                                safeSetState(
                                                                    () {});
                                                            },
                                                            child: Container(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/diario_sintomas.png',
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                var _shouldSetState =
                                                                    false;
                                                                if ((FFAppState().authToken !=
                                                                            null &&
                                                                        FFAppState().authToken !=
                                                                            '') &&
                                                                    (FFAppState().email !=
                                                                            null &&
                                                                        FFAppState().email !=
                                                                            '')) {
                                                                  if (FFAppState()
                                                                          .creadoOk ==
                                                                      'si') {
                                                                    if (functions
                                                                            .parseJsonValueToString(getJsonField(
                                                                          FFAppState()
                                                                              .userIndividual,
                                                                          r'''$.primer_diario''',
                                                                        )) ==
                                                                        'si') {
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
                                                                          _model.apiDiarioCreaTitulo =
                                                                              await DiarioCreaCall.call(
                                                                            authToken:
                                                                                FFAppState().authToken,
                                                                          );

                                                                          _shouldSetState =
                                                                              true;
                                                                          if ((_model.apiDiarioCreaTitulo?.succeeded ??
                                                                              true)) {
                                                                            FFAppState().diarioId =
                                                                                DiarioCreaCall.diarioId(
                                                                              (_model.apiDiarioCreaTitulo?.jsonBody ?? ''),
                                                                            )!;
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
                                                                        _model.apiDiarioCrea2Titulo =
                                                                            await DiarioCreaCall.call(
                                                                          authToken:
                                                                              FFAppState().authToken,
                                                                        );

                                                                        _shouldSetState =
                                                                            true;
                                                                        if ((_model.apiDiarioCrea2Titulo?.succeeded ??
                                                                            true)) {
                                                                          FFAppState().diarioId =
                                                                              DiarioCreaCall.diarioId(
                                                                            (_model.apiDiarioCrea2Titulo?.jsonBody ??
                                                                                ''),
                                                                          )!;
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
                                                                      context
                                                                          .pushNamed(
                                                                        'menu_diario',
                                                                        extra: <String,
                                                                            dynamic>{
                                                                          kTransitionInfoKey:
                                                                              TransitionInfo(
                                                                            hasTransition:
                                                                                true,
                                                                            transitionType:
                                                                                PageTransitionType.fade,
                                                                          ),
                                                                        },
                                                                      );

                                                                      if (_shouldSetState)
                                                                        safeSetState(
                                                                            () {});
                                                                      return;
                                                                    }
                                                                  } else {
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      enableDrag:
                                                                          false,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap:
                                                                                () {
                                                                              FocusScope.of(context).unfocus();
                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                            },
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: ModalErrorCuentaWidget(),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));

                                                                    if (_shouldSetState)
                                                                      safeSetState(
                                                                          () {});
                                                                    return;
                                                                  }
                                                                } else {
                                                                  context
                                                                      .pushNamed(
                                                                    'login',
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      kTransitionInfoKey:
                                                                          TransitionInfo(
                                                                        hasTransition:
                                                                            true,
                                                                        transitionType:
                                                                            PageTransitionType.fade,
                                                                        duration:
                                                                            Duration(milliseconds: 0),
                                                                      ),
                                                                    },
                                                                  );

                                                                  if (_shouldSetState)
                                                                    safeSetState(
                                                                        () {});
                                                                  return;
                                                                }

                                                                if (_shouldSetState)
                                                                  safeSetState(
                                                                      () {});
                                                              },
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'b3dcw7yz' /* Diario de Síntomas */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .negroPerm,
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      1.0, 0.0),
                                                              child: InkWell(
                                                                splashColor: Colors
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
                                                                  await showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    enableDrag:
                                                                        false,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      return WebViewAware(
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            FocusScope.of(context).unfocus();
                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                          },
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                MediaQuery.viewInsetsOf(context),
                                                                            child:
                                                                                ModalInfoSintomasWidget(),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      safeSetState(
                                                                          () {}));
                                                                },
                                                                child: Icon(
                                                                  Icons
                                                                      .more_vert,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
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
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  8.0,
                                                                  5.0,
                                                                  0.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          var _shouldSetState =
                                                              false;
                                                          if ((FFAppState()
                                                                          .authToken !=
                                                                      null &&
                                                                  FFAppState()
                                                                          .authToken !=
                                                                      '') &&
                                                              (FFAppState()
                                                                          .email !=
                                                                      null &&
                                                                  FFAppState()
                                                                          .email !=
                                                                      '')) {
                                                            if (FFAppState()
                                                                    .creadoOk ==
                                                                'si') {
                                                              if (functions
                                                                      .parseJsonValueToString(
                                                                          getJsonField(
                                                                    FFAppState()
                                                                        .userIndividual,
                                                                    r'''$.primer_diario''',
                                                                  )) ==
                                                                  'si') {
                                                                if (functions
                                                                        .parseJsonValueToString(
                                                                            getJsonField(
                                                                      FFAppState()
                                                                          .userIndividual,
                                                                      r'''$.finalizo_setup''',
                                                                    )) ==
                                                                    'no') {
                                                                  if (functions
                                                                          .parseJsonValueToString(
                                                                              getJsonField(
                                                                        FFAppState()
                                                                            .userIndividual,
                                                                        r'''$.id_enfermedad''',
                                                                      )) !=
                                                                      '4') {
                                                                    context
                                                                        .pushNamed(
                                                                      'setup',
                                                                      queryParameters:
                                                                          {
                                                                        'enfermedadId':
                                                                            serializeParam(
                                                                          getJsonField(
                                                                            FFAppState().userIndividual,
                                                                            r'''$.id_enfermedad''',
                                                                          ),
                                                                          ParamType
                                                                              .int,
                                                                        ),
                                                                      }.withoutNulls,
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.fade,
                                                                        ),
                                                                      },
                                                                    );

                                                                    unawaited(
                                                                      () async {
                                                                        await UserLogActivityCall
                                                                            .call(
                                                                          authToken:
                                                                              FFAppState().authToken,
                                                                          seccion:
                                                                              'Acceso Diario Sintomas Home',
                                                                        );
                                                                      }(),
                                                                    );
                                                                    if (_shouldSetState)
                                                                      safeSetState(
                                                                          () {});
                                                                    return;
                                                                  } else {
                                                                    _model.apiDiarioCrea =
                                                                        await DiarioCreaCall
                                                                            .call(
                                                                      authToken:
                                                                          FFAppState()
                                                                              .authToken,
                                                                    );

                                                                    _shouldSetState =
                                                                        true;
                                                                    if ((_model
                                                                            .apiDiarioCrea
                                                                            ?.succeeded ??
                                                                        true)) {
                                                                      FFAppState()
                                                                              .diarioId =
                                                                          DiarioCreaCall
                                                                              .diarioId(
                                                                        (_model.apiDiarioCrea?.jsonBody ??
                                                                            ''),
                                                                      )!;
                                                                      FFAppState()
                                                                          .deleteDiarioDolor();
                                                                      FFAppState()
                                                                              .diarioDolor =
                                                                          'no';

                                                                      FFAppState()
                                                                          .deleteDiarioMed1();
                                                                      FFAppState()
                                                                              .diarioMed1 =
                                                                          'no';

                                                                      FFAppState()
                                                                          .deleteDiarioMed2();
                                                                      FFAppState()
                                                                              .diarioMed2 =
                                                                          'no';

                                                                      FFAppState()
                                                                          .deleteDiarioVit();
                                                                      FFAppState()
                                                                              .diarioVit =
                                                                          'no';

                                                                      FFAppState()
                                                                          .deleteDiarioUltimoMed1();
                                                                      FFAppState()
                                                                          .diarioUltimoMed1 = '';

                                                                      FFAppState()
                                                                          .deleteDiarioUltimoMed2();
                                                                      FFAppState()
                                                                          .diarioUltimoMed2 = '';

                                                                      FFAppState()
                                                                          .deleteDiarioUltimoSup1();
                                                                      FFAppState()
                                                                          .diarioUltimoSup1 = '';

                                                                      FFAppState()
                                                                          .deleteDiarioUltimoSup2();
                                                                      FFAppState()
                                                                          .diarioUltimoSup2 = '';

                                                                      FFAppState()
                                                                          .deleteDiarioUltimoSup3();
                                                                      FFAppState()
                                                                          .diarioUltimoSup3 = '';

                                                                      FFAppState()
                                                                          .deleteTmpCantidadSuplementos();
                                                                      FFAppState()
                                                                          .tmpCantidadSuplementos = 0;

                                                                      FFAppState()
                                                                              .editandoDiario =
                                                                          'no';
                                                                      FFAppState()
                                                                              .activarCargaChat =
                                                                          'no';

                                                                      context
                                                                          .pushNamed(
                                                                        'diario1',
                                                                        extra: <String,
                                                                            dynamic>{
                                                                          kTransitionInfoKey:
                                                                              TransitionInfo(
                                                                            hasTransition:
                                                                                true,
                                                                            transitionType:
                                                                                PageTransitionType.fade,
                                                                          ),
                                                                        },
                                                                      );

                                                                      unawaited(
                                                                        () async {
                                                                          await UserLogActivityCall
                                                                              .call(
                                                                            authToken:
                                                                                FFAppState().authToken,
                                                                            seccion:
                                                                                'Acceso Diario Sintomas Home',
                                                                          );
                                                                        }(),
                                                                      );
                                                                      if (_shouldSetState)
                                                                        safeSetState(
                                                                            () {});
                                                                      return;
                                                                    } else {
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'Ha ocurrido un error...',
                                                                            style:
                                                                                TextStyle(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                            ),
                                                                          ),
                                                                          duration:
                                                                              Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).error,
                                                                        ),
                                                                      );
                                                                      if (_shouldSetState)
                                                                        safeSetState(
                                                                            () {});
                                                                      return;
                                                                    }
                                                                  }
                                                                } else {
                                                                  _model.apiDiarioCrea2 =
                                                                      await DiarioCreaCall
                                                                          .call(
                                                                    authToken:
                                                                        FFAppState()
                                                                            .authToken,
                                                                  );

                                                                  _shouldSetState =
                                                                      true;
                                                                  if ((_model
                                                                          .apiDiarioCrea2
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    FFAppState()
                                                                            .diarioId =
                                                                        DiarioCreaCall
                                                                            .diarioId(
                                                                      (_model.apiDiarioCrea2
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )!;
                                                                    FFAppState()
                                                                        .deleteDiarioDolor();
                                                                    FFAppState()
                                                                            .diarioDolor =
                                                                        'no';

                                                                    FFAppState()
                                                                        .deleteDiarioMed1();
                                                                    FFAppState()
                                                                            .diarioMed1 =
                                                                        'no';

                                                                    FFAppState()
                                                                        .deleteDiarioMed2();
                                                                    FFAppState()
                                                                            .diarioMed2 =
                                                                        'no';

                                                                    FFAppState()
                                                                        .deleteDiarioVit();
                                                                    FFAppState()
                                                                            .diarioVit =
                                                                        'no';

                                                                    FFAppState()
                                                                        .deleteDiarioUltimoMed1();
                                                                    FFAppState()
                                                                        .diarioUltimoMed1 = '';

                                                                    FFAppState()
                                                                        .deleteDiarioUltimoMed2();
                                                                    FFAppState()
                                                                        .diarioUltimoMed2 = '';

                                                                    FFAppState()
                                                                        .deleteDiarioUltimoSup1();
                                                                    FFAppState()
                                                                        .diarioUltimoSup1 = '';

                                                                    FFAppState()
                                                                        .deleteDiarioUltimoSup2();
                                                                    FFAppState()
                                                                        .diarioUltimoSup2 = '';

                                                                    FFAppState()
                                                                        .deleteDiarioUltimoSup3();
                                                                    FFAppState()
                                                                        .diarioUltimoSup3 = '';

                                                                    FFAppState()
                                                                        .deleteTmpCantidadSuplementos();
                                                                    FFAppState()
                                                                        .tmpCantidadSuplementos = 0;

                                                                    FFAppState()
                                                                            .editandoDiario =
                                                                        'no';
                                                                    FFAppState()
                                                                            .activarCargaChat =
                                                                        'no';

                                                                    context
                                                                        .pushNamed(
                                                                      'diario1',
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.fade,
                                                                        ),
                                                                      },
                                                                    );

                                                                    unawaited(
                                                                      () async {
                                                                        await UserLogActivityCall
                                                                            .call(
                                                                          authToken:
                                                                              FFAppState().authToken,
                                                                          seccion:
                                                                              'Acceso Diario Sintomas Home',
                                                                        );
                                                                      }(),
                                                                    );
                                                                    if (_shouldSetState)
                                                                      safeSetState(
                                                                          () {});
                                                                    return;
                                                                  } else {
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          'Ha ocurrido un error...',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                        ),
                                                                        duration:
                                                                            Duration(milliseconds: 4000),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).error,
                                                                      ),
                                                                    );
                                                                    if (_shouldSetState)
                                                                      safeSetState(
                                                                          () {});
                                                                    return;
                                                                  }
                                                                }
                                                              } else {
                                                                context
                                                                    .pushNamed(
                                                                  'menu_diario',
                                                                  extra: <String,
                                                                      dynamic>{
                                                                    kTransitionInfoKey:
                                                                        TransitionInfo(
                                                                      hasTransition:
                                                                          true,
                                                                      transitionType:
                                                                          PageTransitionType
                                                                              .fade,
                                                                    ),
                                                                  },
                                                                );

                                                                if (_shouldSetState)
                                                                  safeSetState(
                                                                      () {});
                                                                return;
                                                              }
                                                            } else {
                                                              await showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                enableDrag:
                                                                    false,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return WebViewAware(
                                                                    child:
                                                                        GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        FocusScope.of(context)
                                                                            .unfocus();
                                                                        FocusManager
                                                                            .instance
                                                                            .primaryFocus
                                                                            ?.unfocus();
                                                                      },
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            MediaQuery.viewInsetsOf(context),
                                                                        child:
                                                                            ModalErrorCuentaWidget(),
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) =>
                                                                  safeSetState(
                                                                      () {}));

                                                              if (_shouldSetState)
                                                                safeSetState(
                                                                    () {});
                                                              return;
                                                            }
                                                          } else {
                                                            context.pushNamed(
                                                              'login',
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          0),
                                                                ),
                                                              },
                                                            );

                                                            if (_shouldSetState)
                                                              safeSetState(
                                                                  () {});
                                                            return;
                                                          }

                                                          if (_shouldSetState)
                                                            safeSetState(() {});
                                                        },
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Flexible(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Text(
                                                                  () {
                                                                    if ((FFLocalizations.of(context).languageCode !=
                                                                            'en') &&
                                                                        (functions.parseJsonValueToString(
                                                                                getJsonField(
                                                                              FFAppState().userIndividual,
                                                                              r'''$.diario_hoy_hecho''',
                                                                            )) ==
                                                                            'no')) {
                                                                      return 'Aún no has completado tu diario de hoy...';
                                                                    } else if ((FFLocalizations.of(context).languageCode ==
                                                                            'en') &&
                                                                        (functions.parseJsonValueToString(
                                                                                getJsonField(
                                                                              FFAppState().userIndividual,
                                                                              r'''$.diario_hoy_hecho''',
                                                                            )) ==
                                                                            'no')) {
                                                                      return 'You have not yet completed today\'s diary...';
                                                                    } else if ((FFLocalizations.of(context).languageCode !=
                                                                            'en') &&
                                                                        (functions.parseJsonValueToString(getJsonField(
                                                                              FFAppState().userIndividual,
                                                                              r'''$.diario_hoy_hecho''',
                                                                            )) ==
                                                                            'si')) {
                                                                      return 'Ya has hecho tu diario de hoy...';
                                                                    } else {
                                                                      return 'You\'ve already done your diary for today...';
                                                                    }
                                                                  }(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .negroPerm,
                                                                        fontSize:
                                                                            13.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .chevron_right_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .negroPerm,
                                                              size: 28.0,
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
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 5.0, 15.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 170.0,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .resumen,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
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
                                                            Container(
                                                              width: 40.0,
                                                              height: 40.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child: InkWell(
                                                                splashColor: Colors
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
                                                                  if ((FFAppState().authToken !=
                                                                              null &&
                                                                          FFAppState().authToken !=
                                                                              '') &&
                                                                      (FFAppState().email !=
                                                                              null &&
                                                                          FFAppState().email !=
                                                                              '')) {
                                                                    if (FFAppState()
                                                                            .creadoOk ==
                                                                        'si') {
                                                                      if (functions
                                                                              .parseJsonValueToString(getJsonField(
                                                                            FFAppState().userIndividual,
                                                                            r'''$.primer_diario_into''',
                                                                          )) ==
                                                                          'si') {
                                                                        if (functions.parseJsonValueToString(getJsonField(
                                                                              FFAppState().userIndividual,
                                                                              r'''$.setup_intolerancias''',
                                                                            )) ==
                                                                            'no') {
                                                                          FFAppState().diarioIntoAnterior =
                                                                              getJsonField(
                                                                            FFAppState().userIndividual,
                                                                            r'''$.id_diario_into_editar''',
                                                                          );
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
                                                                          FFAppState().editandoDiario =
                                                                              'no';

                                                                          context
                                                                              .pushNamed(
                                                                            'setupInto',
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
                                                                                seccion: 'Acceso Diario Inolerancias Home',
                                                                              );
                                                                            }(),
                                                                          );
                                                                          if (_shouldSetState)
                                                                            safeSetState(() {});
                                                                          return;
                                                                        } else {
                                                                          _model.apiDiarioInto1Icon =
                                                                              await DiarioIntoCreaCall.call(
                                                                            authToken:
                                                                                FFAppState().authToken,
                                                                          );

                                                                          _shouldSetState =
                                                                              true;
                                                                          if ((_model.apiDiarioInto1Icon?.succeeded ??
                                                                              true)) {
                                                                            FFAppState().diarioIntoId =
                                                                                DiarioIntoCreaCall.id(
                                                                              (_model.apiDiarioInto1Icon?.jsonBody ?? ''),
                                                                            )!;
                                                                            FFAppState().primerDiarioInto =
                                                                                'si';
                                                                            FFAppState().diarioIntoAnterior =
                                                                                getJsonField(
                                                                              FFAppState().userIndividual,
                                                                              r'''$.id_diario_into_editar''',
                                                                            );
                                                                            FFAppState().editandoDiario =
                                                                                'no';
                                                                            FFAppState().mostrarAyer =
                                                                                'no';
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

                                                                            context.goNamed(
                                                                              'diarioIntoCargaDesplegables',
                                                                              queryParameters: {
                                                                                'primerDiario': serializeParam(
                                                                                  'si',
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
                                                                        }
                                                                      } else {
                                                                        context
                                                                            .pushNamed(
                                                                          'menu_intolerancias',
                                                                          extra: <String,
                                                                              dynamic>{
                                                                            kTransitionInfoKey:
                                                                                TransitionInfo(
                                                                              hasTransition: true,
                                                                              transitionType: PageTransitionType.fade,
                                                                            ),
                                                                          },
                                                                        );

                                                                        if (_shouldSetState)
                                                                          safeSetState(
                                                                              () {});
                                                                        return;
                                                                      }
                                                                    } else {
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return WebViewAware(
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () {
                                                                                FocusScope.of(context).unfocus();
                                                                                FocusManager.instance.primaryFocus?.unfocus();
                                                                              },
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: ModalErrorCuentaWidget(),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));

                                                                      if (_shouldSetState)
                                                                        safeSetState(
                                                                            () {});
                                                                      return;
                                                                    }
                                                                  } else {
                                                                    context
                                                                        .pushNamed(
                                                                      'login',
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.fade,
                                                                          duration:
                                                                              Duration(milliseconds: 0),
                                                                        ),
                                                                      },
                                                                    );

                                                                    if (_shouldSetState)
                                                                      safeSetState(
                                                                          () {});
                                                                    return;
                                                                  }

                                                                  if (_shouldSetState)
                                                                    safeSetState(
                                                                        () {});
                                                                },
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/intolerancia.png',
                                                                    width: 40.0,
                                                                    height:
                                                                        40.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
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
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      enableDrag:
                                                                          false,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap:
                                                                                () {
                                                                              FocusScope.of(context).unfocus();
                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                            },
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: ModalInfoIntoWidget(),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .more_vert,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
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
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                if ((FFAppState().authToken !=
                                                                            null &&
                                                                        FFAppState().authToken !=
                                                                            '') &&
                                                                    (FFAppState().email !=
                                                                            null &&
                                                                        FFAppState().email !=
                                                                            '')) {
                                                                  if (FFAppState()
                                                                          .creadoOk ==
                                                                      'si') {
                                                                    if (functions
                                                                            .parseJsonValueToString(getJsonField(
                                                                          FFAppState()
                                                                              .userIndividual,
                                                                          r'''$.primer_diario_into''',
                                                                        )) ==
                                                                        'si') {
                                                                      if (functions
                                                                              .parseJsonValueToString(getJsonField(
                                                                            FFAppState().userIndividual,
                                                                            r'''$.setup_intolerancias''',
                                                                          )) ==
                                                                          'no') {
                                                                        FFAppState().diarioIntoAnterior =
                                                                            getJsonField(
                                                                          FFAppState()
                                                                              .userIndividual,
                                                                          r'''$.id_diario_into_editar''',
                                                                        );
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
                                                                        FFAppState().editandoDiario =
                                                                            'no';

                                                                        context
                                                                            .pushNamed(
                                                                          'setupInto',
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
                                                                              seccion: 'Acceso Diario Inolerancias Home',
                                                                            );
                                                                          }(),
                                                                        );
                                                                      } else {
                                                                        _model.apiDiarioInto1Titulo =
                                                                            await DiarioIntoCreaCall.call(
                                                                          authToken:
                                                                              FFAppState().authToken,
                                                                        );

                                                                        if ((_model.apiDiarioInto1Titulo?.succeeded ??
                                                                            true)) {
                                                                          FFAppState().diarioIntoId =
                                                                              DiarioIntoCreaCall.id(
                                                                            (_model.apiDiarioInto1Titulo?.jsonBody ??
                                                                                ''),
                                                                          )!;
                                                                          FFAppState().primerDiarioInto =
                                                                              'si';
                                                                          FFAppState().diarioIntoAnterior =
                                                                              getJsonField(
                                                                            FFAppState().userIndividual,
                                                                            r'''$.id_diario_into_editar''',
                                                                          );
                                                                          FFAppState().editandoDiario =
                                                                              'no';
                                                                          FFAppState().mostrarAyer =
                                                                              'no';
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

                                                                          context
                                                                              .pushNamed(
                                                                            'diario_Into1',
                                                                            queryParameters:
                                                                                {
                                                                              'primerIdario': serializeParam(
                                                                                'si',
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

                                                                          unawaited(
                                                                            () async {
                                                                              await UserLogActivityCall.call(
                                                                                authToken: FFAppState().authToken,
                                                                                seccion: 'Acceso Diario Inolerancias Home',
                                                                              );
                                                                            }(),
                                                                          );
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
                                                                        }
                                                                      }
                                                                    } else {
                                                                      context
                                                                          .pushNamed(
                                                                        'menu_intolerancias',
                                                                        extra: <String,
                                                                            dynamic>{
                                                                          kTransitionInfoKey:
                                                                              TransitionInfo(
                                                                            hasTransition:
                                                                                true,
                                                                            transitionType:
                                                                                PageTransitionType.fade,
                                                                          ),
                                                                        },
                                                                      );
                                                                    }
                                                                  } else {
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      enableDrag:
                                                                          false,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap:
                                                                                () {
                                                                              FocusScope.of(context).unfocus();
                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                            },
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: ModalErrorCuentaWidget(),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));
                                                                  }
                                                                } else {
                                                                  context
                                                                      .pushNamed(
                                                                    'login',
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      kTransitionInfoKey:
                                                                          TransitionInfo(
                                                                        hasTransition:
                                                                            true,
                                                                        transitionType:
                                                                            PageTransitionType.fade,
                                                                        duration:
                                                                            Duration(milliseconds: 0),
                                                                      ),
                                                                    },
                                                                  );
                                                                }

                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '0mtreec3' /* Diario de 
intolerancias */
                                                                  ,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .negroPerm,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
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
                                                                    if ((FFAppState().authToken !=
                                                                                null &&
                                                                            FFAppState().authToken !=
                                                                                '') &&
                                                                        (FFAppState().email !=
                                                                                null &&
                                                                            FFAppState().email !=
                                                                                '')) {
                                                                      if (FFAppState()
                                                                              .creadoOk ==
                                                                          'si') {
                                                                        if (functions.parseJsonValueToString(getJsonField(
                                                                              FFAppState().userIndividual,
                                                                              r'''$.primer_diario_into''',
                                                                            )) ==
                                                                            'si') {
                                                                          if (functions.parseJsonValueToString(getJsonField(
                                                                                FFAppState().userIndividual,
                                                                                r'''$.setup_intolerancias''',
                                                                              )) ==
                                                                              'no') {
                                                                            FFAppState().diarioIntoAnterior =
                                                                                getJsonField(
                                                                              FFAppState().userIndividual,
                                                                              r'''$.id_diario_into_editar''',
                                                                            );
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
                                                                            FFAppState().editandoDiario =
                                                                                'no';

                                                                            context.pushNamed(
                                                                              'setupInto',
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
                                                                          } else {
                                                                            _model.apiDiarioInto1 =
                                                                                await DiarioIntoCreaCall.call(
                                                                              authToken: FFAppState().authToken,
                                                                            );

                                                                            if ((_model.apiDiarioInto1?.succeeded ??
                                                                                true)) {
                                                                              FFAppState().diarioIntoId = DiarioIntoCreaCall.id(
                                                                                (_model.apiDiarioInto1?.jsonBody ?? ''),
                                                                              )!;
                                                                              FFAppState().primerDiarioInto = 'si';
                                                                              FFAppState().diarioIntoAnterior = getJsonField(
                                                                                FFAppState().userIndividual,
                                                                                r'''$.id_diario_into_editar''',
                                                                              );
                                                                              FFAppState().editandoDiario = 'no';
                                                                              FFAppState().mostrarAyer = 'no';
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

                                                                              context.pushNamed(
                                                                                'diario_Into1',
                                                                                queryParameters: {
                                                                                  'primerIdario': serializeParam(
                                                                                    'si',
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
                                                                            }
                                                                          }
                                                                        } else {
                                                                          context
                                                                              .pushNamed(
                                                                            'menu_intolerancias',
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              kTransitionInfoKey: TransitionInfo(
                                                                                hasTransition: true,
                                                                                transitionType: PageTransitionType.fade,
                                                                              ),
                                                                            },
                                                                          );
                                                                        }
                                                                      } else {
                                                                        await showModalBottomSheet(
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          enableDrag:
                                                                              false,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return WebViewAware(
                                                                              child: GestureDetector(
                                                                                onTap: () {
                                                                                  FocusScope.of(context).unfocus();
                                                                                  FocusManager.instance.primaryFocus?.unfocus();
                                                                                },
                                                                                child: Padding(
                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                  child: ModalErrorCuentaWidget(),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            safeSetState(() {}));
                                                                      }
                                                                    } else {
                                                                      context
                                                                          .pushNamed(
                                                                        'login',
                                                                        extra: <String,
                                                                            dynamic>{
                                                                          kTransitionInfoKey:
                                                                              TransitionInfo(
                                                                            hasTransition:
                                                                                true,
                                                                            transitionType:
                                                                                PageTransitionType.fade,
                                                                            duration:
                                                                                Duration(milliseconds: 0),
                                                                          ),
                                                                        },
                                                                      );
                                                                    }

                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .chevron_right_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .negroPerm,
                                                                    size: 24.0,
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
                                              ],
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 170.0,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lavanda,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
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
                                                            Container(
                                                              width: 40.0,
                                                              height: 40.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child: InkWell(
                                                                splashColor: Colors
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
                                                                  if ((FFAppState().authToken !=
                                                                              null &&
                                                                          FFAppState().authToken !=
                                                                              '') &&
                                                                      (FFAppState().email !=
                                                                              null &&
                                                                          FFAppState().email !=
                                                                              '')) {
                                                                    if (FFAppState()
                                                                            .creadoOk ==
                                                                        'si') {
                                                                      if (functions
                                                                              .parseJsonValueToString(getJsonField(
                                                                            FFAppState().userIndividual,
                                                                            r'''$.diario_sueno_hecho''',
                                                                          )) ==
                                                                          'si') {
                                                                        await showModalBottomSheet(
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          enableDrag:
                                                                              false,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return WebViewAware(
                                                                              child: GestureDetector(
                                                                                onTap: () {
                                                                                  FocusScope.of(context).unfocus();
                                                                                  FocusManager.instance.primaryFocus?.unfocus();
                                                                                },
                                                                                child: Padding(
                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                  child: ModalAvisoSuenoHechoWidget(),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            safeSetState(() {}));

                                                                        if (_shouldSetState)
                                                                          safeSetState(
                                                                              () {});
                                                                        return;
                                                                      } else {
                                                                        _model.apiCreaSuenoIcon =
                                                                            await SuenoCreaDiarioCall.call(
                                                                          authToken:
                                                                              FFAppState().authToken,
                                                                        );

                                                                        _shouldSetState =
                                                                            true;
                                                                        FFAppState().diarioSuenoId =
                                                                            SuenoCreaDiarioCall.id(
                                                                          (_model.apiCreaSuenoIcon?.jsonBody ??
                                                                              ''),
                                                                        )!;
                                                                        FFAppState().diarioSuenoSup =
                                                                            'no';
                                                                        FFAppState().diarioSuenoMed =
                                                                            'no';
                                                                        FFAppState().diarioSuenoUltMed =
                                                                            '';
                                                                        FFAppState().diarioSuenoUltSup =
                                                                            '';

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
                                                                      }
                                                                    } else {
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return WebViewAware(
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () {
                                                                                FocusScope.of(context).unfocus();
                                                                                FocusManager.instance.primaryFocus?.unfocus();
                                                                              },
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: ModalErrorCuentaWidget(),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));

                                                                      if (_shouldSetState)
                                                                        safeSetState(
                                                                            () {});
                                                                      return;
                                                                    }
                                                                  } else {
                                                                    context
                                                                        .pushNamed(
                                                                      'login',
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.fade,
                                                                          duration:
                                                                              Duration(milliseconds: 0),
                                                                        ),
                                                                      },
                                                                    );

                                                                    if (_shouldSetState)
                                                                      safeSetState(
                                                                          () {});
                                                                    return;
                                                                  }

                                                                  if (_shouldSetState)
                                                                    safeSetState(
                                                                        () {});
                                                                },
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/bed.png',
                                                                    width: 40.0,
                                                                    height:
                                                                        40.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
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
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      enableDrag:
                                                                          false,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap:
                                                                                () {
                                                                              FocusScope.of(context).unfocus();
                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                            },
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: ModalInfoSuenoWidget(),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .more_vert,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
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
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    15.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                var _shouldSetState =
                                                                    false;
                                                                if ((FFAppState().authToken !=
                                                                            null &&
                                                                        FFAppState().authToken !=
                                                                            '') &&
                                                                    (FFAppState().email !=
                                                                            null &&
                                                                        FFAppState().email !=
                                                                            '')) {
                                                                  if (FFAppState()
                                                                          .creadoOk ==
                                                                      'si') {
                                                                    if (functions
                                                                            .parseJsonValueToString(getJsonField(
                                                                          FFAppState()
                                                                              .userIndividual,
                                                                          r'''$.diario_sueno_hecho''',
                                                                        )) ==
                                                                        'si') {
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return WebViewAware(
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () {
                                                                                FocusScope.of(context).unfocus();
                                                                                FocusManager.instance.primaryFocus?.unfocus();
                                                                              },
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: ModalAvisoSuenoHechoWidget(),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));

                                                                      if (_shouldSetState)
                                                                        safeSetState(
                                                                            () {});
                                                                      return;
                                                                    } else {
                                                                      _model.apiCreaSuenoTitulo =
                                                                          await SuenoCreaDiarioCall
                                                                              .call(
                                                                        authToken:
                                                                            FFAppState().authToken,
                                                                      );

                                                                      _shouldSetState =
                                                                          true;
                                                                      FFAppState()
                                                                              .diarioSuenoId =
                                                                          SuenoCreaDiarioCall
                                                                              .id(
                                                                        (_model.apiCreaSuenoTitulo?.jsonBody ??
                                                                            ''),
                                                                      )!;
                                                                      FFAppState()
                                                                              .diarioSuenoSup =
                                                                          'no';
                                                                      FFAppState()
                                                                              .diarioSuenoMed =
                                                                          'no';
                                                                      FFAppState()
                                                                          .diarioSuenoUltMed = '';
                                                                      FFAppState()
                                                                          .diarioSuenoUltSup = '';

                                                                      context
                                                                          .pushNamed(
                                                                        'diario_sueno1',
                                                                        extra: <String,
                                                                            dynamic>{
                                                                          kTransitionInfoKey:
                                                                              TransitionInfo(
                                                                            hasTransition:
                                                                                true,
                                                                            transitionType:
                                                                                PageTransitionType.fade,
                                                                          ),
                                                                        },
                                                                      );

                                                                      unawaited(
                                                                        () async {
                                                                          await UserLogActivityCall
                                                                              .call(
                                                                            authToken:
                                                                                FFAppState().authToken,
                                                                            seccion:
                                                                                'Acceso Diario Sueño Home',
                                                                          );
                                                                        }(),
                                                                      );
                                                                      if (_shouldSetState)
                                                                        safeSetState(
                                                                            () {});
                                                                      return;
                                                                    }
                                                                  } else {
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      enableDrag:
                                                                          false,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap:
                                                                                () {
                                                                              FocusScope.of(context).unfocus();
                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                            },
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: ModalErrorCuentaWidget(),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));

                                                                    if (_shouldSetState)
                                                                      safeSetState(
                                                                          () {});
                                                                    return;
                                                                  }
                                                                } else {
                                                                  context
                                                                      .pushNamed(
                                                                    'login',
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      kTransitionInfoKey:
                                                                          TransitionInfo(
                                                                        hasTransition:
                                                                            true,
                                                                        transitionType:
                                                                            PageTransitionType.fade,
                                                                        duration:
                                                                            Duration(milliseconds: 0),
                                                                      ),
                                                                    },
                                                                  );

                                                                  if (_shouldSetState)
                                                                    safeSetState(
                                                                        () {});
                                                                  return;
                                                                }

                                                                if (_shouldSetState)
                                                                  safeSetState(
                                                                      () {});
                                                              },
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'qfhcs0zs' /* Diario de Sueño */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .negroPerm,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
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
                                                                    if ((FFAppState().authToken !=
                                                                                null &&
                                                                            FFAppState().authToken !=
                                                                                '') &&
                                                                        (FFAppState().email !=
                                                                                null &&
                                                                            FFAppState().email !=
                                                                                '')) {
                                                                      if (FFAppState()
                                                                              .creadoOk ==
                                                                          'si') {
                                                                        if (functions.parseJsonValueToString(getJsonField(
                                                                              FFAppState().userIndividual,
                                                                              r'''$.diario_sueno_hecho''',
                                                                            )) ==
                                                                            'si') {
                                                                          await showModalBottomSheet(
                                                                            isScrollControlled:
                                                                                true,
                                                                            backgroundColor:
                                                                                Colors.transparent,
                                                                            enableDrag:
                                                                                false,
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (context) {
                                                                              return WebViewAware(
                                                                                child: GestureDetector(
                                                                                  onTap: () {
                                                                                    FocusScope.of(context).unfocus();
                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                  },
                                                                                  child: Padding(
                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                    child: ModalAvisoSuenoHechoWidget(),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ).then((value) =>
                                                                              safeSetState(() {}));

                                                                          if (_shouldSetState)
                                                                            safeSetState(() {});
                                                                          return;
                                                                        } else {
                                                                          _model.apiCreaSueno =
                                                                              await SuenoCreaDiarioCall.call(
                                                                            authToken:
                                                                                FFAppState().authToken,
                                                                          );

                                                                          _shouldSetState =
                                                                              true;
                                                                          FFAppState().diarioSuenoId =
                                                                              SuenoCreaDiarioCall.id(
                                                                            (_model.apiCreaSueno?.jsonBody ??
                                                                                ''),
                                                                          )!;
                                                                          FFAppState().diarioSuenoSup =
                                                                              'no';
                                                                          FFAppState().diarioSuenoMed =
                                                                              'no';
                                                                          FFAppState().diarioSuenoUltMed =
                                                                              '';
                                                                          FFAppState().diarioSuenoUltSup =
                                                                              '';

                                                                          context
                                                                              .pushNamed(
                                                                            'diario_sueno1',
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
                                                                                seccion: 'Acceso Diario Sueño Home',
                                                                              );
                                                                            }(),
                                                                          );
                                                                          if (_shouldSetState)
                                                                            safeSetState(() {});
                                                                          return;
                                                                        }
                                                                      } else {
                                                                        await showModalBottomSheet(
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          enableDrag:
                                                                              false,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return WebViewAware(
                                                                              child: GestureDetector(
                                                                                onTap: () {
                                                                                  FocusScope.of(context).unfocus();
                                                                                  FocusManager.instance.primaryFocus?.unfocus();
                                                                                },
                                                                                child: Padding(
                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                  child: ModalErrorCuentaWidget(),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            safeSetState(() {}));

                                                                        if (_shouldSetState)
                                                                          safeSetState(
                                                                              () {});
                                                                        return;
                                                                      }
                                                                    } else {
                                                                      context
                                                                          .pushNamed(
                                                                        'login',
                                                                        extra: <String,
                                                                            dynamic>{
                                                                          kTransitionInfoKey:
                                                                              TransitionInfo(
                                                                            hasTransition:
                                                                                true,
                                                                            transitionType:
                                                                                PageTransitionType.fade,
                                                                            duration:
                                                                                Duration(milliseconds: 0),
                                                                          ),
                                                                        },
                                                                      );

                                                                      if (_shouldSetState)
                                                                        safeSetState(
                                                                            () {});
                                                                      return;
                                                                    }

                                                                    if (_shouldSetState)
                                                                      safeSetState(
                                                                          () {});
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .chevron_right_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .negroPerm,
                                                                    size: 24.0,
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
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 5.0, 15.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 170.0,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .sintomas,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
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
                                                            Container(
                                                              width: 40.0,
                                                              height: 40.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child: InkWell(
                                                                splashColor: Colors
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
                                                                  if ((FFAppState().authToken !=
                                                                              null &&
                                                                          FFAppState().authToken !=
                                                                              '') &&
                                                                      (FFAppState().email !=
                                                                              null &&
                                                                          FFAppState().email !=
                                                                              '')) {
                                                                    if (FFAppState()
                                                                            .creadoOk ==
                                                                        'si') {
                                                                      if (functions
                                                                              .parseJsonValueToString(getJsonField(
                                                                            FFAppState().userIndividual,
                                                                            r'''$.primer_diario''',
                                                                          )) ==
                                                                          'si') {
                                                                        await showModalBottomSheet(
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          enableDrag:
                                                                              false,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return WebViewAware(
                                                                              child: GestureDetector(
                                                                                onTap: () {
                                                                                  FocusScope.of(context).unfocus();
                                                                                  FocusManager.instance.primaryFocus?.unfocus();
                                                                                },
                                                                                child: Padding(
                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                  child: ModalSinDiarioWidget(),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            safeSetState(() {}));
                                                                      } else {
                                                                        context
                                                                            .pushNamed(
                                                                          'listado',
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
                                                                              seccion: 'Acceso Resumen Diarios Home',
                                                                            );
                                                                          }(),
                                                                        );
                                                                        return;
                                                                      }
                                                                    } else {
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return WebViewAware(
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () {
                                                                                FocusScope.of(context).unfocus();
                                                                                FocusManager.instance.primaryFocus?.unfocus();
                                                                              },
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: ModalErrorCuentaWidget(),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));

                                                                      return;
                                                                    }
                                                                  } else {
                                                                    context
                                                                        .pushNamed(
                                                                      'login',
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.fade,
                                                                          duration:
                                                                              Duration(milliseconds: 0),
                                                                        ),
                                                                      },
                                                                    );

                                                                    return;
                                                                  }
                                                                },
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/resumen.png',
                                                                    width: 40.0,
                                                                    height:
                                                                        40.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
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
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      enableDrag:
                                                                          false,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap:
                                                                                () {
                                                                              FocusScope.of(context).unfocus();
                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                            },
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: ModalInfoResumenWidget(),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .more_vert,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
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
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                if ((FFAppState().authToken !=
                                                                            null &&
                                                                        FFAppState().authToken !=
                                                                            '') &&
                                                                    (FFAppState().email !=
                                                                            null &&
                                                                        FFAppState().email !=
                                                                            '')) {
                                                                  if (FFAppState()
                                                                          .creadoOk ==
                                                                      'si') {
                                                                    if (functions
                                                                            .parseJsonValueToString(getJsonField(
                                                                          FFAppState()
                                                                              .userIndividual,
                                                                          r'''$.primer_diario''',
                                                                        )) ==
                                                                        'si') {
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return WebViewAware(
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () {
                                                                                FocusScope.of(context).unfocus();
                                                                                FocusManager.instance.primaryFocus?.unfocus();
                                                                              },
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: ModalSinDiarioWidget(),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));
                                                                    } else {
                                                                      context
                                                                          .pushNamed(
                                                                        'listado',
                                                                        extra: <String,
                                                                            dynamic>{
                                                                          kTransitionInfoKey:
                                                                              TransitionInfo(
                                                                            hasTransition:
                                                                                true,
                                                                            transitionType:
                                                                                PageTransitionType.fade,
                                                                          ),
                                                                        },
                                                                      );

                                                                      unawaited(
                                                                        () async {
                                                                          await UserLogActivityCall
                                                                              .call(
                                                                            authToken:
                                                                                FFAppState().authToken,
                                                                            seccion:
                                                                                'Acceso Resumen Diarios Home',
                                                                          );
                                                                        }(),
                                                                      );
                                                                      return;
                                                                    }
                                                                  } else {
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      enableDrag:
                                                                          false,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap:
                                                                                () {
                                                                              FocusScope.of(context).unfocus();
                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                            },
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: ModalErrorCuentaWidget(),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));

                                                                    return;
                                                                  }
                                                                } else {
                                                                  context
                                                                      .pushNamed(
                                                                    'login',
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      kTransitionInfoKey:
                                                                          TransitionInfo(
                                                                        hasTransition:
                                                                            true,
                                                                        transitionType:
                                                                            PageTransitionType.fade,
                                                                        duration:
                                                                            Duration(milliseconds: 0),
                                                                      ),
                                                                    },
                                                                  );

                                                                  return;
                                                                }
                                                              },
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '04siahpf' /* Resumen de 
Diarios */
                                                                  ,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .negroPerm,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
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
                                                                    if ((FFAppState().authToken !=
                                                                                null &&
                                                                            FFAppState().authToken !=
                                                                                '') &&
                                                                        (FFAppState().email !=
                                                                                null &&
                                                                            FFAppState().email !=
                                                                                '')) {
                                                                      if (FFAppState()
                                                                              .creadoOk ==
                                                                          'si') {
                                                                        if (functions.parseJsonValueToString(getJsonField(
                                                                              FFAppState().userIndividual,
                                                                              r'''$.primer_diario''',
                                                                            )) ==
                                                                            'si') {
                                                                          await showModalBottomSheet(
                                                                            isScrollControlled:
                                                                                true,
                                                                            backgroundColor:
                                                                                Colors.transparent,
                                                                            enableDrag:
                                                                                false,
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (context) {
                                                                              return WebViewAware(
                                                                                child: GestureDetector(
                                                                                  onTap: () {
                                                                                    FocusScope.of(context).unfocus();
                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                  },
                                                                                  child: Padding(
                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                    child: ModalSinDiarioWidget(),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ).then((value) =>
                                                                              safeSetState(() {}));
                                                                        } else {
                                                                          context
                                                                              .pushNamed(
                                                                            'listado',
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
                                                                                seccion: 'Acceso Resumen Diarios Home',
                                                                              );
                                                                            }(),
                                                                          );
                                                                          return;
                                                                        }
                                                                      } else {
                                                                        await showModalBottomSheet(
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          enableDrag:
                                                                              false,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return WebViewAware(
                                                                              child: GestureDetector(
                                                                                onTap: () {
                                                                                  FocusScope.of(context).unfocus();
                                                                                  FocusManager.instance.primaryFocus?.unfocus();
                                                                                },
                                                                                child: Padding(
                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                  child: ModalErrorCuentaWidget(),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            safeSetState(() {}));

                                                                        return;
                                                                      }
                                                                    } else {
                                                                      context
                                                                          .pushNamed(
                                                                        'login',
                                                                        extra: <String,
                                                                            dynamic>{
                                                                          kTransitionInfoKey:
                                                                              TransitionInfo(
                                                                            hasTransition:
                                                                                true,
                                                                            transitionType:
                                                                                PageTransitionType.fade,
                                                                            duration:
                                                                                Duration(milliseconds: 0),
                                                                          ),
                                                                        },
                                                                      );

                                                                      return;
                                                                    }
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .chevron_right_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .negroPerm,
                                                                    size: 24.0,
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
                                              ],
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 170.0,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .rojoHome,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
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
                                                            Container(
                                                              width: 40.0,
                                                              height: 40.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child: InkWell(
                                                                splashColor: Colors
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
                                                                  if ((FFAppState().authToken !=
                                                                              null &&
                                                                          FFAppState().authToken !=
                                                                              '') &&
                                                                      (FFAppState().email !=
                                                                              null &&
                                                                          FFAppState().email !=
                                                                              '')) {
                                                                    if (FFAppState()
                                                                            .creadoOk ==
                                                                        'si') {
                                                                      if ((functions
                                                                                  .parseJsonValueToInteger(getJsonField(
                                                                                    FFAppState().userIndividual,
                                                                                    r'''$._diario_cuenta''',
                                                                                  ))
                                                                                  .toString() ==
                                                                              '0') ||
                                                                          (functions
                                                                                  .parseJsonValueToInteger(getJsonField(
                                                                                    FFAppState().userIndividual,
                                                                                    r'''$._diario_cuenta''',
                                                                                  ))
                                                                                  .toString() ==
                                                                              '1')) {
                                                                        await showModalBottomSheet(
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          enableDrag:
                                                                              false,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return WebViewAware(
                                                                              child: GestureDetector(
                                                                                onTap: () {
                                                                                  FocusScope.of(context).unfocus();
                                                                                  FocusManager.instance.primaryFocus?.unfocus();
                                                                                },
                                                                                child: Padding(
                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                  child: ModalSinDiarioWidget(),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            safeSetState(() {}));

                                                                        return;
                                                                      } else {
                                                                        context
                                                                            .pushNamed(
                                                                          'reporteSalud',
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
                                                                              seccion: 'Acceso Carpeta de Salud Home',
                                                                            );
                                                                          }(),
                                                                        );
                                                                        return;
                                                                      }
                                                                    } else {
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return WebViewAware(
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () {
                                                                                FocusScope.of(context).unfocus();
                                                                                FocusManager.instance.primaryFocus?.unfocus();
                                                                              },
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: ModalErrorCuentaWidget(),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));

                                                                      return;
                                                                    }
                                                                  } else {
                                                                    context
                                                                        .pushNamed(
                                                                      'login',
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.fade,
                                                                          duration:
                                                                              Duration(milliseconds: 0),
                                                                        ),
                                                                      },
                                                                    );

                                                                    return;
                                                                  }
                                                                },
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/salud.png',
                                                                    width: 40.0,
                                                                    height:
                                                                        40.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
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
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      enableDrag:
                                                                          false,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap:
                                                                                () {
                                                                              FocusScope.of(context).unfocus();
                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                            },
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: ModalInfoSaludWidget(),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .more_vert,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
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
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                if ((FFAppState().authToken !=
                                                                            null &&
                                                                        FFAppState().authToken !=
                                                                            '') &&
                                                                    (FFAppState().email !=
                                                                            null &&
                                                                        FFAppState().email !=
                                                                            '')) {
                                                                  if (FFAppState()
                                                                          .creadoOk ==
                                                                      'si') {
                                                                    if ((functions
                                                                                .parseJsonValueToInteger(getJsonField(
                                                                                  FFAppState().userIndividual,
                                                                                  r'''$._diario_cuenta''',
                                                                                ))
                                                                                .toString() ==
                                                                            '0') ||
                                                                        (functions
                                                                                .parseJsonValueToInteger(getJsonField(
                                                                                  FFAppState().userIndividual,
                                                                                  r'''$._diario_cuenta''',
                                                                                ))
                                                                                .toString() ==
                                                                            '1')) {
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return WebViewAware(
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () {
                                                                                FocusScope.of(context).unfocus();
                                                                                FocusManager.instance.primaryFocus?.unfocus();
                                                                              },
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: ModalSinDiarioWidget(),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));

                                                                      return;
                                                                    } else {
                                                                      context
                                                                          .pushNamed(
                                                                        'reporteSalud',
                                                                        extra: <String,
                                                                            dynamic>{
                                                                          kTransitionInfoKey:
                                                                              TransitionInfo(
                                                                            hasTransition:
                                                                                true,
                                                                            transitionType:
                                                                                PageTransitionType.fade,
                                                                          ),
                                                                        },
                                                                      );

                                                                      unawaited(
                                                                        () async {
                                                                          await UserLogActivityCall
                                                                              .call(
                                                                            authToken:
                                                                                FFAppState().authToken,
                                                                            seccion:
                                                                                'Acceso Carpeta de Salud Home',
                                                                          );
                                                                        }(),
                                                                      );
                                                                      return;
                                                                    }
                                                                  } else {
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      enableDrag:
                                                                          false,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap:
                                                                                () {
                                                                              FocusScope.of(context).unfocus();
                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                            },
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: ModalErrorCuentaWidget(),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));

                                                                    return;
                                                                  }
                                                                } else {
                                                                  context
                                                                      .pushNamed(
                                                                    'login',
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      kTransitionInfoKey:
                                                                          TransitionInfo(
                                                                        hasTransition:
                                                                            true,
                                                                        transitionType:
                                                                            PageTransitionType.fade,
                                                                        duration:
                                                                            Duration(milliseconds: 0),
                                                                      ),
                                                                    },
                                                                  );

                                                                  return;
                                                                }
                                                              },
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'u5dnxul1' /* Carpeta de 
Salud */
                                                                  ,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .negroPerm,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
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
                                                                    if ((FFAppState().authToken !=
                                                                                null &&
                                                                            FFAppState().authToken !=
                                                                                '') &&
                                                                        (FFAppState().email !=
                                                                                null &&
                                                                            FFAppState().email !=
                                                                                '')) {
                                                                      if (FFAppState()
                                                                              .creadoOk ==
                                                                          'si') {
                                                                        if ((functions
                                                                                    .parseJsonValueToInteger(getJsonField(
                                                                                      FFAppState().userIndividual,
                                                                                      r'''$._diario_cuenta''',
                                                                                    ))
                                                                                    .toString() ==
                                                                                '0') ||
                                                                            (functions
                                                                                    .parseJsonValueToInteger(getJsonField(
                                                                                      FFAppState().userIndividual,
                                                                                      r'''$._diario_cuenta''',
                                                                                    ))
                                                                                    .toString() ==
                                                                                '1')) {
                                                                          await showModalBottomSheet(
                                                                            isScrollControlled:
                                                                                true,
                                                                            backgroundColor:
                                                                                Colors.transparent,
                                                                            enableDrag:
                                                                                false,
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (context) {
                                                                              return WebViewAware(
                                                                                child: GestureDetector(
                                                                                  onTap: () {
                                                                                    FocusScope.of(context).unfocus();
                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                  },
                                                                                  child: Padding(
                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                    child: ModalSinDiarioWidget(),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ).then((value) =>
                                                                              safeSetState(() {}));

                                                                          return;
                                                                        } else {
                                                                          context
                                                                              .pushNamed(
                                                                            'reporteSalud',
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
                                                                                seccion: 'Acceso Carpeta de Salud Home',
                                                                              );
                                                                            }(),
                                                                          );
                                                                          return;
                                                                        }
                                                                      } else {
                                                                        await showModalBottomSheet(
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          enableDrag:
                                                                              false,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return WebViewAware(
                                                                              child: GestureDetector(
                                                                                onTap: () {
                                                                                  FocusScope.of(context).unfocus();
                                                                                  FocusManager.instance.primaryFocus?.unfocus();
                                                                                },
                                                                                child: Padding(
                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                  child: ModalErrorCuentaWidget(),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            safeSetState(() {}));

                                                                        return;
                                                                      }
                                                                    } else {
                                                                      context
                                                                          .pushNamed(
                                                                        'login',
                                                                        extra: <String,
                                                                            dynamic>{
                                                                          kTransitionInfoKey:
                                                                              TransitionInfo(
                                                                            hasTransition:
                                                                                true,
                                                                            transitionType:
                                                                                PageTransitionType.fade,
                                                                            duration:
                                                                                Duration(milliseconds: 0),
                                                                          ),
                                                                        },
                                                                      );

                                                                      return;
                                                                    }
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .chevron_right_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .negroPerm,
                                                                    size: 24.0,
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
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 5.0, 15.0, 10.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if ((FFAppState().authToken != null &&
                                                FFAppState().authToken != '') &&
                                            (FFAppState().email != null &&
                                                FFAppState().email != '')) {
                                          if (FFAppState().creadoOk == 'si') {
                                            context.pushNamed(
                                              'noticias',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                ),
                                              },
                                            );

                                            unawaited(
                                              () async {
                                                await UserLogActivityCall.call(
                                                  authToken:
                                                      FFAppState().authToken,
                                                  seccion:
                                                      'Home Acceso a Noticias',
                                                );
                                              }(),
                                            );
                                            return;
                                          } else {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      FocusScope.of(context)
                                                          .unfocus();
                                                      FocusManager
                                                          .instance.primaryFocus
                                                          ?.unfocus();
                                                    },
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          ModalErrorCuentaWidget(),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));

                                            return;
                                          }
                                        } else {
                                          context.pushNamed(
                                            'login',
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

                                          return;
                                        }
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: CachedNetworkImage(
                                                fadeInDuration:
                                                    Duration(milliseconds: 500),
                                                fadeOutDuration:
                                                    Duration(milliseconds: 500),
                                                imageUrl:
                                                    FFLocalizations.of(context)
                                                                .languageCode ==
                                                            'en'
                                                        ? getJsonField(
                                                            FFAppState()
                                                                .userIndividual,
                                                            r'''$._banner_home.banner_news_en.url''',
                                                          ).toString()
                                                        : getJsonField(
                                                            FFAppState()
                                                                .userIndividual,
                                                            r'''$._banner_home.banner_news_es.url''',
                                                          ).toString(),
                                                width: 360.0,
                                                height: 100.0,
                                                fit: BoxFit.fitWidth,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 5.0, 15.0, 10.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if ((FFAppState().authToken != null &&
                                                FFAppState().authToken != '') &&
                                            (FFAppState().email != null &&
                                                FFAppState().email != '')) {
                                          if (FFAppState().creadoOk == 'si') {
                                            context.pushNamed(
                                              'invitarAmigo',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                ),
                                              },
                                            );

                                            unawaited(
                                              () async {
                                                await UserLogActivityCall.call(
                                                  authToken:
                                                      FFAppState().authToken,
                                                  seccion:
                                                      'Home Acceso a Invitar amigos',
                                                );
                                              }(),
                                            );
                                            return;
                                          } else {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      FocusScope.of(context)
                                                          .unfocus();
                                                      FocusManager
                                                          .instance.primaryFocus
                                                          ?.unfocus();
                                                    },
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          ModalErrorCuentaWidget(),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));

                                            return;
                                          }
                                        } else {
                                          context.pushNamed(
                                            'login',
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

                                          return;
                                        }
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: CachedNetworkImage(
                                                fadeInDuration:
                                                    Duration(milliseconds: 500),
                                                fadeOutDuration:
                                                    Duration(milliseconds: 500),
                                                imageUrl:
                                                    FFLocalizations.of(context)
                                                                .languageCode ==
                                                            'en'
                                                        ? getJsonField(
                                                            FFAppState()
                                                                .userIndividual,
                                                            r'''$._banner_home.banner_friends_en.url''',
                                                          ).toString()
                                                        : getJsonField(
                                                            FFAppState()
                                                                .userIndividual,
                                                            r'''$._banner_home.banner_friends_es.url''',
                                                          ).toString(),
                                                width: 360.0,
                                                height: 100.0,
                                                fit: BoxFit.fitWidth,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ].addToEnd(SizedBox(height: 100.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: wrapWithModel(
                        model: _model.menuUsuarioModel,
                        updateCallback: () => safeSetState(() {}),
                        child: MenuUsuarioWidget(
                          index: 1,
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
    );
  }
}
