import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/registro/modal_error_cuenta/modal_error_cuenta_widget.dart';
import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_usuario_model.dart';
export 'menu_usuario_model.dart';

class MenuUsuarioWidget extends StatefulWidget {
  const MenuUsuarioWidget({
    super.key,
    required this.index,
  });

  final int? index;

  @override
  State<MenuUsuarioWidget> createState() => _MenuUsuarioWidgetState();
}

class _MenuUsuarioWidgetState extends State<MenuUsuarioWidget>
    with TickerProviderStateMixin {
  late MenuUsuarioModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuUsuarioModel());

    animationsMap.addAll({
      'dividerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: Offset(0.6, 1.0),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: Offset(0.6, 1.0),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: Offset(0.6, 1.0),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: Offset(0.6, 1.0),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: Offset(0.6, 1.0),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Visibility(
      visible: responsiveVisibility(
        context: context,
        tablet: false,
        tabletLandscape: false,
        desktop: false,
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 1.0),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
          child: Container(
            width: double.infinity,
            height: 80.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).azulPerm,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(0.0),
                topRight: Radius.circular(0.0),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Opacity(
                        opacity: widget!.index == 1 ? 1.0 : 0.5,
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 20.0,
                          borderWidth: 0.0,
                          buttonSize: 55.0,
                          icon: Icon(
                            Icons.cottage_outlined,
                            color: FlutterFlowTheme.of(context).info,
                            size: 28.0,
                          ),
                          onPressed: () async {
                            if (FFAppState().perfilId == 1) {
                              context.pushNamed(
                                'Home',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );

                              unawaited(
                                () async {
                                  await UserLogActivityCall.call(
                                    authToken: FFAppState().authToken,
                                    seccion: 'Menú Home',
                                  );
                                }(),
                              );
                            } else {
                              if (FFAppState().email == 'enrique@emvipy.com') {
                                if ((FFAppState().perfilId == 2) ||
                                    (FFAppState().perfilId == 3) ||
                                    (FFAppState().perfilId == 4)) {
                                  context.pushNamed(
                                    'Home_empresa',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );

                                  unawaited(
                                    () async {
                                      await UserLogActivityCall.call(
                                        authToken: FFAppState().authToken,
                                        seccion: 'Menú Home Empresa',
                                      );
                                    }(),
                                  );
                                }
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'error ops',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).error,
                                  ),
                                );
                              }
                            }
                          },
                        ),
                      ),
                      if (widget!.index == 1)
                        SizedBox(
                          width: 30.0,
                          child: Divider(
                            height: 2.0,
                            thickness: 2.0,
                            color: FlutterFlowTheme.of(context).info,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['dividerOnPageLoadAnimation1']!),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Opacity(
                        opacity: widget!.index == 2 ? 1.0 : 0.5,
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 20.0,
                          borderWidth: 0.0,
                          buttonSize: 55.0,
                          icon: Icon(
                            Icons.check_box_outlined,
                            color: FlutterFlowTheme.of(context).info,
                            size: 28.0,
                          ),
                          onPressed: () async {
                            if ((FFAppState().authToken != null &&
                                    FFAppState().authToken != '') &&
                                (FFAppState().email != null &&
                                    FFAppState().email != '')) {
                              if (FFAppState().creadoOk == 'si') {
                                if (FFAppState().perfilId == 1) {
                                  context.pushNamed(
                                    'encuestas',
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
                                        seccion: 'Menú Encuesta',
                                      );
                                    }(),
                                  );
                                } else {
                                  if (FFAppState().email ==
                                      'enrique@emvipy.com') {
                                    if ((FFAppState().perfilId == 2) ||
                                        (FFAppState().perfilId == 3) ||
                                        (FFAppState().perfilId == 4)) {
                                      context.pushNamed(
                                        'emp_encuestas',
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
                                            seccion: 'Menú Encuesta Empresa',
                                          );
                                        }(),
                                      );
                                    }
                                  }
                                }
                              } else {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: ModalErrorCuentaWidget(),
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
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            }
                          },
                        ),
                      ),
                      if (widget!.index == 2)
                        SizedBox(
                          width: 30.0,
                          child: Divider(
                            height: 2.0,
                            thickness: 2.0,
                            color: FlutterFlowTheme.of(context).info,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['dividerOnPageLoadAnimation2']!),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Opacity(
                        opacity: widget!.index == 3 ? 1.0 : 0.5,
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 20.0,
                          borderWidth: 0.0,
                          buttonSize: 55.0,
                          icon: Icon(
                            Icons.shopping_cart_outlined,
                            color: FlutterFlowTheme.of(context).info,
                            size: 28.0,
                          ),
                          onPressed: () async {
                            if ((FFAppState().authToken != null &&
                                    FFAppState().authToken != '') &&
                                (FFAppState().email != null &&
                                    FFAppState().email != '')) {
                              if (FFAppState().creadoOk == 'si') {
                                context.pushNamed(
                                  'marketplace',
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
                                      seccion: 'Menú Marketplace',
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
                                    return Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: ModalErrorCuentaWidget(),
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
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            }
                          },
                        ),
                      ),
                      if (widget!.index == 3)
                        SizedBox(
                          width: 30.0,
                          child: Divider(
                            height: 2.0,
                            thickness: 2.0,
                            color: FlutterFlowTheme.of(context).info,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['dividerOnPageLoadAnimation3']!),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Opacity(
                        opacity: widget!.index == 6 ? 1.0 : 0.5,
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 20.0,
                          borderWidth: 0.0,
                          buttonSize: 55.0,
                          icon: Icon(
                            Icons.post_add_rounded,
                            color: FlutterFlowTheme.of(context).info,
                            size: 28.0,
                          ),
                          onPressed: () async {
                            if (FFAppState().email != null &&
                                FFAppState().email != '') {
                              if (FFAppState().creadoOk == 'si') {
                                context.pushNamed(
                                  'comunidad',
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
                                      seccion: 'Menú Comunidad',
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
                                    return Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: ModalErrorCuentaWidget(),
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
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            }
                          },
                        ),
                      ),
                      if (widget!.index == 6)
                        SizedBox(
                          width: 30.0,
                          child: Divider(
                            height: 2.0,
                            thickness: 2.0,
                            color: FlutterFlowTheme.of(context).info,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['dividerOnPageLoadAnimation4']!),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Opacity(
                        opacity: widget!.index == 7 ? 1.0 : 0.5,
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 20.0,
                          borderWidth: 0.0,
                          buttonSize: 55.0,
                          icon: Icon(
                            Icons.wechat_rounded,
                            color: FlutterFlowTheme.of(context).info,
                            size: 28.0,
                          ),
                          onPressed: () async {
                            if ((FFAppState().authToken != null &&
                                    FFAppState().authToken != '') &&
                                (FFAppState().email != null &&
                                    FFAppState().email != '')) {
                              if (FFAppState().creadoOk == 'si') {
                                context.pushNamed(
                                  'chat_conversaciones',
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
                                      seccion: 'Menú Chat',
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
                                    return Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: ModalErrorCuentaWidget(),
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
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            }
                          },
                        ),
                      ),
                      if (widget!.index == 7)
                        SizedBox(
                          width: 30.0,
                          child: Divider(
                            height: 2.0,
                            thickness: 2.0,
                            color: FlutterFlowTheme.of(context).info,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['dividerOnPageLoadAnimation5']!),
                    ],
                  ),
                ),
              ]
                  .divide(SizedBox(width: 16.0))
                  .addToStart(SizedBox(width: 16.0))
                  .addToEnd(SizedBox(width: 16.0)),
            ),
          ),
        ),
      ),
    );
  }
}