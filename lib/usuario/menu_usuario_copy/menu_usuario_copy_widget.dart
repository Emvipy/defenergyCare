import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/registro/modal_error_cuenta/modal_error_cuenta_widget.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_usuario_copy_model.dart';
export 'menu_usuario_copy_model.dart';

class MenuUsuarioCopyWidget extends StatefulWidget {
  const MenuUsuarioCopyWidget({
    super.key,
    required this.index,
  });

  final int? index;

  @override
  State<MenuUsuarioCopyWidget> createState() => _MenuUsuarioCopyWidgetState();
}

class _MenuUsuarioCopyWidgetState extends State<MenuUsuarioCopyWidget>
    with TickerProviderStateMixin {
  late MenuUsuarioCopyModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuUsuarioCopyModel());

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

    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: 390.0,
        height: 97.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
        child: Visibility(
          visible: responsiveVisibility(
            context: context,
            tablet: false,
            tabletLandscape: false,
            desktop: false,
          ),
          child: Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 16.0),
              child: Container(
                width: 360.0,
                height: 70.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).azulPerm,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
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
                        mainAxisAlignment: MainAxisAlignment.center,
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
                                if (FFAppState().email ==
                                    'enrique@emvipy.com') {
                                  if ((FFAppState().authToken != null &&
                                          FFAppState().authToken != '') &&
                                      (FFAppState().email != null &&
                                          FFAppState().email != '')) {
                                    if (FFAppState().creadoOk == 'si') {
                                      context.pushNamed(
                                        'encuestas',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                          ),
                                        },
                                      );
                                    } else {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
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
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  }
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
                        mainAxisAlignment: MainAxisAlignment.center,
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
                                if (FFAppState().email ==
                                    'enrique@emvipy.com') {
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
                                            transitionType:
                                                PageTransitionType.fade,
                                          ),
                                        },
                                      );
                                    } else {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
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
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  }
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Opacity(
                            opacity: widget!.index == 4 ? 1.0 : 0.5,
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
                                if (FFAppState().email ==
                                    'enrique@emvipy.com') {
                                  if ((FFAppState().authToken != null &&
                                          FFAppState().authToken != '') &&
                                      (FFAppState().email != null &&
                                          FFAppState().email != '')) {
                                    if (FFAppState().creadoOk == 'si') {
                                      context.pushNamed(
                                        'comunidad',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                          ),
                                        },
                                      );
                                    } else {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
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
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  }
                                }
                              },
                            ),
                          ),
                          if (widget!.index == 4)
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Opacity(
                            opacity: widget!.index == 5 ? 1.0 : 0.5,
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 20.0,
                              borderWidth: 0.0,
                              buttonSize: 55.0,
                              icon: Icon(
                                Icons.account_circle_outlined,
                                color: FlutterFlowTheme.of(context).info,
                                size: 28.0,
                              ),
                              onPressed: () async {
                                GoRouter.of(context).prepareAuthEvent();
                                await authManager.signOut();
                                GoRouter.of(context).clearRedirectLocation();

                                context.pushNamedAuth(
                                  'welcome',
                                  context.mounted,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
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
                              },
                            ),
                          ),
                          if (widget!.index == 5)
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
        ),
      ),
    );
  }
}
