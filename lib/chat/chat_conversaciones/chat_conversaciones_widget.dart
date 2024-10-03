import '/backend/api_requests/api_calls.dart';
import '/chat/modal_elimina_conversacion/modal_elimina_conversacion_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chat_conversaciones_model.dart';
export 'chat_conversaciones_model.dart';

class ChatConversacionesWidget extends StatefulWidget {
  const ChatConversacionesWidget({super.key});

  @override
  State<ChatConversacionesWidget> createState() =>
      _ChatConversacionesWidgetState();
}

class _ChatConversacionesWidgetState extends State<ChatConversacionesWidget> {
  late ChatConversacionesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatConversacionesModel());

    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        safeSetState(() {
          _isKeyboardVisible = visible;
        });
      });
    }
  }

  @override
  void dispose() {
    _model.dispose();

    if (!isWeb) {
      _keyboardVisibilitySubscription.cancel();
    }
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
          title: Text(
            FFLocalizations.of(context).getText(
              '14sy3y7j' /* Conversaciones */,
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 15.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'indh7wss' /* Invitaciones pendientes de res... */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 360.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: FutureBuilder<ApiCallResponse>(
                              future: (_model.apiRequestCompleter1 ??=
                                      Completer<ApiCallResponse>()
                                        ..complete(
                                            ChatListadoInvitacionesCall.call(
                                          authToken: FFAppState().authToken,
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
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 50.0,
                                      ),
                                    ),
                                  );
                                }
                                final listViewInvitacionesChatListadoInvitacionesResponse =
                                    snapshot.data!;

                                return Builder(
                                  builder: (context) {
                                    final childInvitaciones = getJsonField(
                                      listViewInvitacionesChatListadoInvitacionesResponse
                                          .jsonBody,
                                      r'''$''',
                                    ).toList();
                                    if (childInvitaciones.isEmpty) {
                                      return Image.asset(
                                        'assets/images/empty.png',
                                        height: 75.0,
                                        fit: BoxFit.fill,
                                      );
                                    }

                                    return ListView.separated(
                                      padding: EdgeInsets.fromLTRB(
                                        0,
                                        0,
                                        0,
                                        10.0,
                                      ),
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: childInvitaciones.length,
                                      separatorBuilder: (_, __) =>
                                          SizedBox(height: 10.0),
                                      itemBuilder:
                                          (context, childInvitacionesIndex) {
                                        final childInvitacionesItem =
                                            childInvitaciones[
                                                childInvitacionesIndex];
                                        return Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: 350.0,
                                            height: 60.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Flexible(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        getJsonField(
                                                          childInvitacionesItem,
                                                          r'''$.titulo_creador''',
                                                        ).toString(),
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
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Container(
                                                      width: 120.0,
                                                      height: 47.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            FlutterFlowIconButton(
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                              borderRadius:
                                                                  20.0,
                                                              borderWidth: 1.0,
                                                              buttonSize: 40.0,
                                                              fillColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                              icon: Icon(
                                                                Icons
                                                                    .check_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                size: 24.0,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                _model.apiResult2dv =
                                                                    await ChatGestionaInvitacionesCall
                                                                        .call(
                                                                  authToken:
                                                                      FFAppState()
                                                                          .authToken,
                                                                  idConversacion:
                                                                      getJsonField(
                                                                    childInvitacionesItem,
                                                                    r'''$.id''',
                                                                  ),
                                                                  estado: 'si',
                                                                );

                                                                if ((_model
                                                                        .apiResult2dv
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  safeSetState(() =>
                                                                      _model.apiRequestCompleter1 =
                                                                          null);
                                                                  await _model
                                                                      .waitForApiRequestCompleted1();
                                                                  safeSetState(() =>
                                                                      _model.apiRequestCompleter2 =
                                                                          null);
                                                                  await _model
                                                                      .waitForApiRequestCompleted2();
                                                                }

                                                                safeSetState(
                                                                    () {});
                                                              },
                                                            ),
                                                            FlutterFlowIconButton(
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                              borderRadius:
                                                                  20.0,
                                                              borderWidth: 1.0,
                                                              buttonSize: 40.0,
                                                              fillColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                              icon: Icon(
                                                                Icons
                                                                    .close_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                size: 24.0,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                _model.apiResult5344444 =
                                                                    await ChatGestionaInvitacionesCall
                                                                        .call(
                                                                  authToken:
                                                                      FFAppState()
                                                                          .authToken,
                                                                  idConversacion:
                                                                      getJsonField(
                                                                    childInvitacionesItem,
                                                                    r'''$.id''',
                                                                  ),
                                                                  estado: 'no',
                                                                );

                                                                if ((_model
                                                                        .apiResult5344444
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  safeSetState(() =>
                                                                      _model.apiRequestCompleter1 =
                                                                          null);
                                                                  await _model
                                                                      .waitForApiRequestCompleted1();
                                                                  safeSetState(() =>
                                                                      _model.apiRequestCompleter2 =
                                                                          null);
                                                                  await _model
                                                                      .waitForApiRequestCompleted2();
                                                                }

                                                                safeSetState(
                                                                    () {});
                                                              },
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
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 15.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'yhfzf3gk' /* Mis Conversaciones */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    FutureBuilder<ApiCallResponse>(
                      future: (_model.apiRequestCompleter2 ??=
                              Completer<ApiCallResponse>()
                                ..complete(ChatMisConversacionesCall.call(
                                  authToken: FFAppState().authToken,
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
                        final listViewChatMisConversacionesResponse =
                            snapshot.data!;

                        return Builder(
                          builder: (context) {
                            final childMisConversaciones = getJsonField(
                              listViewChatMisConversacionesResponse.jsonBody,
                              r'''$''',
                            ).toList();

                            return RefreshIndicator(
                              onRefresh: () async {
                                safeSetState(
                                    () => _model.apiRequestCompleter2 = null);
                                await _model.waitForApiRequestCompleted2();
                              },
                              child: ListView.separated(
                                padding: EdgeInsets.fromLTRB(
                                  0,
                                  0,
                                  0,
                                  50.0,
                                ),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: childMisConversaciones.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 15.0),
                                itemBuilder:
                                    (context, childMisConversacionesIndex) {
                                  final childMisConversacionesItem =
                                      childMisConversaciones[
                                          childMisConversacionesIndex];
                                  return Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: 360.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 2.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 2.0,
                                                                10.0, 0.0),
                                                    child: Container(
                                                      width: 100.0,
                                                      height: 15.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          if ((FFAppState()
                                                                      .xUserId ==
                                                                  functions
                                                                      .parseJsonValueToInteger(
                                                                          getJsonField(
                                                                    childMisConversacionesItem,
                                                                    r'''$.user_creador''',
                                                                  ))) &&
                                                              (functions
                                                                      .parseJsonValueToInteger(
                                                                          getJsonField(
                                                                        childMisConversacionesItem,
                                                                        r'''$.leidos_creador''',
                                                                      ))
                                                                      .toString() !=
                                                                  functions
                                                                      .parseJsonValueToInteger(
                                                                          getJsonField(
                                                                        childMisConversacionesItem,
                                                                        r'''$.total_mensajes''',
                                                                      ))
                                                                      .toString()))
                                                            Flexible(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: 15.0,
                                                                  height: 15.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          if ((FFAppState()
                                                                      .xUserId ==
                                                                  functions
                                                                      .parseJsonValueToInteger(
                                                                          getJsonField(
                                                                    childMisConversacionesItem,
                                                                    r'''$.user_receptor''',
                                                                  ))) &&
                                                              (functions
                                                                      .parseJsonValueToInteger(
                                                                          getJsonField(
                                                                        childMisConversacionesItem,
                                                                        r'''$.leidos_receptor''',
                                                                      ))
                                                                      .toString() !=
                                                                  functions
                                                                      .parseJsonValueToInteger(
                                                                          getJsonField(
                                                                        childMisConversacionesItem,
                                                                        r'''$.total_mensajes''',
                                                                      ))
                                                                      .toString()))
                                                            Flexible(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: 15.0,
                                                                  height: 15.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  flex: 90,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: 52.0,
                                                              height: 52.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                shape: BoxShape
                                                                    .circle,
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                ),
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
                                                                  unawaited(
                                                                    () async {
                                                                      _model.apiResultx2k =
                                                                          await ChatActualizaLeidosCall
                                                                              .call(
                                                                        authToken:
                                                                            FFAppState().authToken,
                                                                        conversacionId:
                                                                            getJsonField(
                                                                          childMisConversacionesItem,
                                                                          r'''$.id''',
                                                                        ),
                                                                      );
                                                                    }(),
                                                                  );

                                                                  context
                                                                      .pushNamed(
                                                                    'chat_mensajes',
                                                                    queryParameters:
                                                                        {
                                                                      'nombre':
                                                                          serializeParam(
                                                                        FFAppState().xUserId ==
                                                                                functions.parseJsonValueToInteger(getJsonField(
                                                                                  childMisConversacionesItem,
                                                                                  r'''$.user_creador''',
                                                                                ))
                                                                            ? getJsonField(
                                                                                childMisConversacionesItem,
                                                                                r'''$.titulo_receptor''',
                                                                              ).toString()
                                                                            : getJsonField(
                                                                                childMisConversacionesItem,
                                                                                r'''$.titulo_creador''',
                                                                              ).toString(),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'conversacionId':
                                                                          serializeParam(
                                                                        getJsonField(
                                                                          childMisConversacionesItem,
                                                                          r'''$.id''',
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

                                                                  FFAppState()
                                                                          .activarCargaChat =
                                                                      'si';
                                                                  safeSetState(
                                                                      () {});

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  clipBehavior:
                                                                      Clip.antiAlias,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  child: Image
                                                                      .network(
                                                                    FFAppState().xUserId ==
                                                                            functions.parseJsonValueToInteger(getJsonField(
                                                                              childMisConversacionesItem,
                                                                              r'''$.user_creador''',
                                                                            ))
                                                                        ? getJsonField(
                                                                            childMisConversacionesItem,
                                                                            r'''$._user_receptor.avatar.url''',
                                                                          ).toString()
                                                                        : getJsonField(
                                                                            childMisConversacionesItem,
                                                                            r'''$._user_creador.avatar.url''',
                                                                          ).toString(),
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
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
                                                                unawaited(
                                                                  () async {
                                                                    _model.apiResultx2kr =
                                                                        await ChatActualizaLeidosCall
                                                                            .call(
                                                                      authToken:
                                                                          FFAppState()
                                                                              .authToken,
                                                                      conversacionId:
                                                                          getJsonField(
                                                                        childMisConversacionesItem,
                                                                        r'''$.id''',
                                                                      ),
                                                                    );
                                                                  }(),
                                                                );

                                                                context
                                                                    .pushNamed(
                                                                  'chat_mensajes',
                                                                  queryParameters:
                                                                      {
                                                                    'nombre':
                                                                        serializeParam(
                                                                      FFAppState().xUserId ==
                                                                              functions.parseJsonValueToInteger(getJsonField(
                                                                                childMisConversacionesItem,
                                                                                r'''$.user_creador''',
                                                                              ))
                                                                          ? getJsonField(
                                                                              childMisConversacionesItem,
                                                                              r'''$.titulo_receptor''',
                                                                            ).toString()
                                                                          : getJsonField(
                                                                              childMisConversacionesItem,
                                                                              r'''$.titulo_creador''',
                                                                            ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'conversacionId':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        childMisConversacionesItem,
                                                                        r'''$.id''',
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
                                                                          PageTransitionType
                                                                              .fade,
                                                                    ),
                                                                  },
                                                                );

                                                                FFAppState()
                                                                        .activarCargaChat =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});

                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Text(
                                                                FFAppState()
                                                                            .xUserId ==
                                                                        functions
                                                                            .parseJsonValueToInteger(getJsonField(
                                                                          childMisConversacionesItem,
                                                                          r'''$.user_creador''',
                                                                        ))
                                                                    ? getJsonField(
                                                                        childMisConversacionesItem,
                                                                        r'''$.titulo_receptor''',
                                                                      ).toString()
                                                                    : getJsonField(
                                                                        childMisConversacionesItem,
                                                                        r'''$.titulo_creador''',
                                                                      ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 10,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
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
                                                                        ModalEliminaConversacionWidget(
                                                                      conversacionId:
                                                                          getJsonField(
                                                                        childMisConversacionesItem,
                                                                        r'''$.id''',
                                                                      ),
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
                                                                .delete_forever_outlined,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            size: 28.0,
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
                                  );
                                },
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ].addToEnd(SizedBox(height: 100.0)),
                ),
              ),
            ),
            if (!(isWeb
                ? MediaQuery.viewInsetsOf(context).bottom > 0
                : _isKeyboardVisible))
              wrapWithModel(
                model: _model.menuUsuarioModel,
                updateCallback: () => safeSetState(() {}),
                child: MenuUsuarioWidget(
                  index: 7,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
