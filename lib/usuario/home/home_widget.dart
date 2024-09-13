import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/diario_sueno/modal_aviso_sueno_hecho/modal_aviso_sueno_hecho_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/registro/modal_error_cuenta/modal_error_cuenta_widget.dart';
import '/resumen_diarios/modal_sin_diario/modal_sin_diario_widget.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import '/usuario/modal_info_into/modal_info_into_widget.dart';
import '/usuario/modal_info_resumen/modal_info_resumen_widget.dart';
import '/usuario/modal_info_salud/modal_info_salud_widget.dart';
import '/usuario/modal_info_sintomas/modal_info_sintomas_widget.dart';
import '/usuario/modal_info_sueno/modal_info_sueno_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
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
      _model.apiResult98n = await UserIndividualCall.call(
        authToken: FFAppState().authToken,
      );

      if (!(_model.apiResult98n?.succeeded ?? true)) {
        GoRouter.of(context).prepareAuthEvent();
        await authManager.signOut();
        GoRouter.of(context).clearRedirectLocation();

        context.pushNamedAuth(
          'welcome',
          context.mounted,
          extra: <String, dynamic>{
            kTransitionInfoKey: const TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 0),
            ),
          },
        );

        FFAppState().deleteAuthToken();
        FFAppState().authToken = '';

        FFAppState().deleteXUserId();
        FFAppState().xUserId = 0;

        FFAppState().deleteEmail();
        FFAppState().email = '';

        FFAppState().deleteNombre();
        FFAppState().nombre = '';

        FFAppState().deleteApellidos();
        FFAppState().apellidos = '';

        FFAppState().deleteAvatar();
        FFAppState().avatar = '';

        FFAppState().deletePerfil();
        FFAppState().perfil = '';

        FFAppState().deleteSessionId();
        FFAppState().sessionId = 0;

        FFAppState().deleteEnfermedadId();
        FFAppState().enfermedadId = 0;

        FFAppState().deleteEnfermedadTxt();
        FFAppState().enfermedadTxt = '';

        FFAppState().deletePerfilId();
        FFAppState().perfilId = 0;

        FFAppState().deleteCreadoOk();
        FFAppState().creadoOk = '';

        safeSetState(() {});
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

    return FutureBuilder<ApiCallResponse>(
      future: UserIndividualCall.call(
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
        final homeUserIndividualResponse = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
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
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
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
                                      if (FFAppState().email ==
                                          'enrique@emvipy.com') {
                                        if ((FFAppState().authToken != '') &&
                                            (FFAppState().email != '')) {
                                          if (FFAppState().creadoOk == 'si') {
                                            context.pushNamed(
                                              'perfil',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                ),
                                              },
                                            );
                                          } else {
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
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const ModalErrorCuentaWidget(),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          }
                                        } else {
                                          context.pushNamed(
                                            'login',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        }
                                      }
                                    },
                                    child: Container(
                                      width: 45.0,
                                      height: 45.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        UserIndividualCall.avatar(
                                          homeUserIndividualResponse.jsonBody,
                                        )!,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        3.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (FFAppState().email ==
                                                  'enrique@emvipy.com') {
                                                if ((FFAppState()
                                                                .authToken !=
                                                            '') &&
                                                    (FFAppState().email !=
                                                            '')) {
                                                  if (FFAppState().creadoOk ==
                                                      'si') {
                                                    context.pushNamed(
                                                      'perfil',
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            const TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                        ),
                                                      },
                                                    );
                                                  } else {
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return GestureDetector(
                                                          onTap: () =>
                                                              FocusScope.of(
                                                                      context)
                                                                  .unfocus(),
                                                          child: Padding(
                                                            padding: MediaQuery
                                                                .viewInsetsOf(
                                                                    context),
                                                            child:
                                                                const ModalErrorCuentaWidget(),
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
                                                          const TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .fade,
                                                        duration: Duration(
                                                            milliseconds: 0),
                                                      ),
                                                    },
                                                  );
                                                }
                                              }
                                            },
                                            child: Text(
                                              'Hola ${FFAppState().authToken != '' ? FFAppState().nombre : ' '}',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (FFAppState().email ==
                                                  'enrique@emvipy.com') {
                                                if ((FFAppState()
                                                                .authToken !=
                                                            '') &&
                                                    (FFAppState().email !=
                                                            '')) {
                                                  if (FFAppState().creadoOk ==
                                                      'si') {
                                                    context.pushNamed(
                                                      'perfil',
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            const TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                        ),
                                                      },
                                                    );
                                                  } else {
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return GestureDetector(
                                                          onTap: () =>
                                                              FocusScope.of(
                                                                      context)
                                                                  .unfocus(),
                                                          child: Padding(
                                                            padding: MediaQuery
                                                                .viewInsetsOf(
                                                                    context),
                                                            child:
                                                                const ModalErrorCuentaWidget(),
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
                                                          const TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .fade,
                                                        duration: Duration(
                                                            milliseconds: 0),
                                                      ),
                                                    },
                                                  );
                                                }
                                              }
                                            },
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ay8wdlx9' /* ¿Cómo te encuentras hoy? */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
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
                                      alignment: const AlignmentDirectional(1.0, 0.0),
                                      child: Container(
                                        width: 45.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (FFLocalizations.of(context)
                                                      .languageCode ==
                                                  'en') {
                                                setAppLanguage(context, 'es');
                                              } else {
                                                setAppLanguage(context, 'en');
                                              }
                                            },
                                            child: Icon(
                                              Icons.notifications_none,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
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
                                      padding: const EdgeInsetsDirectional.fromSTEB(
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
                                                alignment: const AlignmentDirectional(
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
                                                            const EdgeInsetsDirectional
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
                                                                              '') &&
                                                                      (FFAppState().email !=
                                                                              '')) {
                                                                    if (FFAppState()
                                                                            .creadoOk ==
                                                                        'si') {
                                                                      if (UserIndividualCall
                                                                              .primerDiario(
                                                                            homeUserIndividualResponse.jsonBody,
                                                                          ) ==
                                                                          'si') {
                                                                        if (UserIndividualCall.finalizoSetup(
                                                                              homeUserIndividualResponse.jsonBody,
                                                                            ) ==
                                                                            'no') {
                                                                          if (UserIndividualCall.enfermedadId(
                                                                                homeUserIndividualResponse.jsonBody,
                                                                              ) !=
                                                                              4) {
                                                                            context.pushNamed(
                                                                              'setup',
                                                                              queryParameters: {
                                                                                'enfermedadId': serializeParam(
                                                                                  UserIndividualCall.enfermedadId(
                                                                                    homeUserIndividualResponse.jsonBody,
                                                                                  ),
                                                                                  ParamType.int,
                                                                                ),
                                                                              }.withoutNulls,
                                                                              extra: <String, dynamic>{
                                                                                kTransitionInfoKey: const TransitionInfo(
                                                                                  hasTransition: true,
                                                                                  transitionType: PageTransitionType.fade,
                                                                                ),
                                                                              },
                                                                            );
                                                                          } else {
                                                                            _model.apiDiarioCrea3 =
                                                                                await DiarioCreaCall.call(
                                                                              authToken: FFAppState().authToken,
                                                                            );

                                                                            if ((_model.apiDiarioCrea3?.succeeded ??
                                                                                true)) {
                                                                              FFAppState().diarioId = DiarioCreaCall.diarioId(
                                                                                (_model.apiDiarioCreaCopy?.jsonBody ?? ''),
                                                                              )!;
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

                                                                              context.pushNamed(
                                                                                'diario1',
                                                                                extra: <String, dynamic>{
                                                                                  kTransitionInfoKey: const TransitionInfo(
                                                                                    hasTransition: true,
                                                                                    transitionType: PageTransitionType.fade,
                                                                                  ),
                                                                                },
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
                                                                                  duration: const Duration(milliseconds: 4000),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).error,
                                                                                ),
                                                                              );
                                                                            }
                                                                          }
                                                                        } else {
                                                                          _model.apiDiarioCrea3Copy =
                                                                              await DiarioCreaCall.call(
                                                                            authToken:
                                                                                FFAppState().authToken,
                                                                          );

                                                                          if ((_model.apiDiarioCrea3Copy?.succeeded ??
                                                                              true)) {
                                                                            FFAppState().diarioId =
                                                                                DiarioCreaCall.diarioId(
                                                                              (_model.apiDiarioCrea2Copy?.jsonBody ?? ''),
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

                                                                            context.pushNamed(
                                                                              'diario1',
                                                                              extra: <String, dynamic>{
                                                                                kTransitionInfoKey: const TransitionInfo(
                                                                                  hasTransition: true,
                                                                                  transitionType: PageTransitionType.fade,
                                                                                ),
                                                                              },
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
                                                                                duration: const Duration(milliseconds: 4000),
                                                                                backgroundColor: FlutterFlowTheme.of(context).error,
                                                                              ),
                                                                            );
                                                                          }
                                                                        }
                                                                      } else {
                                                                        context
                                                                            .pushNamed(
                                                                          'menu_diario',
                                                                          extra: <String,
                                                                              dynamic>{
                                                                            kTransitionInfoKey:
                                                                                const TransitionInfo(
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
                                                                          return GestureDetector(
                                                                            onTap: () =>
                                                                                FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: const ModalErrorCuentaWidget(),
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
                                                                            const TransitionInfo(
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
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
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
                                                                onTap:
                                                                    () async {
                                                                  if ((FFAppState().authToken !=
                                                                              '') &&
                                                                      (FFAppState().email !=
                                                                              '')) {
                                                                    if (FFAppState()
                                                                            .creadoOk ==
                                                                        'si') {
                                                                      if (UserIndividualCall
                                                                              .primerDiario(
                                                                            homeUserIndividualResponse.jsonBody,
                                                                          ) ==
                                                                          'si') {
                                                                        if (UserIndividualCall.finalizoSetup(
                                                                              homeUserIndividualResponse.jsonBody,
                                                                            ) ==
                                                                            'no') {
                                                                          if (UserIndividualCall.enfermedadId(
                                                                                homeUserIndividualResponse.jsonBody,
                                                                              ) !=
                                                                              4) {
                                                                            context.pushNamed(
                                                                              'setup',
                                                                              queryParameters: {
                                                                                'enfermedadId': serializeParam(
                                                                                  UserIndividualCall.enfermedadId(
                                                                                    homeUserIndividualResponse.jsonBody,
                                                                                  ),
                                                                                  ParamType.int,
                                                                                ),
                                                                              }.withoutNulls,
                                                                              extra: <String, dynamic>{
                                                                                kTransitionInfoKey: const TransitionInfo(
                                                                                  hasTransition: true,
                                                                                  transitionType: PageTransitionType.fade,
                                                                                ),
                                                                              },
                                                                            );
                                                                          } else {
                                                                            _model.apiDiarioCreaCopy =
                                                                                await DiarioCreaCall.call(
                                                                              authToken: FFAppState().authToken,
                                                                            );

                                                                            if ((_model.apiDiarioCreaCopy?.succeeded ??
                                                                                true)) {
                                                                              FFAppState().diarioId = DiarioCreaCall.diarioId(
                                                                                (_model.apiDiarioCreaCopy?.jsonBody ?? ''),
                                                                              )!;
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

                                                                              context.pushNamed(
                                                                                'diario1',
                                                                                extra: <String, dynamic>{
                                                                                  kTransitionInfoKey: const TransitionInfo(
                                                                                    hasTransition: true,
                                                                                    transitionType: PageTransitionType.fade,
                                                                                  ),
                                                                                },
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
                                                                                  duration: const Duration(milliseconds: 4000),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).error,
                                                                                ),
                                                                              );
                                                                            }
                                                                          }
                                                                        } else {
                                                                          _model.apiDiarioCrea2Copy =
                                                                              await DiarioCreaCall.call(
                                                                            authToken:
                                                                                FFAppState().authToken,
                                                                          );

                                                                          if ((_model.apiDiarioCrea2Copy?.succeeded ??
                                                                              true)) {
                                                                            FFAppState().diarioId =
                                                                                DiarioCreaCall.diarioId(
                                                                              (_model.apiDiarioCrea2Copy?.jsonBody ?? ''),
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

                                                                            context.pushNamed(
                                                                              'diario1',
                                                                              extra: <String, dynamic>{
                                                                                kTransitionInfoKey: const TransitionInfo(
                                                                                  hasTransition: true,
                                                                                  transitionType: PageTransitionType.fade,
                                                                                ),
                                                                              },
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
                                                                                duration: const Duration(milliseconds: 4000),
                                                                                backgroundColor: FlutterFlowTheme.of(context).error,
                                                                              ),
                                                                            );
                                                                          }
                                                                        }
                                                                      } else {
                                                                        context
                                                                            .pushNamed(
                                                                          'menu_diario',
                                                                          extra: <String,
                                                                              dynamic>{
                                                                            kTransitionInfoKey:
                                                                                const TransitionInfo(
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
                                                                          return GestureDetector(
                                                                            onTap: () =>
                                                                                FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: const ModalErrorCuentaWidget(),
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
                                                                            const TransitionInfo(
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
                                                                    'b3dcw7yz' /* Diario de Síntomas */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .negroPerm,
                                                                        fontSize:
                                                                            18.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
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
                                                                        return GestureDetector(
                                                                          onTap: () =>
                                                                              FocusScope.of(context).unfocus(),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                MediaQuery.viewInsetsOf(context),
                                                                            child:
                                                                                const ModalInfoSintomasWidget(),
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
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    8.0,
                                                                    5.0,
                                                                    0.0),
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
                                                                    const AlignmentDirectional(
                                                                        -1.0,
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
                                                                                '') &&
                                                                        (FFAppState().email !=
                                                                                '')) {
                                                                      if (FFAppState()
                                                                              .creadoOk ==
                                                                          'si') {
                                                                        if (UserIndividualCall.primerDiario(
                                                                              homeUserIndividualResponse.jsonBody,
                                                                            ) ==
                                                                            'si') {
                                                                          if (UserIndividualCall.finalizoSetup(
                                                                                homeUserIndividualResponse.jsonBody,
                                                                              ) ==
                                                                              'no') {
                                                                            if (UserIndividualCall.enfermedadId(
                                                                                  homeUserIndividualResponse.jsonBody,
                                                                                ) !=
                                                                                4) {
                                                                              context.pushNamed(
                                                                                'setup',
                                                                                queryParameters: {
                                                                                  'enfermedadId': serializeParam(
                                                                                    UserIndividualCall.enfermedadId(
                                                                                      homeUserIndividualResponse.jsonBody,
                                                                                    ),
                                                                                    ParamType.int,
                                                                                  ),
                                                                                }.withoutNulls,
                                                                                extra: <String, dynamic>{
                                                                                  kTransitionInfoKey: const TransitionInfo(
                                                                                    hasTransition: true,
                                                                                    transitionType: PageTransitionType.fade,
                                                                                  ),
                                                                                },
                                                                              );
                                                                            } else {
                                                                              _model.apiDiarioCrea4 = await DiarioCreaCall.call(
                                                                                authToken: FFAppState().authToken,
                                                                              );

                                                                              if ((_model.apiDiarioCrea4?.succeeded ?? true)) {
                                                                                FFAppState().diarioId = DiarioCreaCall.diarioId(
                                                                                  (_model.apiDiarioCreaCopy?.jsonBody ?? ''),
                                                                                )!;
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

                                                                                context.pushNamed(
                                                                                  'diario1',
                                                                                  extra: <String, dynamic>{
                                                                                    kTransitionInfoKey: const TransitionInfo(
                                                                                      hasTransition: true,
                                                                                      transitionType: PageTransitionType.fade,
                                                                                    ),
                                                                                  },
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
                                                                                    duration: const Duration(milliseconds: 4000),
                                                                                    backgroundColor: FlutterFlowTheme.of(context).error,
                                                                                  ),
                                                                                );
                                                                              }
                                                                            }
                                                                          } else {
                                                                            _model.apiDiarioCrea4Copy =
                                                                                await DiarioCreaCall.call(
                                                                              authToken: FFAppState().authToken,
                                                                            );

                                                                            if ((_model.apiDiarioCrea4Copy?.succeeded ??
                                                                                true)) {
                                                                              FFAppState().diarioId = DiarioCreaCall.diarioId(
                                                                                (_model.apiDiarioCrea2Copy?.jsonBody ?? ''),
                                                                              )!;
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

                                                                              context.pushNamed(
                                                                                'diario1',
                                                                                extra: <String, dynamic>{
                                                                                  kTransitionInfoKey: const TransitionInfo(
                                                                                    hasTransition: true,
                                                                                    transitionType: PageTransitionType.fade,
                                                                                  ),
                                                                                },
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
                                                                                  duration: const Duration(milliseconds: 4000),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).error,
                                                                                ),
                                                                              );
                                                                            }
                                                                          }
                                                                        } else {
                                                                          context
                                                                              .pushNamed(
                                                                            'menu_diario',
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              kTransitionInfoKey: const TransitionInfo(
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
                                                                            return GestureDetector(
                                                                              onTap: () => FocusScope.of(context).unfocus(),
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: const ModalErrorCuentaWidget(),
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
                                                                              const TransitionInfo(
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
                                                                    () {
                                                                      if ((UserIndividualCall
                                                                                  .diarioHecho(
                                                                                homeUserIndividualResponse.jsonBody,
                                                                              ) ==
                                                                              'no') &&
                                                                          (FFLocalizations.of(context).languageCode !=
                                                                              'en')) {
                                                                        return 'Aún no has completado tu diario de hoy...';
                                                                      } else if ((UserIndividualCall
                                                                                  .diarioHecho(
                                                                                homeUserIndividualResponse.jsonBody,
                                                                              ) ==
                                                                              'no') &&
                                                                          (FFLocalizations.of(context).languageCode ==
                                                                              'en')) {
                                                                        return 'You have not yet completed today\'s diary...';
                                                                      } else if ((UserIndividualCall
                                                                                  .diarioHecho(
                                                                                homeUserIndividualResponse.jsonBody,
                                                                              ) ==
                                                                              'si') &&
                                                                          (FFLocalizations.of(context).languageCode !=
                                                                              'en')) {
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
                                                                          color:
                                                                              FlutterFlowTheme.of(context).negroPerm,
                                                                          fontSize:
                                                                              13.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
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
                                                                            '') &&
                                                                    (FFAppState().email !=
                                                                            '')) {
                                                                  if (FFAppState()
                                                                          .creadoOk ==
                                                                      'si') {
                                                                    if (UserIndividualCall
                                                                            .primerDiario(
                                                                          homeUserIndividualResponse
                                                                              .jsonBody,
                                                                        ) ==
                                                                        'si') {
                                                                      if (UserIndividualCall
                                                                              .finalizoSetup(
                                                                            homeUserIndividualResponse.jsonBody,
                                                                          ) ==
                                                                          'no') {
                                                                        if (UserIndividualCall.enfermedadId(
                                                                              homeUserIndividualResponse.jsonBody,
                                                                            ) !=
                                                                            4) {
                                                                          context
                                                                              .pushNamed(
                                                                            'setup',
                                                                            queryParameters:
                                                                                {
                                                                              'enfermedadId': serializeParam(
                                                                                UserIndividualCall.enfermedadId(
                                                                                  homeUserIndividualResponse.jsonBody,
                                                                                ),
                                                                                ParamType.int,
                                                                              ),
                                                                            }.withoutNulls,
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              kTransitionInfoKey: const TransitionInfo(
                                                                                hasTransition: true,
                                                                                transitionType: PageTransitionType.fade,
                                                                              ),
                                                                            },
                                                                          );
                                                                        } else {
                                                                          _model.apiDiarioCrea =
                                                                              await DiarioCreaCall.call(
                                                                            authToken:
                                                                                FFAppState().authToken,
                                                                          );

                                                                          if ((_model.apiDiarioCrea?.succeeded ??
                                                                              true)) {
                                                                            FFAppState().diarioId =
                                                                                DiarioCreaCall.diarioId(
                                                                              (_model.apiDiarioCrea?.jsonBody ?? ''),
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

                                                                            context.pushNamed(
                                                                              'diario1',
                                                                              extra: <String, dynamic>{
                                                                                kTransitionInfoKey: const TransitionInfo(
                                                                                  hasTransition: true,
                                                                                  transitionType: PageTransitionType.fade,
                                                                                ),
                                                                              },
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
                                                                                duration: const Duration(milliseconds: 4000),
                                                                                backgroundColor: FlutterFlowTheme.of(context).error,
                                                                              ),
                                                                            );
                                                                          }
                                                                        }
                                                                      } else {
                                                                        _model.apiDiarioCrea2 =
                                                                            await DiarioCreaCall.call(
                                                                          authToken:
                                                                              FFAppState().authToken,
                                                                        );

                                                                        if ((_model.apiDiarioCrea2?.succeeded ??
                                                                            true)) {
                                                                          FFAppState().diarioId =
                                                                              DiarioCreaCall.diarioId(
                                                                            (_model.apiDiarioCrea2?.jsonBody ??
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

                                                                          context
                                                                              .pushNamed(
                                                                            'diario1',
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              kTransitionInfoKey: const TransitionInfo(
                                                                                hasTransition: true,
                                                                                transitionType: PageTransitionType.fade,
                                                                              ),
                                                                            },
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
                                                                              duration: const Duration(milliseconds: 4000),
                                                                              backgroundColor: FlutterFlowTheme.of(context).error,
                                                                            ),
                                                                          );
                                                                        }
                                                                      }
                                                                    } else {
                                                                      context
                                                                          .pushNamed(
                                                                        'menu_diario',
                                                                        extra: <String,
                                                                            dynamic>{
                                                                          kTransitionInfoKey:
                                                                              const TransitionInfo(
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
                                                                        return GestureDetector(
                                                                          onTap: () =>
                                                                              FocusScope.of(context).unfocus(),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                MediaQuery.viewInsetsOf(context),
                                                                            child:
                                                                                const ModalErrorCuentaWidget(),
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
                                                                          const TransitionInfo(
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
                                                                size: 28.0,
                                                              ),
                                                            ),
                                                          ],
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
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 5.0, 15.0, 10.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 170.0,
                                                    height: 100.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      5.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
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
                                                                                '') &&
                                                                        (FFAppState().email !=
                                                                                '')) {
                                                                      if (FFAppState()
                                                                              .creadoOk ==
                                                                          'si') {
                                                                        if (UserIndividualCall.primerInto(
                                                                              homeUserIndividualResponse.jsonBody,
                                                                            ) ==
                                                                            'si') {
                                                                          if (UserIndividualCall.finalizoIntolerancias(
                                                                                homeUserIndividualResponse.jsonBody,
                                                                              ) ==
                                                                              'no') {
                                                                            FFAppState().diarioIntoAnterior =
                                                                                UserIndividualCall.idIntoEditar(
                                                                              homeUserIndividualResponse.jsonBody,
                                                                            )!;
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
                                                                                kTransitionInfoKey: const TransitionInfo(
                                                                                  hasTransition: true,
                                                                                  transitionType: PageTransitionType.fade,
                                                                                ),
                                                                              },
                                                                            );
                                                                          } else {
                                                                            _model.apiDiarioInto1Icon =
                                                                                await DiarioIntoCreaCall.call(
                                                                              authToken: FFAppState().authToken,
                                                                            );

                                                                            if ((_model.apiDiarioInto1Icon?.succeeded ??
                                                                                true)) {
                                                                              FFAppState().diarioIntoId = DiarioIntoCreaCall.id(
                                                                                (_model.apiDiarioInto1Icon?.jsonBody ?? ''),
                                                                              )!;
                                                                              FFAppState().primerDiarioInto = 'si';
                                                                              FFAppState().diarioIntoAnterior = UserIndividualCall.idIntoEditar(
                                                                                homeUserIndividualResponse.jsonBody,
                                                                              )!;
                                                                              FFAppState().editandoDiario = 'no';
                                                                              FFAppState().momento = 1;
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
                                                                                  kTransitionInfoKey: const TransitionInfo(
                                                                                    hasTransition: true,
                                                                                    transitionType: PageTransitionType.fade,
                                                                                  ),
                                                                                },
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
                                                                                  duration: const Duration(milliseconds: 4000),
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
                                                                              kTransitionInfoKey: const TransitionInfo(
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
                                                                            return GestureDetector(
                                                                              onTap: () => FocusScope.of(context).unfocus(),
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: const ModalErrorCuentaWidget(),
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
                                                                              const TransitionInfo(
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
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/intolerancia.png',
                                                                      width:
                                                                          40.0,
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
                                                                      const AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
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
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return GestureDetector(
                                                                            onTap: () =>
                                                                                FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: const ModalInfoIntoWidget(),
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
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      5.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
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
                                                                onTap:
                                                                    () async {
                                                                  if ((FFAppState().authToken !=
                                                                              '') &&
                                                                      (FFAppState().email !=
                                                                              '')) {
                                                                    if (FFAppState()
                                                                            .creadoOk ==
                                                                        'si') {
                                                                      if (UserIndividualCall
                                                                              .primerInto(
                                                                            homeUserIndividualResponse.jsonBody,
                                                                          ) ==
                                                                          'si') {
                                                                        if (UserIndividualCall.finalizoIntolerancias(
                                                                              homeUserIndividualResponse.jsonBody,
                                                                            ) ==
                                                                            'no') {
                                                                          FFAppState().diarioIntoAnterior =
                                                                              UserIndividualCall.idIntoEditar(
                                                                            homeUserIndividualResponse.jsonBody,
                                                                          )!;
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
                                                                              kTransitionInfoKey: const TransitionInfo(
                                                                                hasTransition: true,
                                                                                transitionType: PageTransitionType.fade,
                                                                              ),
                                                                            },
                                                                          );
                                                                        } else {
                                                                          _model.apiDiarioInto4 =
                                                                              await DiarioIntoCreaCall.call(
                                                                            authToken:
                                                                                FFAppState().authToken,
                                                                          );

                                                                          if ((_model.apiDiarioInto4?.succeeded ??
                                                                              true)) {
                                                                            FFAppState().diarioIntoId =
                                                                                DiarioIntoCreaCall.id(
                                                                              (_model.apiDiarioInto4?.jsonBody ?? ''),
                                                                            )!;
                                                                            FFAppState().primerDiarioInto =
                                                                                'si';
                                                                            FFAppState().diarioIntoAnterior =
                                                                                UserIndividualCall.idIntoEditar(
                                                                              homeUserIndividualResponse.jsonBody,
                                                                            )!;
                                                                            FFAppState().editandoDiario =
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

                                                                            context.pushNamed(
                                                                              'diario_Into1',
                                                                              queryParameters: {
                                                                                'primerIdario': serializeParam(
                                                                                  'si',
                                                                                  ParamType.String,
                                                                                ),
                                                                              }.withoutNulls,
                                                                              extra: <String, dynamic>{
                                                                                kTransitionInfoKey: const TransitionInfo(
                                                                                  hasTransition: true,
                                                                                  transitionType: PageTransitionType.fade,
                                                                                ),
                                                                              },
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
                                                                                duration: const Duration(milliseconds: 4000),
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
                                                                                const TransitionInfo(
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
                                                                          return GestureDetector(
                                                                            onTap: () =>
                                                                                FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: const ModalErrorCuentaWidget(),
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
                                                                            const TransitionInfo(
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
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .negroPerm,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              Flexible(
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      if ((FFAppState().authToken !=
                                                                                  '') &&
                                                                          (FFAppState().email != '')) {
                                                                        if (FFAppState().creadoOk ==
                                                                            'si') {
                                                                          if (UserIndividualCall.primerInto(
                                                                                homeUserIndividualResponse.jsonBody,
                                                                              ) ==
                                                                              'si') {
                                                                            if (UserIndividualCall.finalizoIntolerancias(
                                                                                  homeUserIndividualResponse.jsonBody,
                                                                                ) ==
                                                                                'no') {
                                                                              FFAppState().diarioIntoAnterior = UserIndividualCall.idIntoEditar(
                                                                                homeUserIndividualResponse.jsonBody,
                                                                              )!;
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
                                                                              FFAppState().editandoDiario = 'no';

                                                                              context.pushNamed(
                                                                                'setupInto',
                                                                                extra: <String, dynamic>{
                                                                                  kTransitionInfoKey: const TransitionInfo(
                                                                                    hasTransition: true,
                                                                                    transitionType: PageTransitionType.fade,
                                                                                  ),
                                                                                },
                                                                              );
                                                                            } else {
                                                                              _model.apiDiarioInto1 = await DiarioIntoCreaCall.call(
                                                                                authToken: FFAppState().authToken,
                                                                              );

                                                                              if ((_model.apiDiarioInto1?.succeeded ?? true)) {
                                                                                FFAppState().diarioIntoId = DiarioIntoCreaCall.id(
                                                                                  (_model.apiDiarioInto1?.jsonBody ?? ''),
                                                                                )!;
                                                                                FFAppState().primerDiarioInto = 'si';
                                                                                FFAppState().diarioIntoAnterior = UserIndividualCall.idIntoEditar(
                                                                                  homeUserIndividualResponse.jsonBody,
                                                                                )!;
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
                                                                                    kTransitionInfoKey: const TransitionInfo(
                                                                                      hasTransition: true,
                                                                                      transitionType: PageTransitionType.fade,
                                                                                    ),
                                                                                  },
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
                                                                                    duration: const Duration(milliseconds: 4000),
                                                                                    backgroundColor: FlutterFlowTheme.of(context).error,
                                                                                  ),
                                                                                );
                                                                              }
                                                                            }
                                                                          } else {
                                                                            context.pushNamed(
                                                                              'menu_intolerancias',
                                                                              extra: <String, dynamic>{
                                                                                kTransitionInfoKey: const TransitionInfo(
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
                                                                              return GestureDetector(
                                                                                onTap: () => FocusScope.of(context).unfocus(),
                                                                                child: Padding(
                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                  child: const ModalErrorCuentaWidget(),
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
                                                                                const TransitionInfo(
                                                                              hasTransition: true,
                                                                              transitionType: PageTransitionType.fade,
                                                                              duration: Duration(milliseconds: 0),
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
                                                                      size:
                                                                          24.0,
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
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 170.0,
                                                    height: 100.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      5.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
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
                                                                                '') &&
                                                                        (FFAppState().email !=
                                                                                '')) {
                                                                      if (FFAppState()
                                                                              .creadoOk ==
                                                                          'si') {
                                                                        if (UserIndividualCall.suenoHecho(
                                                                              homeUserIndividualResponse.jsonBody,
                                                                            ) ==
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
                                                                              return GestureDetector(
                                                                                onTap: () => FocusScope.of(context).unfocus(),
                                                                                child: Padding(
                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                  child: const ModalAvisoSuenoHechoWidget(),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ).then((value) =>
                                                                              safeSetState(() {}));
                                                                        } else {
                                                                          _model.apiCreaSuenoh2 =
                                                                              await SuenoCreaDiarioCall.call(
                                                                            authToken:
                                                                                FFAppState().authToken,
                                                                          );

                                                                          FFAppState().diarioSuenoId =
                                                                              SuenoCreaDiarioCall.id(
                                                                            (_model.apiCreaSuenoh2?.jsonBody ??
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
                                                                              kTransitionInfoKey: const TransitionInfo(
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
                                                                            return GestureDetector(
                                                                              onTap: () => FocusScope.of(context).unfocus(),
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: const ModalErrorCuentaWidget(),
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
                                                                              const TransitionInfo(
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
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/bed.png',
                                                                      width:
                                                                          40.0,
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
                                                                      const AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
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
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return GestureDetector(
                                                                            onTap: () =>
                                                                                FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: const ModalInfoSuenoWidget(),
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
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      15.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
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
                                                                onTap:
                                                                    () async {
                                                                  if (FFAppState()
                                                                              .authToken !=
                                                                          '') {
                                                                    if (FFAppState()
                                                                            .creadoOk ==
                                                                        'si') {
                                                                      if (UserIndividualCall
                                                                              .suenoHecho(
                                                                            homeUserIndividualResponse.jsonBody,
                                                                          ) ==
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
                                                                            return GestureDetector(
                                                                              onTap: () => FocusScope.of(context).unfocus(),
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: const ModalAvisoSuenoHechoWidget(),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            safeSetState(() {}));
                                                                      } else {
                                                                        _model.apiCreaSuenoh3 =
                                                                            await SuenoCreaDiarioCall.call(
                                                                          authToken:
                                                                              FFAppState().authToken,
                                                                        );

                                                                        FFAppState().diarioSuenoId =
                                                                            SuenoCreaDiarioCall.id(
                                                                          (_model.apiCreaSuenoh3?.jsonBody ??
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
                                                                                const TransitionInfo(
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
                                                                          return GestureDetector(
                                                                            onTap: () =>
                                                                                FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: const ModalErrorCuentaWidget(),
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
                                                                            const TransitionInfo(
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
                                                                    'qfhcs0zs' /* Diario de Sueño */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .negroPerm,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              Flexible(
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      if ((FFAppState().authToken !=
                                                                                  '') &&
                                                                          (FFAppState().email != '')) {
                                                                        if (FFAppState().creadoOk ==
                                                                            'si') {
                                                                          if (UserIndividualCall.suenoHecho(
                                                                                homeUserIndividualResponse.jsonBody,
                                                                              ) ==
                                                                              'si') {
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
                                                                                    child: const ModalAvisoSuenoHechoWidget(),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                safeSetState(() {}));
                                                                          } else {
                                                                            _model.apiCreaSueno =
                                                                                await SuenoCreaDiarioCall.call(
                                                                              authToken: FFAppState().authToken,
                                                                            );

                                                                            FFAppState().diarioSuenoId =
                                                                                SuenoCreaDiarioCall.id(
                                                                              (_model.apiCreaSueno?.jsonBody ?? ''),
                                                                            )!;
                                                                            FFAppState().diarioSuenoSup =
                                                                                'no';
                                                                            FFAppState().diarioSuenoMed =
                                                                                'no';
                                                                            FFAppState().diarioSuenoUltMed =
                                                                                '';
                                                                            FFAppState().diarioSuenoUltSup =
                                                                                '';

                                                                            context.pushNamed(
                                                                              'diario_sueno1',
                                                                              extra: <String, dynamic>{
                                                                                kTransitionInfoKey: const TransitionInfo(
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
                                                                              return GestureDetector(
                                                                                onTap: () => FocusScope.of(context).unfocus(),
                                                                                child: Padding(
                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                  child: const ModalErrorCuentaWidget(),
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
                                                                                const TransitionInfo(
                                                                              hasTransition: true,
                                                                              transitionType: PageTransitionType.fade,
                                                                              duration: Duration(milliseconds: 0),
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
                                                                      size:
                                                                          24.0,
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
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 5.0, 15.0, 10.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 170.0,
                                                    height: 100.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      5.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
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
                                                                                '') &&
                                                                        (FFAppState().email !=
                                                                                '')) {
                                                                      if (FFAppState()
                                                                              .creadoOk ==
                                                                          'si') {
                                                                        if (UserIndividualCall.primerDiario(
                                                                              homeUserIndividualResponse.jsonBody,
                                                                            ) ==
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
                                                                              return GestureDetector(
                                                                                onTap: () => FocusScope.of(context).unfocus(),
                                                                                child: Padding(
                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                  child: const ModalSinDiarioWidget(),
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
                                                                              kTransitionInfoKey: const TransitionInfo(
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
                                                                            return GestureDetector(
                                                                              onTap: () => FocusScope.of(context).unfocus(),
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: const ModalErrorCuentaWidget(),
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
                                                                              const TransitionInfo(
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
                                                                  },
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/resumen.png',
                                                                      width:
                                                                          40.0,
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
                                                                      const AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
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
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return GestureDetector(
                                                                            onTap: () =>
                                                                                FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: const ModalInfoResumenWidget(),
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
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      5.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
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
                                                                onTap:
                                                                    () async {
                                                                  if ((FFAppState().authToken !=
                                                                              '') &&
                                                                      (FFAppState().email !=
                                                                              '')) {
                                                                    if (FFAppState()
                                                                            .creadoOk ==
                                                                        'si') {
                                                                      if (UserIndividualCall
                                                                              .primerDiario(
                                                                            homeUserIndividualResponse.jsonBody,
                                                                          ) ==
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
                                                                            return GestureDetector(
                                                                              onTap: () => FocusScope.of(context).unfocus(),
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: const ModalSinDiarioWidget(),
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
                                                                                const TransitionInfo(
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
                                                                          return GestureDetector(
                                                                            onTap: () =>
                                                                                FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: const ModalErrorCuentaWidget(),
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
                                                                            const TransitionInfo(
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
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .negroPerm,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              Flexible(
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      if ((FFAppState().authToken !=
                                                                                  '') &&
                                                                          (FFAppState().email != '')) {
                                                                        if (FFAppState().creadoOk ==
                                                                            'si') {
                                                                          if (UserIndividualCall.primerDiario(
                                                                                homeUserIndividualResponse.jsonBody,
                                                                              ) ==
                                                                              'si') {
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
                                                                                    child: const ModalSinDiarioWidget(),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                safeSetState(() {}));
                                                                          } else {
                                                                            context.pushNamed(
                                                                              'listado',
                                                                              extra: <String, dynamic>{
                                                                                kTransitionInfoKey: const TransitionInfo(
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
                                                                              return GestureDetector(
                                                                                onTap: () => FocusScope.of(context).unfocus(),
                                                                                child: Padding(
                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                  child: const ModalErrorCuentaWidget(),
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
                                                                                const TransitionInfo(
                                                                              hasTransition: true,
                                                                              transitionType: PageTransitionType.fade,
                                                                              duration: Duration(milliseconds: 0),
                                                                            ),
                                                                          },
                                                                        );
                                                                      }
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .chevron_right_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .negroPerm,
                                                                      size:
                                                                          24.0,
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
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 170.0,
                                                    height: 100.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      5.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
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
                                                                onTap:
                                                                    () async {
                                                                  if ((FFAppState().authToken !=
                                                                              '') &&
                                                                      (FFAppState().email !=
                                                                              '')) {
                                                                    if (FFAppState()
                                                                            .creadoOk ==
                                                                        'si') {
                                                                      if (UserIndividualCall
                                                                              .primerDiario(
                                                                            homeUserIndividualResponse.jsonBody,
                                                                          ) ==
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
                                                                            return GestureDetector(
                                                                              onTap: () => FocusScope.of(context).unfocus(),
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: const ModalSinDiarioWidget(),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            safeSetState(() {}));
                                                                      } else {
                                                                        context
                                                                            .pushNamed(
                                                                          'reporteSalud',
                                                                          extra: <String,
                                                                              dynamic>{
                                                                            kTransitionInfoKey:
                                                                                const TransitionInfo(
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
                                                                          return GestureDetector(
                                                                            onTap: () =>
                                                                                FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: const ModalErrorCuentaWidget(),
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
                                                                            const TransitionInfo(
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
                                                                },
                                                                child:
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
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/salud.png',
                                                                      width:
                                                                          40.0,
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
                                                                      const AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
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
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return GestureDetector(
                                                                            onTap: () =>
                                                                                FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: const ModalInfoSaludWidget(),
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
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      5.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
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
                                                                onTap:
                                                                    () async {
                                                                  if ((FFAppState().authToken !=
                                                                              '') &&
                                                                      (FFAppState().email !=
                                                                              '')) {
                                                                    if (FFAppState()
                                                                            .creadoOk ==
                                                                        'si') {
                                                                      if (UserIndividualCall
                                                                              .primerDiario(
                                                                            homeUserIndividualResponse.jsonBody,
                                                                          ) ==
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
                                                                            return GestureDetector(
                                                                              onTap: () => FocusScope.of(context).unfocus(),
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: const ModalSinDiarioWidget(),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            safeSetState(() {}));
                                                                      } else {
                                                                        context
                                                                            .pushNamed(
                                                                          'reporteSalud',
                                                                          extra: <String,
                                                                              dynamic>{
                                                                            kTransitionInfoKey:
                                                                                const TransitionInfo(
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
                                                                          return GestureDetector(
                                                                            onTap: () =>
                                                                                FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: const ModalErrorCuentaWidget(),
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
                                                                            const TransitionInfo(
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
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .negroPerm,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              Flexible(
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      if ((FFAppState().authToken !=
                                                                                  '') &&
                                                                          (FFAppState().email != '')) {
                                                                        if (FFAppState().creadoOk ==
                                                                            'si') {
                                                                          if (UserIndividualCall.primerDiario(
                                                                                homeUserIndividualResponse.jsonBody,
                                                                              ) ==
                                                                              'si') {
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
                                                                                    child: const ModalSinDiarioWidget(),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                safeSetState(() {}));
                                                                          } else {
                                                                            context.pushNamed(
                                                                              'reporteSalud',
                                                                              extra: <String, dynamic>{
                                                                                kTransitionInfoKey: const TransitionInfo(
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
                                                                              return GestureDetector(
                                                                                onTap: () => FocusScope.of(context).unfocus(),
                                                                                child: Padding(
                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                  child: const ModalErrorCuentaWidget(),
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
                                                                                const TransitionInfo(
                                                                              hasTransition: true,
                                                                              transitionType: PageTransitionType.fade,
                                                                              duration: Duration(milliseconds: 0),
                                                                            ),
                                                                          },
                                                                        );
                                                                      }
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .chevron_right_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .negroPerm,
                                                                      size:
                                                                          24.0,
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
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 5.0, 15.0, 10.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if ((FFAppState().authToken !=
                                                      '') &&
                                              (FFAppState().email != '')) {
                                            if (FFAppState().creadoOk == 'si') {
                                              context.pushNamed(
                                                'noticias',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      const TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                  ),
                                                },
                                              );
                                            } else {
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
                                                          const ModalErrorCuentaWidget(),
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
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );
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
                                                child: Image.network(
                                                  FFLocalizations.of(context)
                                                              .languageCode ==
                                                          'en'
                                                      ? UserIndividualCall
                                                          .newsEn(
                                                          homeUserIndividualResponse
                                                              .jsonBody,
                                                        )!
                                                      : UserIndividualCall
                                                          .newsEs(
                                                          homeUserIndividualResponse
                                                              .jsonBody,
                                                        )!,
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
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 5.0, 15.0, 10.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if ((FFAppState().authToken !=
                                                      '') &&
                                              (FFAppState().email != '')) {
                                            if (FFAppState().creadoOk == 'si') {
                                              context.pushNamed(
                                                'invitarAmigo',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      const TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                  ),
                                                },
                                              );
                                            } else {
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
                                                          const ModalErrorCuentaWidget(),
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
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );
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
                                                child: Image.network(
                                                  FFLocalizations.of(context)
                                                              .languageCode ==
                                                          'en'
                                                      ? UserIndividualCall
                                                          .friendsEn(
                                                          homeUserIndividualResponse
                                                              .jsonBody,
                                                        )!
                                                      : UserIndividualCall
                                                          .friendsEs(
                                                          homeUserIndividualResponse
                                                              .jsonBody,
                                                        )!,
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
                                  ].addToEnd(const SizedBox(height: 100.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: wrapWithModel(
                          model: _model.menuUsuarioModel,
                          updateCallback: () => safeSetState(() {}),
                          child: const MenuUsuarioWidget(
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
        );
      },
    );
  }
}
