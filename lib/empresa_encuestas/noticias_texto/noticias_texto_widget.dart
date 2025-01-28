import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'noticias_texto_model.dart';
export 'noticias_texto_model.dart';

class NoticiasTextoWidget extends StatefulWidget {
  const NoticiasTextoWidget({
    super.key,
    required this.noticiaId,
    required this.edita,
    required this.idioma,
  });

  final int? noticiaId;
  final String? edita;
  final String? idioma;

  @override
  State<NoticiasTextoWidget> createState() => _NoticiasTextoWidgetState();
}

class _NoticiasTextoWidgetState extends State<NoticiasTextoWidget> {
  late NoticiasTextoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoticiasTextoModel());
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
                '1ckfdcnz' /* Texto de la noticia */,
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
          body: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 350.0,
                  height: 460.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).blancoPerm,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Container(
                      width: 350.0,
                      height: 460.0,
                      child: custom_widgets.RichTextEditor(
                        width: 350.0,
                        height: 460.0,
                        darkMode:
                            (Theme.of(context).brightness == Brightness.dark) ==
                                    true
                                ? true
                                : false,
                        spellCheck: false,
                        editorBackgroundColor:
                            FlutterFlowTheme.of(context).blancoPerm,
                        hint: FFLocalizations.of(context).getText(
                          'qwv0de1r' /* Escribe tu noticia aquí... */,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 15.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        var _shouldSetState = false;
                        _model.apicargaTexto = await NoticiaCargaTextoCall.call(
                          authToken: FFAppState().authToken,
                          noticiaId: FFAppState().noticiaId,
                          idioma: widget!.idioma,
                          texto: functions.formatTextwithLineBreaksToXano(
                              functions.removeDoubleQuotationMarksFromText(
                                  FFAppState().HTMLMessage)),
                        );

                        _shouldSetState = true;
                        if ((_model.apicargaTexto?.succeeded ?? true)) {
                          if (widget!.idioma == 'es') {
                            FFAppState().textES = FFAppState().HTMLMessage;
                            safeSetState(() {});
                          } else {
                            FFAppState().textEN = FFAppState().HTMLMessage;
                            safeSetState(() {});
                          }

                          context.goNamed(
                            'noticiasCreaNew',
                            queryParameters: {
                              'noticiaId': serializeParam(
                                widget!.noticiaId,
                                ParamType.int,
                              ),
                              'edita': serializeParam(
                                widget!.edita,
                                ParamType.String,
                              ),
                              'recargar': serializeParam(
                                'si',
                                ParamType.String,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );

                          if (_shouldSetState) safeSetState(() {});
                          return;
                        } else {
                          if (_shouldSetState) safeSetState(() {});
                          return;
                        }

                        if (_shouldSetState) safeSetState(() {});
                      },
                      text: FFLocalizations.of(context).getText(
                        'iyx1euit' /* Guardar */,
                      ),
                      options: FFButtonOptions(
                        width: 300.0,
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
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
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
