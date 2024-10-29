import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'diario_into_hub_finaliza_model.dart';
export 'diario_into_hub_finaliza_model.dart';

class DiarioIntoHubFinalizaWidget extends StatefulWidget {
  const DiarioIntoHubFinalizaWidget({
    super.key,
    required this.primerDiario,
  });

  final String? primerDiario;

  @override
  State<DiarioIntoHubFinalizaWidget> createState() =>
      _DiarioIntoHubFinalizaWidgetState();
}

class _DiarioIntoHubFinalizaWidgetState
    extends State<DiarioIntoHubFinalizaWidget> {
  late DiarioIntoHubFinalizaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiarioIntoHubFinalizaModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.selector = await DiarioInfoSelectorCall.call(
        authToken: FFAppState().authToken,
      );

      if (DiarioInfoSelectorCall.intoFinalizar(
            (_model.selector?.jsonBody ?? ''),
          ) ==
          'si') {
        FFAppState().editandoDiario = 'no';
        FFAppState().diarioIntoId = DiarioInfoSelectorCall.idIntoFinalizar(
          (_model.selector?.jsonBody ?? ''),
        )!;
        FFAppState().momento = DiarioInfoSelectorCall.momentoIntoFinalizar(
          (_model.selector?.jsonBody ?? ''),
        )!;
        FFAppState().mostrarAyer = 'no';
        unawaited(
          () async {
            await UserLogActivityCall.call(
              authToken: FFAppState().authToken,
              seccion:
                  'Acceso Finalizar Diario Intolerancias desde Menú Diario',
            );
          }(),
        );
        if (DiarioInfoSelectorCall.pantallIntoFinalizar(
              (_model.selector?.jsonBody ?? ''),
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
              kTransitionInfoKey: TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.fade,
              ),
            },
          );

          return;
        } else {
          if (DiarioInfoSelectorCall.pantallIntoFinalizar(
                (_model.selector?.jsonBody ?? ''),
              ) ==
              'p2') {
            context.goNamed(
              'diario_Into2',
              extra: <String, dynamic>{
                kTransitionInfoKey: TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.fade,
                ),
              },
            );

            return;
          } else {
            if (DiarioInfoSelectorCall.pantallIntoFinalizar(
                  (_model.selector?.jsonBody ?? ''),
                ) ==
                'p3') {
              context.goNamed(
                'diario_Into3',
                extra: <String, dynamic>{
                  kTransitionInfoKey: TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.fade,
                  ),
                },
              );

              return;
            } else {
              if (DiarioInfoSelectorCall.pantallIntoFinalizar(
                    (_model.selector?.jsonBody ?? ''),
                  ) ==
                  'p4') {
                context.goNamed(
                  'diario_Into4',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                    ),
                  },
                );

                return;
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Error última página...',
                      style: TextStyle(
                        color: FlutterFlowTheme.of(context).info,
                      ),
                    ),
                    duration: Duration(milliseconds: 4000),
                    backgroundColor: FlutterFlowTheme.of(context).error,
                  ),
                );
                return;
              }
            }
          }
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Error 1',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).info,
              ),
            ),
            duration: Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).error,
          ),
        );
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
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/Ellipsis@1x-1.0s-200px-200px.gif',
                          width: 332.0,
                          height: 53.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).languageCode == 'es'
                            ? 'Estamos cargando los datos necesarios...'
                            : 'We are loading the required data...',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primary,
                              letterSpacing: 0.0,
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
    );
  }
}
