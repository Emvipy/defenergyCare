import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/noticias/modal_crea_comentario/modal_crea_comentario_widget.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'noticias_detalle_model.dart';
export 'noticias_detalle_model.dart';

class NoticiasDetalleWidget extends StatefulWidget {
  const NoticiasDetalleWidget({
    super.key,
    required this.noticiasId,
  });

  final int? noticiasId;

  @override
  State<NoticiasDetalleWidget> createState() => _NoticiasDetalleWidgetState();
}

class _NoticiasDetalleWidgetState extends State<NoticiasDetalleWidget> {
  late NoticiasDetalleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoticiasDetalleModel());
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
              noticiasId: widget.noticiasId,
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
        final noticiasDetalleNoticiaIndividualResponse = snapshot.data!;

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
                  context.pushNamed(
                    'noticias',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
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
                  'xetp3uc6' /* Noticias de salud */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: const [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: Stack(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
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
                                        noticiasDetalleNoticiaIndividualResponse
                                            .jsonBody,
                                      )!,
                                      fit: BoxFit.contain,
                                    ),
                                    allowRotation: false,
                                    tag: NoticiaIndividualCall.imagen(
                                      noticiasDetalleNoticiaIndividualResponse
                                          .jsonBody,
                                    )!,
                                    useHeroAnimation: true,
                                  ),
                                ),
                              );
                            },
                            child: Hero(
                              tag: NoticiaIndividualCall.imagen(
                                noticiasDetalleNoticiaIndividualResponse
                                    .jsonBody,
                              )!,
                              transitionOnUserGestures: true,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  NoticiaIndividualCall.imagen(
                                    noticiasDetalleNoticiaIndividualResponse
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
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  valueOrDefault<String>(
                                    FFLocalizations.of(context).languageCode ==
                                            'en'
                                        ? NoticiaIndividualCall.tituloEn(
                                            noticiasDetalleNoticiaIndividualResponse
                                                .jsonBody,
                                          )
                                        : NoticiaIndividualCall.tituloEs(
                                            noticiasDetalleNoticiaIndividualResponse
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
                          alignment: const AlignmentDirectional(1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: 350.0,
                                      decoration: const BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          if (NoticiaIndividualCall.like(
                                                noticiasDetalleNoticiaIndividualResponse
                                                    .jsonBody,
                                              )! >=
                                              1)
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                _model.apiResult67b =
                                                    await NoticiasLikeCall.call(
                                                  authToken:
                                                      FFAppState().authToken,
                                                  noticiaId: widget.noticiasId,
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 30.0,
                                              ),
                                            ),
                                          if (NoticiaIndividualCall.like(
                                                noticiasDetalleNoticiaIndividualResponse
                                                    .jsonBody,
                                              )! <
                                              1)
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                _model.apiResult67bCopy =
                                                    await NoticiasLikeCall.call(
                                                  authToken:
                                                      FFAppState().authToken,
                                                  noticiaId: widget.noticiasId,
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
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                null &&
                            NoticiaIndividualCall.texto1es(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                '')
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Flexible(
                                  child: Text(
                                    valueOrDefault<String>(
                                      FFLocalizations.of(context)
                                                  .languageCode ==
                                              'en'
                                          ? NoticiaIndividualCall.texto1en(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            )
                                          : NoticiaIndividualCall.texto1es(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            ),
                                      '-',
                                    ),
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
                              ],
                            ),
                          ),
                        if (NoticiaIndividualCall.texto2es(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                null &&
                            NoticiaIndividualCall.texto2es(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                '')
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 3.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Flexible(
                                  child: Text(
                                    valueOrDefault<String>(
                                      FFLocalizations.of(context)
                                                  .languageCode ==
                                              'en'
                                          ? NoticiaIndividualCall.texto2en(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            )
                                          : NoticiaIndividualCall.texto2es(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            ),
                                      '-',
                                    ),
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
                        if (NoticiaIndividualCall.texto3es(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                null &&
                            NoticiaIndividualCall.texto3es(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                '')
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 3.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Flexible(
                                  child: Text(
                                    valueOrDefault<String>(
                                      FFLocalizations.of(context)
                                                  .languageCode ==
                                              'en'
                                          ? NoticiaIndividualCall.texto3en(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            )
                                          : NoticiaIndividualCall.texto3es(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            ),
                                      '-',
                                    ),
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
                              ],
                            ),
                          ),
                        if (NoticiaIndividualCall.texto4es(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                null &&
                            NoticiaIndividualCall.texto4es(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                '')
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 3.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Flexible(
                                  child: Text(
                                    valueOrDefault<String>(
                                      FFLocalizations.of(context)
                                                  .languageCode ==
                                              'en'
                                          ? NoticiaIndividualCall.texto4en(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            )
                                          : NoticiaIndividualCall.texto4es(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            ),
                                      '-',
                                    ),
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
                        if (NoticiaIndividualCall.texto5es(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                null &&
                            NoticiaIndividualCall.texto5es(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                '')
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 3.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Flexible(
                                  child: Text(
                                    valueOrDefault<String>(
                                      FFLocalizations.of(context)
                                                  .languageCode ==
                                              'en'
                                          ? NoticiaIndividualCall.texto5en(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            )
                                          : NoticiaIndividualCall.texto5es(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            ),
                                      '-',
                                    ),
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
                              ],
                            ),
                          ),
                        if (NoticiaIndividualCall.texto6es(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                null &&
                            NoticiaIndividualCall.texto6es(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                '')
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 3.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Flexible(
                                  child: Text(
                                    valueOrDefault<String>(
                                      FFLocalizations.of(context)
                                                  .languageCode ==
                                              'en'
                                          ? NoticiaIndividualCall.texto6en(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            )
                                          : NoticiaIndividualCall.texto6es(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            ),
                                      '-',
                                    ),
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
                        if (NoticiaIndividualCall.texto7es(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                null &&
                            NoticiaIndividualCall.texto7es(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                '')
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 3.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Flexible(
                                  child: Text(
                                    valueOrDefault<String>(
                                      FFLocalizations.of(context)
                                                  .languageCode ==
                                              'en'
                                          ? NoticiaIndividualCall.texto7en(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            )
                                          : NoticiaIndividualCall.texto7es(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            ),
                                      '-',
                                    ),
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
                              ],
                            ),
                          ),
                        if (NoticiaIndividualCall.texto8es(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                null &&
                            NoticiaIndividualCall.texto8es(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                '')
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 3.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Flexible(
                                  child: Text(
                                    valueOrDefault<String>(
                                      FFLocalizations.of(context)
                                                  .languageCode ==
                                              'en'
                                          ? NoticiaIndividualCall.texto8en(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            )
                                          : NoticiaIndividualCall.texto8es(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            ),
                                      '-',
                                    ),
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
                        if (NoticiaIndividualCall.texto9es(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                null &&
                            NoticiaIndividualCall.texto9es(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                '')
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 3.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Flexible(
                                  child: Text(
                                    valueOrDefault<String>(
                                      FFLocalizations.of(context)
                                                  .languageCode ==
                                              'en'
                                          ? NoticiaIndividualCall.texto9en(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            )
                                          : NoticiaIndividualCall.texto9es(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            ),
                                      '-',
                                    ),
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
                              ],
                            ),
                          ),
                        if (NoticiaIndividualCall.texto10es(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                null &&
                            NoticiaIndividualCall.texto10es(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                '')
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 3.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Flexible(
                                  child: Text(
                                    valueOrDefault<String>(
                                      FFLocalizations.of(context)
                                                  .languageCode ==
                                              'en'
                                          ? NoticiaIndividualCall.texto10en(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            )
                                          : NoticiaIndividualCall.texto10es(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            ),
                                      '-',
                                    ),
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
                        if (NoticiaIndividualCall.texto11es(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                null &&
                            NoticiaIndividualCall.texto11es(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                '')
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 3.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Flexible(
                                  child: Text(
                                    valueOrDefault<String>(
                                      FFLocalizations.of(context)
                                                  .languageCode ==
                                              'en'
                                          ? NoticiaIndividualCall.texto11en(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            )
                                          : NoticiaIndividualCall.texto11es(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            ),
                                      '-',
                                    ),
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
                              ],
                            ),
                          ),
                        if (NoticiaIndividualCall.texto12es(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                null &&
                            NoticiaIndividualCall.texto12es(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                '')
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 3.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Flexible(
                                  child: Text(
                                    valueOrDefault<String>(
                                      FFLocalizations.of(context)
                                                  .languageCode ==
                                              'en'
                                          ? NoticiaIndividualCall.texto12en(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            )
                                          : NoticiaIndividualCall.texto12es(
                                              noticiasDetalleNoticiaIndividualResponse
                                                  .jsonBody,
                                            ),
                                      '-',
                                    ),
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
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                null &&
                            NoticiaIndividualCall.botonEs(
                                  noticiasDetalleNoticiaIndividualResponse
                                      .jsonBody,
                                ) !=
                                '')
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 15.0, 10.0, 15.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    await launchURL(
                                        NoticiaIndividualCall.urlVideoEs(
                                      noticiasDetalleNoticiaIndividualResponse
                                          .jsonBody,
                                    )!);
                                  },
                                  text: valueOrDefault<String>(
                                    FFLocalizations.of(context).languageCode ==
                                            'en'
                                        ? NoticiaIndividualCall.botonEn(
                                            noticiasDetalleNoticiaIndividualResponse
                                                .jsonBody,
                                          )
                                        : NoticiaIndividualCall.botonEs(
                                            noticiasDetalleNoticiaIndividualResponse
                                                .jsonBody,
                                          ),
                                    '-',
                                  ),
                                  options: FFButtonOptions(
                                    width: 300.0,
                                    height: 40.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (FFAppState().xUserId ==
                            NoticiaIndividualCall.creadorId(
                              noticiasDetalleNoticiaIndividualResponse.jsonBody,
                            ))
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 15.0, 10.0, 15.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed(
                                      'noticiasCrea',
                                      queryParameters: {
                                        'noticiaId': serializeParam(
                                          widget.noticiasId,
                                          ParamType.int,
                                        ),
                                        'edita': serializeParam(
                                          'si',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                        ),
                                      },
                                    );
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    '0758di61' /* Editar Noticia */,
                                  ),
                                  options: FFButtonOptions(
                                    width: 300.0,
                                    height: 40.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
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
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 15.0, 10.0, 15.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'uew3l588' /* Comentarios */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Flexible(
                                child: Align(
                                  alignment: const AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 5.0, 0.0),
                                    child: FlutterFlowIconButton(
                                      borderRadius: 20.0,
                                      borderWidth: 1.0,
                                      buttonSize: 40.0,
                                      fillColor: FlutterFlowTheme.of(context)
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
                                          backgroundColor: Colors.transparent,
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
                                                    ModalCreaComentarioWidget(
                                                  noticiaId:
                                                      widget.noticiasId!,
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
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
                                      idNoticia: widget.noticiasId,
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
                            final listViewComentariosNoticiasResponse =
                                snapshot.data!;

                            return Builder(
                              builder: (context) {
                                final childComentarios = getJsonField(
                                  listViewComentariosNoticiasResponse.jsonBody,
                                  r'''$''',
                                ).toList();

                                return RefreshIndicator(
                                  onRefresh: () async {
                                    safeSetState(() =>
                                        _model.apiRequestCompleter1 = null);
                                    await _model.waitForApiRequestCompleted1();
                                  },
                                  child: ListView.separated(
                                    padding: const EdgeInsets.fromLTRB(
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
                                        const SizedBox(height: 15.0),
                                    itemBuilder:
                                        (context, childComentariosIndex) {
                                      final childComentariosItem =
                                          childComentarios[
                                              childComentariosIndex];
                                      return Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width: 350.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 10.0, 10.0, 5.0),
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
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 10.0),
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
                                                        style:
                                                            FlutterFlowTheme.of(
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
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 10.0, 10.0, 5.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      getJsonField(
                                                        childComentariosItem,
                                                        r'''$.fecha_txt''',
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
                                                                    .secondaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                    if (FFAppState().xUserId ==
                                                        getJsonField(
                                                          childComentariosItem,
                                                          r'''$.user_id''',
                                                        ))
                                                      Flexible(
                                                        child: Align(
                                                          alignment:
                                                              const AlignmentDirectional(
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
                                                            onTap: () async {
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
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
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
                                      );
                                    },
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ].addToEnd(const SizedBox(height: 150.0)),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.menuUsuarioModel,
                    updateCallback: () => safeSetState(() {}),
                    child: const MenuUsuarioWidget(
                      index: 0,
                    ),
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
