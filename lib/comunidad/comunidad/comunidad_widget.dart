import '/backend/api_requests/api_calls.dart';
import '/comunidad/modal_reporta_post/modal_reporta_post_widget.dart';
import '/comunidad/modal_solicita_contacto/modal_solicita_contacto_widget.dart';
import '/comunidad/modal_user/modal_user_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/registro/modal_error_cuenta/modal_error_cuenta_widget.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import '/usuario/modal_cierre_sesion/modal_cierre_sesion_widget.dart';
import 'dart:async';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'comunidad_model.dart';
export 'comunidad_model.dart';

class ComunidadWidget extends StatefulWidget {
  const ComunidadWidget({super.key});

  @override
  State<ComunidadWidget> createState() => _ComunidadWidgetState();
}

class _ComunidadWidgetState extends State<ComunidadWidget> {
  late ComunidadModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComunidadModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiCheck = await UserCheckSessionCall.call(
        authToken: FFAppState().authToken,
      );

      if ((_model.apiCheck?.succeeded ?? true)) {
        return;
      }

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
              child: ModalCierreSesionWidget(),
            ),
          );
        },
      ).then((value) => safeSetState(() {}));

      return;
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
              if (FFAppState().perfilId == 1) {
                context.pushNamed(
                  'Home',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                    ),
                  },
                );

                return;
              } else {
                if ((FFAppState().perfilId == 2) ||
                    (FFAppState().perfilId == 3) ||
                    (FFAppState().perfilId == 4)) {
                  context.pushNamed(
                    'Home_empresa',
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
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              '0k1m0xha' /* Comunidad */,
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
                  FutureBuilder<ApiCallResponse>(
                    future: (_model.apiRequestCompleter ??=
                            Completer<ApiCallResponse>()
                              ..complete(ComunidadMuroCall.call(
                                userId: FFAppState().xUserId,
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
                              color: FlutterFlowTheme.of(context).primary,
                              size: 50.0,
                            ),
                          ),
                        );
                      }
                      final listViewComunidadMuroResponse = snapshot.data!;

                      return Builder(
                        builder: (context) {
                          final childPosts = getJsonField(
                            listViewComunidadMuroResponse.jsonBody,
                            r'''$''',
                          ).toList();

                          return RefreshIndicator(
                            onRefresh: () async {
                              safeSetState(
                                  () => _model.apiRequestCompleter = null);
                              await _model.waitForApiRequestCompleted();
                            },
                            child: ListView.separated(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: childPosts.length,
                              separatorBuilder: (_, __) =>
                                  SizedBox(height: 10.0),
                              itemBuilder: (context, childPostsIndex) {
                                final childPostsItem =
                                    childPosts[childPostsIndex];
                                return Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Container(
                                                width: 42.0,
                                                height: 42.0,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    getJsonField(
                                                      childPostsItem,
                                                      r'''$._user.avatar.url''',
                                                    ).toString(),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                functions
                                                            .parseJsonValueToInteger(
                                                                getJsonField(
                                                              childPostsItem,
                                                              r'''$._user.perfil_id''',
                                                            ))
                                                            .toString() ==
                                                        '1'
                                                    ? '${getJsonField(
                                                        childPostsItem,
                                                        r'''$._user.nombre''',
                                                      ).toString()} ${getJsonField(
                                                        childPostsItem,
                                                        r'''$._user.apellidos''',
                                                      ).toString()}'
                                                    : getJsonField(
                                                        childPostsItem,
                                                        r'''$._user.nombre_empresa''',
                                                      ).toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                            if ((FFAppState().xUserId !=
                                                    getJsonField(
                                                      childPostsItem,
                                                      r'''$.creador''',
                                                    )) &&
                                                (functions
                                                        .parseJsonValueToBoolean(
                                                            getJsonField(
                                                      childPostsItem,
                                                      r'''$._conectado''',
                                                    )) ==
                                                    true))
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
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
                                                        context.pushNamed(
                                                          'chat_conversaciones',
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
                                                      },
                                                      child: Icon(
                                                        Icons.wechat_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            if ((FFAppState().xUserId !=
                                                    getJsonField(
                                                      childPostsItem,
                                                      r'''$.creador''',
                                                    )) &&
                                                (functions
                                                        .parseJsonValueToBoolean(
                                                            getJsonField(
                                                      childPostsItem,
                                                      r'''$._conectado''',
                                                    )) ==
                                                    false))
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
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
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
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
                                                                    ModalSolicitaContactoWidget(
                                                                  contactoId:
                                                                      getJsonField(
                                                                    childPostsItem,
                                                                    r'''$.creador''',
                                                                  ),
                                                                  nombreContacto:
                                                                      getJsonField(
                                                                    childPostsItem,
                                                                    r'''$._user.nombre''',
                                                                  ).toString(),
                                                                  apellidosContacto:
                                                                      getJsonField(
                                                                    childPostsItem,
                                                                    r'''$._user.apellidos''',
                                                                  ).toString(),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            safeSetState(
                                                                () {}));

                                                        unawaited(
                                                          () async {
                                                            await UserLogActivityCall
                                                                .call(
                                                              authToken:
                                                                  FFAppState()
                                                                      .authToken,
                                                              seccion:
                                                                  'Comunidad invitar a conectar',
                                                            );
                                                          }(),
                                                        );
                                                      },
                                                      child: Icon(
                                                        Icons
                                                            .add_circle_outline,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            if (FFAppState().xUserId ==
                                                getJsonField(
                                                  childPostsItem,
                                                  r'''$.creador''',
                                                ))
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
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
                                                        if (FFAppState()
                                                                .xUserId ==
                                                            getJsonField(
                                                              childPostsItem,
                                                              r'''$.creador''',
                                                            )) {
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
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
                                                                      ModalUserWidget(
                                                                    postId:
                                                                        getJsonField(
                                                                      childPostsItem,
                                                                      r'''$.id''',
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              safeSetState(
                                                                  () {}));
                                                        }
                                                      },
                                                      child: Icon(
                                                        Icons
                                                            .drag_indicator_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                      if (functions.parseJsonValueToString(
                                              getJsonField(
                                            childPostsItem,
                                            r'''$._user.tipo_usuario''',
                                          )) !=
                                          'Paciente')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 2.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 0.0, 0.0, 0.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.network(
                                                    getJsonField(
                                                      childPostsItem,
                                                      r'''$._user.insignia.url''',
                                                    ).toString(),
                                                    width: 30.0,
                                                    height: 18.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 10.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Flexible(
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          15.0, 0.0, 10.0, 0.0),
                                                  child: Text(
                                                    getJsonField(
                                                      childPostsItem,
                                                      r'''$.texto''',
                                                    ).toString(),
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      if (functions.parseJsonValueToString(
                                              getJsonField(
                                            childPostsItem,
                                            r'''$.img_placeholder''',
                                          )) ==
                                          'no')
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.fade,
                                                child:
                                                    FlutterFlowExpandedImageView(
                                                  image: Image.network(
                                                    '${getJsonField(
                                                      childPostsItem,
                                                      r'''$.imagen.url''',
                                                    ).toString()}?tpl=med:',
                                                    fit: BoxFit.contain,
                                                  ),
                                                  allowRotation: false,
                                                  tag: '${getJsonField(
                                                    childPostsItem,
                                                    r'''$.imagen.url''',
                                                  ).toString()}?tpl=med:',
                                                  useHeroAnimation: true,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Hero(
                                            tag: '${getJsonField(
                                              childPostsItem,
                                              r'''$.imagen.url''',
                                            ).toString()}?tpl=med:',
                                            transitionOnUserGestures: true,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                '${getJsonField(
                                                  childPostsItem,
                                                  r'''$.imagen.url''',
                                                ).toString()}?tpl=med:',
                                                width: 300.0,
                                                height: 200.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        1.0, 0.0, 10.0, 0.0),
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
                                                    context.pushNamed(
                                                      'comunidad_comentarios',
                                                      queryParameters: {
                                                        'postId':
                                                            serializeParam(
                                                          getJsonField(
                                                            childPostsItem,
                                                            r'''$.id''',
                                                          ),
                                                          ParamType.int,
                                                        ),
                                                      }.withoutNulls,
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
                                                  },
                                                  child: Text(
                                                    '${valueOrDefault<String>(
                                                      getJsonField(
                                                        childPostsItem,
                                                        r'''$._comentarios_post_of_posts''',
                                                      )?.toString(),
                                                      '0',
                                                    )} Comentarios',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          letterSpacing: 0.0,
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
                                            0.0, 5.0, 0.0, 8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 176.0,
                                              height: 41.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (functions
                                                          .parseJsonValueToBoolean(
                                                              getJsonField(
                                                        childPostsItem,
                                                        r'''$._likes_post_of_posts_of_user''',
                                                      )) ==
                                                      false)
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
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
                                                            _model.apiLikes =
                                                                await ComunidadLikesCall
                                                                    .call(
                                                              authToken:
                                                                  FFAppState()
                                                                      .authToken,
                                                              postId:
                                                                  getJsonField(
                                                                childPostsItem,
                                                                r'''$.id''',
                                                              ),
                                                              accion: 'add',
                                                            );

                                                            safeSetState(() =>
                                                                _model.apiRequestCompleter =
                                                                    null);
                                                            await _model
                                                                .waitForApiRequestCompleted();
                                                          } else {
                                                            await showModalBottomSheet(
                                                              isScrollControlled:
                                                                  true,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              enableDrag: false,
                                                              context: context,
                                                              builder:
                                                                  (context) {
                                                                return GestureDetector(
                                                                  onTap: () =>
                                                                      FocusScope.of(
                                                                              context)
                                                                          .unfocus(),
                                                                  child:
                                                                      Padding(
                                                                    padding: MediaQuery
                                                                        .viewInsetsOf(
                                                                            context),
                                                                    child:
                                                                        ModalErrorCuentaWidget(),
                                                                  ),
                                                                );
                                                              },
                                                            ).then((value) =>
                                                                safeSetState(
                                                                    () {}));
                                                          }

                                                          safeSetState(() {});
                                                        },
                                                        child: Icon(
                                                          Icons.favorite_border,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                  if (functions
                                                          .parseJsonValueToBoolean(
                                                              getJsonField(
                                                        childPostsItem,
                                                        r'''$._likes_post_of_posts_of_user''',
                                                      )) ==
                                                      true)
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
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
                                                            _model.apiLikesDelete =
                                                                await ComunidadLikesCall
                                                                    .call(
                                                              authToken:
                                                                  FFAppState()
                                                                      .authToken,
                                                              postId:
                                                                  getJsonField(
                                                                childPostsItem,
                                                                r'''$.id''',
                                                              ),
                                                              accion: 'delete',
                                                            );

                                                            safeSetState(() =>
                                                                _model.apiRequestCompleter =
                                                                    null);
                                                            await _model
                                                                .waitForApiRequestCompleted();
                                                          } else {
                                                            await showModalBottomSheet(
                                                              isScrollControlled:
                                                                  true,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              enableDrag: false,
                                                              context: context,
                                                              builder:
                                                                  (context) {
                                                                return GestureDetector(
                                                                  onTap: () =>
                                                                      FocusScope.of(
                                                                              context)
                                                                          .unfocus(),
                                                                  child:
                                                                      Padding(
                                                                    padding: MediaQuery
                                                                        .viewInsetsOf(
                                                                            context),
                                                                    child:
                                                                        ModalErrorCuentaWidget(),
                                                                  ),
                                                                );
                                                              },
                                                            ).then((value) =>
                                                                safeSetState(
                                                                    () {}));
                                                          }

                                                          safeSetState(() {});
                                                        },
                                                        child: Icon(
                                                          Icons.favorite,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      '${getJsonField(
                                                        childPostsItem,
                                                        r'''$._likes_post''',
                                                      ).toString()} Me Gusta',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Flexible(
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 10.0, 0.0),
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
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
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
                                                                  ModalReportaPostWidget(
                                                                postId:
                                                                    getJsonField(
                                                                  childPostsItem,
                                                                  r'''$.id''',
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    },
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'm1frxwl6' /* Reportar Publicación */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
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
                                );
                              },
                            ),
                          );
                        },
                      );
                    },
                  ),
                ].addToEnd(SizedBox(height: 50.0)),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.7),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 17.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        _model.apiCreaPost = await ComunidadCreaPostCall.call(
                          authToken: FFAppState().authToken,
                        );

                        if ((_model.apiCreaPost?.succeeded ?? true)) {
                          context.pushNamed(
                            'comunidad_crea_post',
                            queryParameters: {
                              'postId': serializeParam(
                                ComunidadCreaPostCall.postId(
                                  (_model.apiCreaPost?.jsonBody ?? ''),
                                ),
                                ParamType.int,
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
                                seccion: 'Comunidad Crear Post',
                              );
                            }(),
                          );
                        }

                        safeSetState(() {});
                      },
                      text: FFLocalizations.of(context).getText(
                        'zko5vzom' /* Crear Publicación */,
                      ),
                      icon: Icon(
                        Icons.add_circle_outline,
                        size: 24.0,
                      ),
                      options: FFButtonOptions(
                        width: 300.0,
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondary,
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
                  ],
                ),
              ),
            ),
            wrapWithModel(
              model: _model.menuUsuarioModel,
              updateCallback: () => safeSetState(() {}),
              child: MenuUsuarioWidget(
                index: 6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
