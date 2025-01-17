import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import '/noticias/modal_crea_comentario/modal_crea_comentario_widget.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'noticias_detalle_new_model.dart';
export 'noticias_detalle_new_model.dart';

class NoticiasDetalleNewWidget extends StatefulWidget {
  const NoticiasDetalleNewWidget({
    super.key,
    required this.noticiasId,
  });

  final int? noticiasId;

  @override
  State<NoticiasDetalleNewWidget> createState() =>
      _NoticiasDetalleNewWidgetState();
}

class _NoticiasDetalleNewWidgetState extends State<NoticiasDetalleNewWidget> {
  late NoticiasDetalleNewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoticiasDetalleNewModel());
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
      future: (_model.apiRequestCompleter2 ??= Completer<ApiCallResponse>()
            ..complete(NoticiaIndividualCall.call(
              noticiasId: widget!.noticiasId,
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
        final noticiasDetalleNewNoticiaIndividualResponse = snapshot.data!;

        return YoutubeFullScreenWrapper(
          child: GestureDetector(
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
                      context.pushNamed(
                        'noticias',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                  title: Text(
                    FFLocalizations.of(context).getText(
                      'u7edt4ag' /* Noticias de salud */,
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (NoticiaIndividualCall.ctrlImagen(
                                  noticiasDetalleNewNoticiaIndividualResponse
                                      .jsonBody,
                                ) ==
                                'si')
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        child: FlutterFlowExpandedImageView(
                                          image: Image.network(
                                            NoticiaIndividualCall.imagen(
                                              noticiasDetalleNewNoticiaIndividualResponse
                                                  .jsonBody,
                                            )!,
                                            fit: BoxFit.contain,
                                          ),
                                          allowRotation: false,
                                          tag: NoticiaIndividualCall.imagen(
                                            noticiasDetalleNewNoticiaIndividualResponse
                                                .jsonBody,
                                          )!,
                                          useHeroAnimation: true,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Hero(
                                    tag: NoticiaIndividualCall.imagen(
                                      noticiasDetalleNewNoticiaIndividualResponse
                                          .jsonBody,
                                    )!,
                                    transitionOnUserGestures: true,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        NoticiaIndividualCall.imagen(
                                          noticiasDetalleNewNoticiaIndividualResponse
                                              .jsonBody,
                                        )!,
                                        width: 343.0,
                                        height: 185.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 3.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                      valueOrDefault<String>(
                                        FFLocalizations.of(context)
                                                    .languageCode ==
                                                'en'
                                            ? NoticiaIndividualCall.tituloEn(
                                                noticiasDetalleNewNoticiaIndividualResponse
                                                    .jsonBody,
                                              )
                                            : NoticiaIndividualCall.tituloEs(
                                                noticiasDetalleNewNoticiaIndividualResponse
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
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width: 350.0,
                                          decoration: BoxDecoration(),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              if (NoticiaIndividualCall.like(
                                                    noticiasDetalleNewNoticiaIndividualResponse
                                                        .jsonBody,
                                                  )! >=
                                                  1)
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    _model.apiResult67b =
                                                        await NoticiasLikeCall
                                                            .call(
                                                      authToken: FFAppState()
                                                          .authToken,
                                                      noticiaId:
                                                          widget!.noticiasId,
                                                      accion: 'borra',
                                                    );

                                                    safeSetState(() => _model
                                                            .apiRequestCompleter2 =
                                                        null);
                                                    await _model
                                                        .waitForApiRequestCompleted2();

                                                    safeSetState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.favorite_sharp,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    size: 30.0,
                                                  ),
                                                ),
                                              if (NoticiaIndividualCall.like(
                                                    noticiasDetalleNewNoticiaIndividualResponse
                                                        .jsonBody,
                                                  )! <
                                                  1)
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    _model.apiResult67bCopy =
                                                        await NoticiasLikeCall
                                                            .call(
                                                      authToken: FFAppState()
                                                          .authToken,
                                                      noticiaId:
                                                          widget!.noticiasId,
                                                      accion: 'crea',
                                                    );

                                                    safeSetState(() => _model
                                                            .apiRequestCompleter2 =
                                                        null);
                                                    await _model
                                                        .waitForApiRequestCompleted2();

                                                    safeSetState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.favorite_border,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    size: 30.0,
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
                            ),
                            SizedBox(
                              width: 350.0,
                              child: StyledDivider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).secondary,
                                lineStyle: DividerLineStyle.dotted,
                              ),
                            ),
                            if (NoticiaIndividualCall.texto1es(
                                      noticiasDetalleNewNoticiaIndividualResponse
                                          .jsonBody,
                                    ) !=
                                    null &&
                                NoticiaIndividualCall.texto1es(
                                      noticiasDetalleNewNoticiaIndividualResponse
                                          .jsonBody,
                                    ) !=
                                    '')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 5.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 350.0,
                                      height: 300.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 2.0, 2.0, 2.0),
                                          child: FlutterFlowWebView(
                                            content: valueOrDefault<String>(
                                              FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en'
                                                  ? NoticiaIndividualCall
                                                      .texto1en(
                                                      noticiasDetalleNewNoticiaIndividualResponse
                                                          .jsonBody,
                                                    )
                                                  : NoticiaIndividualCall
                                                      .texto1es(
                                                      noticiasDetalleNewNoticiaIndividualResponse
                                                          .jsonBody,
                                                    ),
                                              '-',
                                            ),
                                            width: 350.0,
                                            height: 300.0,
                                            verticalScroll: true,
                                            horizontalScroll: false,
                                            html: true,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            if (NoticiaIndividualCall.urlYoutube(
                                      noticiasDetalleNewNoticiaIndividualResponse
                                          .jsonBody,
                                    ) !=
                                    null &&
                                NoticiaIndividualCall.urlYoutube(
                                      noticiasDetalleNewNoticiaIndividualResponse
                                          .jsonBody,
                                    ) !=
                                    '')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: FlutterFlowYoutubePlayer(
                                  url: NoticiaIndividualCall.urlYoutube(
                                    noticiasDetalleNewNoticiaIndividualResponse
                                        .jsonBody,
                                  )!,
                                  width: 350.0,
                                  autoPlay: false,
                                  looping: true,
                                  mute: false,
                                  showControls: true,
                                  showFullScreen: true,
                                  strictRelatedVideos: false,
                                ),
                              ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 15.0, 10.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    child: Text(
                                      '${FFLocalizations.of(context).languageCode == 'en' ? 'Author: ' : 'Autor: '}${NoticiaIndividualCall.autor(
                                        noticiasDetalleNewNoticiaIndividualResponse
                                            .jsonBody,
                                      )}',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (NoticiaIndividualCall.botonEs(
                                      noticiasDetalleNewNoticiaIndividualResponse
                                          .jsonBody,
                                    ) !=
                                    null &&
                                NoticiaIndividualCall.botonEs(
                                      noticiasDetalleNewNoticiaIndividualResponse
                                          .jsonBody,
                                    ) !=
                                    '')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 15.0, 10.0, 15.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () async {
                                        await launchURL(
                                            NoticiaIndividualCall.urlVideoEs(
                                          noticiasDetalleNewNoticiaIndividualResponse
                                              .jsonBody,
                                        )!);
                                      },
                                      text: valueOrDefault<String>(
                                        FFLocalizations.of(context)
                                                    .languageCode ==
                                                'en'
                                            ? NoticiaIndividualCall.botonEn(
                                                noticiasDetalleNewNoticiaIndividualResponse
                                                    .jsonBody,
                                              )
                                            : NoticiaIndividualCall.botonEs(
                                                noticiasDetalleNewNoticiaIndividualResponse
                                                    .jsonBody,
                                              ),
                                        '-',
                                      ),
                                      options: FFButtonOptions(
                                        width: 300.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            if (FFAppState().xUserId ==
                                NoticiaIndividualCall.creadorId(
                                  noticiasDetalleNewNoticiaIndividualResponse
                                      .jsonBody,
                                ))
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 15.0, 10.0, 15.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () async {
                                        FFAppState().noticiaId =
                                            widget!.noticiasId!;
                                        FFAppState().textES =
                                            NoticiaIndividualCall.texto1es(
                                          noticiasDetalleNewNoticiaIndividualResponse
                                              .jsonBody,
                                        )!;
                                        FFAppState().textEN =
                                            NoticiaIndividualCall.texto1en(
                                          noticiasDetalleNewNoticiaIndividualResponse
                                              .jsonBody,
                                        )!;
                                        safeSetState(() {});

                                        context.pushNamed(
                                          'noticiasCreaNew',
                                          queryParameters: {
                                            'noticiaId': serializeParam(
                                              widget!.noticiasId,
                                              ParamType.int,
                                            ),
                                            'edita': serializeParam(
                                              'si',
                                              ParamType.String,
                                            ),
                                            'recargar': serializeParam(
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
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'j0hjjrgl' /* Editar Noticia */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 300.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            SizedBox(
                              width: 350.0,
                              child: StyledDivider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).secondary,
                                lineStyle: DividerLineStyle.dotted,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 15.0, 10.0, 15.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'ezz6yqwd' /* Comentarios */,
                                    ),
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
                                  Flexible(
                                    child: Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 5.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderRadius: 20.0,
                                          borderWidth: 1.0,
                                          buttonSize: 40.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                          icon: Icon(
                                            Icons.add,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
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
                                                          ModalCreaComentarioWidget(
                                                        noticiaId:
                                                            widget!.noticiasId!,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            FutureBuilder<ApiCallResponse>(
                              future: (_model.apiRequestCompleter1 ??=
                                      Completer<ApiCallResponse>()
                                        ..complete(ComentariosNoticiasCall.call(
                                          idNoticia: widget!.noticiasId,
                                          authToken: FFAppState().authToken,
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
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 50.0,
                                      ),
                                    ),
                                  );
                                }
                                final listViewComentariosComentariosNoticiasResponse =
                                    snapshot.data!;

                                return Builder(
                                  builder: (context) {
                                    final childComentarios = getJsonField(
                                      listViewComentariosComentariosNoticiasResponse
                                          .jsonBody,
                                      r'''$''',
                                    ).toList();

                                    return ListView.separated(
                                      padding: EdgeInsets.fromLTRB(
                                        0,
                                        0,
                                        0,
                                        50.0,
                                      ),
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: childComentarios.length,
                                      separatorBuilder: (_, __) =>
                                          SizedBox(height: 15.0),
                                      itemBuilder:
                                          (context, childComentariosIndex) {
                                        final childComentariosItem =
                                            childComentarios[
                                                childComentariosIndex];
                                        return Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: 350.0,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 350.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    10.0,
                                                                    10.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Flexible(
                                                              child: Text(
                                                                getJsonField(
                                                                  childComentariosItem,
                                                                  r'''$.nombre''',
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
                                                                              .w500,
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
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    10.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Flexible(
                                                              child: Text(
                                                                getJsonField(
                                                                  childComentariosItem,
                                                                  r'''$.comentario''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      letterSpacing:
                                                                          0.0,
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
                                                                    10.0,
                                                                    10.0,
                                                                    10.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              getJsonField(
                                                                childComentariosItem,
                                                                r'''$.fecha_txt''',
                                                              ).toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            if (FFAppState()
                                                                    .xUserId ==
                                                                getJsonField(
                                                                  childComentariosItem,
                                                                  r'''$.user_id''',
                                                                ))
                                                              Flexible(
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
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
                                                                      _model.apiResult6ht =
                                                                          await ComentarioNoticiaBorraCall
                                                                              .call(
                                                                        comentariosNoticiasId:
                                                                            getJsonField(
                                                                          childComentariosItem,
                                                                          r'''$.id''',
                                                                        ),
                                                                      );

                                                                      safeSetState(() =>
                                                                          _model.apiRequestCompleter1 =
                                                                              null);
                                                                      await _model
                                                                          .waitForApiRequestCompleted1();

                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .delete_forever,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
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
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 3.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (functions
                                                              .parseJsonValueToInteger(
                                                                  getJsonField(
                                                                childComentariosItem,
                                                                r'''$._likes_comentarios_user''',
                                                              ))
                                                              .toString() ==
                                                          '0')
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            var _shouldSetState =
                                                                false;
                                                            _model.apiResult1b1Crea =
                                                                await NoticiasLikeComentarioCall
                                                                    .call(
                                                              authToken:
                                                                  FFAppState()
                                                                      .authToken,
                                                              comentarioId:
                                                                  getJsonField(
                                                                childComentariosItem,
                                                                r'''$.id''',
                                                              ),
                                                              accion: 'crea',
                                                            );

                                                            _shouldSetState =
                                                                true;
                                                            if ((_model
                                                                    .apiResult1b1Crea
                                                                    ?.succeeded ??
                                                                true)) {
                                                              safeSetState(() =>
                                                                  _model.apiRequestCompleter1 =
                                                                      null);
                                                              await _model
                                                                  .waitForApiRequestCompleted1();
                                                            } else {
                                                              if (_shouldSetState)
                                                                safeSetState(
                                                                    () {});
                                                              return;
                                                            }

                                                            if (_shouldSetState)
                                                              safeSetState(
                                                                  () {});
                                                          },
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: Image.asset(
                                                              'assets/images/like1.png',
                                                              width: 25.0,
                                                              height: 25.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      if (functions
                                                              .parseJsonValueToInteger(
                                                                  getJsonField(
                                                                childComentariosItem,
                                                                r'''$._likes_comentarios_user''',
                                                              ))
                                                              .toString() !=
                                                          '0')
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            var _shouldSetState =
                                                                false;
                                                            _model.apiResult1b1Borra =
                                                                await NoticiasLikeComentarioCall
                                                                    .call(
                                                              authToken:
                                                                  FFAppState()
                                                                      .authToken,
                                                              comentarioId:
                                                                  getJsonField(
                                                                childComentariosItem,
                                                                r'''$.id''',
                                                              ),
                                                              accion: 'elimina',
                                                            );

                                                            _shouldSetState =
                                                                true;
                                                            if ((_model
                                                                    .apiResult1b1Borra
                                                                    ?.succeeded ??
                                                                true)) {
                                                              safeSetState(() =>
                                                                  _model.apiRequestCompleter1 =
                                                                      null);
                                                              await _model
                                                                  .waitForApiRequestCompleted1();
                                                            } else {
                                                              if (_shouldSetState)
                                                                safeSetState(
                                                                    () {});
                                                              return;
                                                            }

                                                            if (_shouldSetState)
                                                              safeSetState(
                                                                  () {});
                                                          },
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: Image.asset(
                                                              'assets/images/like2.png',
                                                              width: 25.0,
                                                              height: 25.0,
                                                              fit: BoxFit.cover,
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
                                                        child: Text(
                                                          getJsonField(
                                                            childComentariosItem,
                                                            r'''$._likes_comentarios_news''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
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
                                  },
                                );
                              },
                            ),
                          ].addToEnd(SizedBox(height: 150.0)),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: wrapWithModel(
                        model: _model.menuUsuarioModel,
                        updateCallback: () => safeSetState(() {}),
                        child: MenuUsuarioWidget(
                          index: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
