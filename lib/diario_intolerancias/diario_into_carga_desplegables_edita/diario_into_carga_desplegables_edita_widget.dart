import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'diario_into_carga_desplegables_edita_model.dart';
export 'diario_into_carga_desplegables_edita_model.dart';

class DiarioIntoCargaDesplegablesEditaWidget extends StatefulWidget {
  const DiarioIntoCargaDesplegablesEditaWidget({
    super.key,
    required this.primerDiario,
  });

  final String? primerDiario;

  @override
  State<DiarioIntoCargaDesplegablesEditaWidget> createState() =>
      _DiarioIntoCargaDesplegablesEditaWidgetState();
}

class _DiarioIntoCargaDesplegablesEditaWidgetState
    extends State<DiarioIntoCargaDesplegablesEditaWidget> {
  late DiarioIntoCargaDesplegablesEditaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => DiarioIntoCargaDesplegablesEditaModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiPescado = await DespComidaPescadoCall.call();

      _model.apiDespCarne = await DespComidaCarneCall.call();

      _model.apiDespMarisco = await DespComidaMariscosCall.call();

      _model.apiLacteos = await DespComidaLacteosCall.call();

      _model.apiHuevos = await DespComidaHuevosCall.call();

      _model.apiCereales = await DespComidaCerealesCall.call();

      _model.apiFrutas = await DespComidaFrutasCall.call();

      _model.apiVerduras = await DespComidaVerdurasCall.call();

      _model.apiLegumbres = await DespComidaLegumbresCall.call();

      _model.apiSecos = await DespComidaFrutosSecosCall.call();

      _model.apiSalsas = await DespComidasCondimentosCall.call();

      _model.apiBebidas = await DespComidaBebidasCall.call();

      FFAppState().despBebidas = getJsonField(
        (_model.apiBebidas?.jsonBody ?? ''),
        r'''$''',
        true,
      )!
          .toList()
          .cast<dynamic>();
      FFAppState().despCarne = getJsonField(
        (_model.apiDespCarne?.jsonBody ?? ''),
        r'''$''',
        true,
      )!
          .toList()
          .cast<dynamic>();
      FFAppState().despCereales = getJsonField(
        (_model.apiCereales?.jsonBody ?? ''),
        r'''$''',
        true,
      )!
          .toList()
          .cast<dynamic>();
      FFAppState().despSalsas = getJsonField(
        (_model.apiSalsas?.jsonBody ?? ''),
        r'''$''',
        true,
      )!
          .toList()
          .cast<dynamic>();
      FFAppState().despFrutas = getJsonField(
        (_model.apiFrutas?.jsonBody ?? ''),
        r'''$''',
        true,
      )!
          .toList()
          .cast<dynamic>();
      FFAppState().despSecos = getJsonField(
        (_model.apiSecos?.jsonBody ?? ''),
        r'''$''',
        true,
      )!
          .toList()
          .cast<dynamic>();
      FFAppState().despHuevos = getJsonField(
        (_model.apiHuevos?.jsonBody ?? ''),
        r'''$''',
        true,
      )!
          .toList()
          .cast<dynamic>();
      FFAppState().despLacteos = getJsonField(
        (_model.apiLacteos?.jsonBody ?? ''),
        r'''$''',
        true,
      )!
          .toList()
          .cast<dynamic>();
      FFAppState().despLegumbres = getJsonField(
        (_model.apiLegumbres?.jsonBody ?? ''),
        r'''$''',
        true,
      )!
          .toList()
          .cast<dynamic>();
      FFAppState().despMariscos = getJsonField(
        (_model.apiDespMarisco?.jsonBody ?? ''),
        r'''$''',
        true,
      )!
          .toList()
          .cast<dynamic>();
      FFAppState().despPescado = getJsonField(
        (_model.apiPescado?.jsonBody ?? ''),
        r'''$''',
        true,
      )!
          .toList()
          .cast<dynamic>();
      FFAppState().despVerduras = getJsonField(
        (_model.apiVerduras?.jsonBody ?? ''),
        r'''$''',
        true,
      )!
          .toList()
          .cast<dynamic>();

      context.pushNamed(
        'diarioIntoHubFinaliza',
        queryParameters: {
          'primerDiario': serializeParam(
            'no',
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
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).secondary,
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
      ),
    );
  }
}
