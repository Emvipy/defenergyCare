import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'resumen_model.dart';
export 'resumen_model.dart';

class ResumenWidget extends StatefulWidget {
  const ResumenWidget({
    super.key,
    required this.diarioId,
    required this.fechaTxt,
  });

  final int? diarioId;
  final String? fechaTxt;

  @override
  State<ResumenWidget> createState() => _ResumenWidgetState();
}

class _ResumenWidgetState extends State<ResumenWidget> {
  late ResumenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResumenModel());
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
      future: ResumenDiarioCall.call(
        diarioId: widget!.diarioId,
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
        final resumenResumenDiarioResponse = snapshot.data!;

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
              title: Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Text(
                  'Resumen del ${widget!.fechaTxt}',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 350.0,
                                height: 82.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            child: Image.network(
                                              ResumenDiarioCall.imagenBateria(
                                                resumenResumenDiarioResponse
                                                    .jsonBody,
                                              )!,
                                              width: 65.0,
                                              height: 65.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'jn8et9oh' /* Tu nivel de energía ha sido de... */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            '${ResumenDiarioCall.nivelEnergia(
                                              resumenResumenDiarioResponse
                                                  .jsonBody,
                                            )?.toString()}%',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 3.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'p81q0u2g' /* Tuviste menos energía en la  */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Flexible(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Opacity(
                                      opacity: ResumenDiarioCall.manana(
                                                resumenResumenDiarioResponse
                                                    .jsonBody,
                                              ) ==
                                              'si'
                                          ? 1.0
                                          : 0.2,
                                      child: Container(
                                        width: 90.0,
                                        height: 90.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.sunny,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              size: 50.0,
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'qirrkun3' /* Mañana */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: Container(
                                        width: 90.0,
                                        height: 10.0,
                                        decoration: BoxDecoration(
                                          color: ResumenDiarioCall.manana(
                                                    resumenResumenDiarioResponse
                                                        .jsonBody,
                                                  ) ==
                                                  'si'
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : Color(0x0063A4DC),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Opacity(
                                    opacity: ResumenDiarioCall.tarde(
                                              resumenResumenDiarioResponse
                                                  .jsonBody,
                                            ) ==
                                            'si'
                                        ? 1.0
                                        : 0.2,
                                    child: Container(
                                      width: 90.0,
                                      height: 90.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.sunny_snowing,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            size: 50.0,
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '4zmecmkp' /* Tarde */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Container(
                                      width: 90.0,
                                      height: 10.0,
                                      decoration: BoxDecoration(
                                        color: ResumenDiarioCall.tarde(
                                                  resumenResumenDiarioResponse
                                                      .jsonBody,
                                                ) ==
                                                'si'
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : Color(0x0063A4DC),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Opacity(
                                    opacity: ResumenDiarioCall.noche(
                                              resumenResumenDiarioResponse
                                                  .jsonBody,
                                            ) ==
                                            'si'
                                        ? 1.0
                                        : 0.2,
                                    child: Container(
                                      width: 90.0,
                                      height: 90.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.nights_stay_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            size: 50.0,
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'acocreii' /* Noche */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Container(
                                      width: 90.0,
                                      height: 10.0,
                                      decoration: BoxDecoration(
                                        color: ResumenDiarioCall.noche(
                                                  resumenResumenDiarioResponse
                                                      .jsonBody,
                                                ) ==
                                                'si'
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : Color(0x0063A4DC),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        if (ResumenDiarioCall.calidadSuenoTxt(
                                  resumenResumenDiarioResponse.jsonBody,
                                ) !=
                                null &&
                            ResumenDiarioCall.calidadSuenoTxt(
                                  resumenResumenDiarioResponse.jsonBody,
                                ) !=
                                '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 3.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'jjkqzg44' /* Esta fue tu calidad de sueño */,
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (ResumenDiarioCall.calidadSuenoTxt(
                                  resumenResumenDiarioResponse.jsonBody,
                                ) !=
                                null &&
                            ResumenDiarioCall.calidadSuenoTxt(
                                  resumenResumenDiarioResponse.jsonBody,
                                ) !=
                                '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    ResumenDiarioCall.imagenSueno(
                                      resumenResumenDiarioResponse.jsonBody,
                                    )!,
                                    width: 80.0,
                                    height: 80.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (ResumenDiarioCall.calidadSuenoTxt(
                                  resumenResumenDiarioResponse.jsonBody,
                                ) !=
                                null &&
                            ResumenDiarioCall.calidadSuenoTxt(
                                  resumenResumenDiarioResponse.jsonBody,
                                ) !=
                                '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  valueOrDefault<String>(
                                    ResumenDiarioCall.calidadSuenoTxt(
                                      resumenResumenDiarioResponse.jsonBody,
                                    ),
                                    '-',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 3.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '6nd8nlqm' /* Estas son las actividades que ... */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: FutureBuilder<ApiCallResponse>(
                                future: ResumenActividadesRealizadasCall.call(
                                  diarioId: widget!.diarioId,
                                ),
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
                                  final gridViewResumenActividadesRealizadasResponse =
                                      snapshot.data!;

                                  return Builder(
                                    builder: (context) {
                                      final childActividades = getJsonField(
                                        gridViewResumenActividadesRealizadasResponse
                                            .jsonBody,
                                        r'''$''',
                                      ).toList();

                                      return GridView.builder(
                                        padding: EdgeInsets.zero,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          crossAxisSpacing: 10.0,
                                          mainAxisSpacing: 10.0,
                                          childAspectRatio: 3.0,
                                        ),
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: childActividades.length,
                                        itemBuilder:
                                            (context, childActividadesIndex) {
                                          final childActividadesItem =
                                              childActividades[
                                                  childActividadesIndex];
                                          return Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
                                              child: Container(
                                                width: 255.0,
                                                height: 55.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  10.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  0.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  10.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0.0),
                                                        ),
                                                        child: Image.network(
                                                          getJsonField(
                                                            childActividadesItem,
                                                            r'''$.icon.url''',
                                                          ).toString(),
                                                          width: 55.0,
                                                          height: 55.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Flexible(
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
                                                            childActividadesItem,
                                                            r'''$.actividad''',
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
                                                                fontSize: 13.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
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
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 3.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'z6rion20' /* Síntomas que más has experimen... */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 3.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: FutureBuilder<ApiCallResponse>(
                                  future: ResumenSintomasCall.call(
                                    diarioId: widget!.diarioId,
                                  ),
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
                                    final listViewResumenSintomasResponse =
                                        snapshot.data!;

                                    return Builder(
                                      builder: (context) {
                                        final childSintomas = getJsonField(
                                          listViewResumenSintomasResponse
                                              .jsonBody,
                                          r'''$''',
                                        ).toList();

                                        return ListView.separated(
                                          padding: EdgeInsets.fromLTRB(
                                            0,
                                            0,
                                            0,
                                            15.0,
                                          ),
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: childSintomas.length,
                                          separatorBuilder: (_, __) =>
                                              SizedBox(height: 10.0),
                                          itemBuilder:
                                              (context, childSintomasIndex) {
                                            final childSintomasItem =
                                                childSintomas[
                                                    childSintomasIndex];
                                            return Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Container(
                                                width: 350.0,
                                                height: 40.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: Row(
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
                                                      child: Text(
                                                        getJsonField(
                                                          childSintomasItem,
                                                          r'''$.sintoma''',
                                                        ).toString(),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ),
                                                    Flexible(
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      0.0,
                                                                      15.0,
                                                                      0.0),
                                                          child: Text(
                                                            getJsonField(
                                                              childSintomasItem,
                                                              r'''$.intensidad''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
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
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 3.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'z1bvxjg8' /* Tu nivel de dolor ha sido de: */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  ResumenDiarioCall.imagenDolor(
                                    resumenResumenDiarioResponse.jsonBody,
                                  )!,
                                  width: 80.0,
                                  height: 80.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  ResumenDiarioCall.intensidadDolorTxt(
                                    resumenResumenDiarioResponse.jsonBody,
                                  ),
                                  '-',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 3.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '1sa6fdvl' /* Tomaste estos medicamentos / s... */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        if ((ResumenDiarioCall.med1(
                                  resumenResumenDiarioResponse.jsonBody,
                                ) ==
                                'no') &&
                            (ResumenDiarioCall.med2(
                                  resumenResumenDiarioResponse.jsonBody,
                                ) ==
                                'no') &&
                            (ResumenDiarioCall.vit1(
                                  resumenResumenDiarioResponse.jsonBody,
                                ) ==
                                'no') &&
                            (ResumenDiarioCall.vit2(
                                  resumenResumenDiarioResponse.jsonBody,
                                ) ==
                                'no') &&
                            (ResumenDiarioCall.vit3(
                                  resumenResumenDiarioResponse.jsonBody,
                                ) ==
                                'no'))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 3.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'apc9vuet' /* No has registrado medicamentos... */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (ResumenDiarioCall.med1(
                              resumenResumenDiarioResponse.jsonBody,
                            ) ==
                            'si')
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width: 350.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Flexible(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      ResumenDiarioCall
                                                          .nombreMed1(
                                                        resumenResumenDiarioResponse
                                                            .jsonBody,
                                                      ),
                                                      '-',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
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
                              Container(
                                width: 350.0,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (ResumenDiarioCall.alivioSintomasMed1(
                                          resumenResumenDiarioResponse.jsonBody,
                                        ) ==
                                        'no')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Flexible(
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'h18tujcs' /* Este medicamento no ha mejorad... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    if (ResumenDiarioCall.alivioSintomasMed1(
                                          resumenResumenDiarioResponse.jsonBody,
                                        ) ==
                                        'si')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Flexible(
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'fdz3lqnw' /* Este medicamento ha mejorado e... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    if (ResumenDiarioCall.mejora1Med1(
                                          resumenResumenDiarioResponse.jsonBody,
                                        ) !=
                                        'n/a')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                ResumenDiarioCall.mejora1Med1(
                                                  resumenResumenDiarioResponse
                                                      .jsonBody,
                                                ),
                                                '-',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    if (ResumenDiarioCall.mejora2Med1(
                                          resumenResumenDiarioResponse.jsonBody,
                                        ) !=
                                        'n/a')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                ResumenDiarioCall.mejora2Med1(
                                                  resumenResumenDiarioResponse
                                                      .jsonBody,
                                                ),
                                                '-',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    if (ResumenDiarioCall.mejora3Med1(
                                          resumenResumenDiarioResponse.jsonBody,
                                        ) !=
                                        'n/a')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                ResumenDiarioCall.mejora3Med1(
                                                  resumenResumenDiarioResponse
                                                      .jsonBody,
                                                ),
                                                '-',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    if (ResumenDiarioCall.mejora4Med1(
                                          resumenResumenDiarioResponse.jsonBody,
                                        ) !=
                                        'n/a')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                ResumenDiarioCall.mejora4Med1(
                                                  resumenResumenDiarioResponse
                                                      .jsonBody,
                                                ),
                                                '-',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    if (ResumenDiarioCall.mejora5Med1(
                                          resumenResumenDiarioResponse.jsonBody,
                                        ) !=
                                        'n/a')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                ResumenDiarioCall.mejora5Med1(
                                                  resumenResumenDiarioResponse
                                                      .jsonBody,
                                                ),
                                                '-',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
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
                        if (ResumenDiarioCall.med2(
                              resumenResumenDiarioResponse.jsonBody,
                            ) ==
                            'si')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width: 350.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Flexible(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        ResumenDiarioCall
                                                            .nombreMed2(
                                                          resumenResumenDiarioResponse
                                                              .jsonBody,
                                                        ),
                                                        '-',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
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
                                Container(
                                  width: 350.0,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (ResumenDiarioCall.alivioSintomasMed2(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) ==
                                          'no')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '7p5v831o' /* Este medicamento no ha mejorad... */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.alivioSintomasMed2(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) ==
                                          'si')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'k2wgz0mo' /* Este medicamento ha mejorado e... */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.mejora1Med2(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) !=
                                          'n/a')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  ResumenDiarioCall.mejora1Med2(
                                                    resumenResumenDiarioResponse
                                                        .jsonBody,
                                                  ),
                                                  '-',
                                                ),
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
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.mejora2Med2(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) !=
                                          'n/a')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  ResumenDiarioCall.mejora2Med2(
                                                    resumenResumenDiarioResponse
                                                        .jsonBody,
                                                  ),
                                                  '-',
                                                ),
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
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.mejora3Med2(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) !=
                                          'n/a')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  ResumenDiarioCall.mejora3Med2(
                                                    resumenResumenDiarioResponse
                                                        .jsonBody,
                                                  ),
                                                  '-',
                                                ),
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
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.mejora4Med2(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) !=
                                          'n/a')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  ResumenDiarioCall.mejora4Med2(
                                                    resumenResumenDiarioResponse
                                                        .jsonBody,
                                                  ),
                                                  '-',
                                                ),
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
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.mejora5Med2(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) !=
                                          'n/a')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  ResumenDiarioCall.mejora5Med2(
                                                    resumenResumenDiarioResponse
                                                        .jsonBody,
                                                  ),
                                                  '-',
                                                ),
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
                                            ],
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (ResumenDiarioCall.vit1(
                              resumenResumenDiarioResponse.jsonBody,
                            ) ==
                            'si')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width: 350.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Flexible(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        ResumenDiarioCall
                                                            .nombreVit1(
                                                          resumenResumenDiarioResponse
                                                              .jsonBody,
                                                        ),
                                                        '-',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
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
                                Container(
                                  width: 350.0,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (ResumenDiarioCall.alivioSintomasVit1(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) ==
                                          'no')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'r30vyzvb' /* Este medicamento no ha mejorad... */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.alivioSintomasVit1(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) ==
                                          'si')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'lk2b5bk5' /* Este suplemento ha mejorado es... */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.mejora1Vit1(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) !=
                                          'n/a')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  ResumenDiarioCall.mejora1Vit1(
                                                    resumenResumenDiarioResponse
                                                        .jsonBody,
                                                  ),
                                                  '-',
                                                ),
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
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.mejora2Vit1(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) !=
                                          'n/a')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  ResumenDiarioCall.mejora2Vit1(
                                                    resumenResumenDiarioResponse
                                                        .jsonBody,
                                                  ),
                                                  '-',
                                                ),
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
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.mejora3Vit1(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) !=
                                          'n/a')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  ResumenDiarioCall.mejora3Vit1(
                                                    resumenResumenDiarioResponse
                                                        .jsonBody,
                                                  ),
                                                  '-',
                                                ),
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
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.mejora4Vit1(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) !=
                                          'n/a')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  ResumenDiarioCall.mejora4Vit1(
                                                    resumenResumenDiarioResponse
                                                        .jsonBody,
                                                  ),
                                                  '-',
                                                ),
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
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.mejora5Vit1(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) !=
                                          'n/a')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  ResumenDiarioCall.mejora5Vit1(
                                                    resumenResumenDiarioResponse
                                                        .jsonBody,
                                                  ),
                                                  '-',
                                                ),
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
                                            ],
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (ResumenDiarioCall.vit2(
                              resumenResumenDiarioResponse.jsonBody,
                            ) ==
                            'si')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width: 350.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Flexible(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        ResumenDiarioCall
                                                            .nombreVit2(
                                                          resumenResumenDiarioResponse
                                                              .jsonBody,
                                                        ),
                                                        '-',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
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
                                Container(
                                  width: 350.0,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (ResumenDiarioCall.alivioSintomasVit2(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) ==
                                          'no')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'kc88tme0' /* Este medicamento no ha mejorad... */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.alivioSintomasVit2(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) ==
                                          'si')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '3jab9bn1' /* Este suplemento ha mejorado es... */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.mejora1Vit2(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) !=
                                          'n/a')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  ResumenDiarioCall.mejora1Vit2(
                                                    resumenResumenDiarioResponse
                                                        .jsonBody,
                                                  ),
                                                  '-',
                                                ),
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
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.mejora2Vit2(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) !=
                                          'n/a')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  ResumenDiarioCall.mejora2Vit2(
                                                    resumenResumenDiarioResponse
                                                        .jsonBody,
                                                  ),
                                                  '-',
                                                ),
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
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.mejora3Vit2(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) !=
                                          'n/a')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  ResumenDiarioCall.mejora3Vit2(
                                                    resumenResumenDiarioResponse
                                                        .jsonBody,
                                                  ),
                                                  '-',
                                                ),
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
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.mejora4Vit2(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) !=
                                          'n/a')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  ResumenDiarioCall.mejora4Vit2(
                                                    resumenResumenDiarioResponse
                                                        .jsonBody,
                                                  ),
                                                  '-',
                                                ),
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
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.mejora5Vit2(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) !=
                                          'n/a')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  ResumenDiarioCall.mejora5Vit2(
                                                    resumenResumenDiarioResponse
                                                        .jsonBody,
                                                  ),
                                                  '-',
                                                ),
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
                                            ],
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (ResumenDiarioCall.vit3(
                              resumenResumenDiarioResponse.jsonBody,
                            ) ==
                            'si')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width: 350.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Flexible(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        ResumenDiarioCall
                                                            .nombreVit3(
                                                          resumenResumenDiarioResponse
                                                              .jsonBody,
                                                        ),
                                                        '-',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
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
                                Container(
                                  width: 350.0,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (ResumenDiarioCall.alivioSintomasVit3(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) ==
                                          'no')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'awmoeqwy' /* Este medicamento no ha mejorad... */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.alivioSintomasVit3(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) ==
                                          'si')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'w65qtq31' /* Este suplemento ha mejorado es... */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.mejora1Vit3(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) !=
                                          'n/a')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  ResumenDiarioCall.mejora1Vit3(
                                                    resumenResumenDiarioResponse
                                                        .jsonBody,
                                                  ),
                                                  '-',
                                                ),
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
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.mejora2Vit3(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) !=
                                          'n/a')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  ResumenDiarioCall.mejora2Vit3(
                                                    resumenResumenDiarioResponse
                                                        .jsonBody,
                                                  ),
                                                  '-',
                                                ),
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
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.mejora3Vit3(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) !=
                                          'n/a')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  ResumenDiarioCall.mejora3Vit3(
                                                    resumenResumenDiarioResponse
                                                        .jsonBody,
                                                  ),
                                                  '-',
                                                ),
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
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.mejora4Vit3(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) !=
                                          'n/a')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  ResumenDiarioCall.mejora4Vit3(
                                                    resumenResumenDiarioResponse
                                                        .jsonBody,
                                                  ),
                                                  '-',
                                                ),
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
                                            ],
                                          ),
                                        ),
                                      if (ResumenDiarioCall.mejora5Vit3(
                                            resumenResumenDiarioResponse
                                                .jsonBody,
                                          ) !=
                                          'n/a')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  ResumenDiarioCall.mejora5Vit3(
                                                    resumenResumenDiarioResponse
                                                        .jsonBody,
                                                  ),
                                                  '-',
                                                ),
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
                                            ],
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 25.0, 0.0, 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'mytkv53k' /* Resumen de Intolerancias */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (ResumenDiarioCall.intoId(
                              resumenResumenDiarioResponse.jsonBody,
                            )! <
                            1)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'yxbttlka' /* No tienes hecho el diario de e... */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (ResumenDiarioCall.intoId(
                              resumenResumenDiarioResponse.jsonBody,
                            )! >=
                            1)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.apiDesayuno =
                                        await ResumenCargaAlimentosCall.call(
                                      diarioId: widget!.diarioId,
                                    );

                                    _model.momento = 1;
                                    _model.carnes =
                                        ResumenCargaAlimentosCall.carneDesayuno(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    )!;
                                    _model.pescado = ResumenCargaAlimentosCall
                                        .pescadoDesayuno(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    )!;
                                    _model.marisco = ResumenCargaAlimentosCall
                                        .mariscoDesayuno(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    )!;
                                    _model.lacteos = ResumenCargaAlimentosCall
                                        .lacteoDesayuno(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    )!;
                                    _model.huevos = ResumenCargaAlimentosCall
                                        .huevosDesayuno(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    )!;
                                    _model.cereales = ResumenCargaAlimentosCall
                                        .cerealesDesayuno(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    )!;
                                    _model.frutas = ResumenCargaAlimentosCall
                                        .frutasDesayuno(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    )!;
                                    _model.verduras = ResumenCargaAlimentosCall
                                        .verdurasDesayuno(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    )!;
                                    _model.legumbres = ResumenCargaAlimentosCall
                                        .legumbresDesayuno(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    )!;
                                    _model.secos =
                                        ResumenCargaAlimentosCall.secosDesayuno(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    )!;
                                    _model.salsas = ResumenCargaAlimentosCall
                                        .salsasDesayuno(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    )!;
                                    _model.bebidas = ResumenCargaAlimentosCall
                                        .bebidasDesayuno(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    )!;
                                    _model.carne1 = ResumenCargaAlimentosCall
                                        .carneDesayuno1(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.carne2 = ResumenCargaAlimentosCall
                                        .carneDesayuno2(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.carne3 = ResumenCargaAlimentosCall
                                        .carneDesayuno3(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.carne4 = ResumenCargaAlimentosCall
                                        .carneDesayuno4(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.carne5 = ResumenCargaAlimentosCall
                                        .carneDesayuno5(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.carne6 = ResumenCargaAlimentosCall
                                        .carneDesayuno6(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.carne7 = ResumenCargaAlimentosCall
                                        .carneDesayuno7(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.pescado1 = ResumenCargaAlimentosCall
                                        .pescadoDesayuno1(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.pescado2 = ResumenCargaAlimentosCall
                                        .pescadoDesayuno2(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.pescado3 = ResumenCargaAlimentosCall
                                        .pescadoDesayuno3(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.pescado4 = ResumenCargaAlimentosCall
                                        .pescadoDesayuno4(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.pescado5 = ResumenCargaAlimentosCall
                                        .pescadoDesayuno5(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.pescado6 = ResumenCargaAlimentosCall
                                        .pescadoDesayuno6(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.pescado7 = ResumenCargaAlimentosCall
                                        .pescadoDesayuno7(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.marisco1 = ResumenCargaAlimentosCall
                                        .mariscoDesayuno1(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.marisco2 = ResumenCargaAlimentosCall
                                        .mariscoDesayuno2(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.marisco3 = ResumenCargaAlimentosCall
                                        .mariscoDesayuno3(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.marisco4 = ResumenCargaAlimentosCall
                                        .mariscoDesayuno4(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.marisco5 = ResumenCargaAlimentosCall
                                        .mariscoDesayuno5(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.marisco6 = ResumenCargaAlimentosCall
                                        .mariscoDesayuno6(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.marisco7 = ResumenCargaAlimentosCall
                                        .mariscoDesayuno7(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.lacteos1 = ResumenCargaAlimentosCall
                                        .lacteoDesayuno1(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.lacteos2 = ResumenCargaAlimentosCall
                                        .lacteoDesayuno2(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.lacteos3 = ResumenCargaAlimentosCall
                                        .lacteoDesayuno3(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.lacteos4 = ResumenCargaAlimentosCall
                                        .lacteoDesayuno4(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.lacteos5 = ResumenCargaAlimentosCall
                                        .lacteoDesayuno5(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.lacteos6 = ResumenCargaAlimentosCall
                                        .lacteoDesayuno6(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.lacteos7 = ResumenCargaAlimentosCall
                                        .lacteoDesayuno7(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.huevos1 = ResumenCargaAlimentosCall
                                        .huevosDesayuno1(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.cereales1 = ResumenCargaAlimentosCall
                                        .cerealesDesayuno1(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.cereales2 = ResumenCargaAlimentosCall
                                        .cerealesDesayuno2(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.cereales3 = ResumenCargaAlimentosCall
                                        .cerealesDesayuno3(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.cereales4 = ResumenCargaAlimentosCall
                                        .cerealesDesayuno4(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.cereales5 = ResumenCargaAlimentosCall
                                        .cerealesDesayuno5(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.cereales6 = ResumenCargaAlimentosCall
                                        .cerealesDesayuno6(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.cereales7 = ResumenCargaAlimentosCall
                                        .cerealesDesayuno7(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.frutas1 = ResumenCargaAlimentosCall
                                        .frutasDesayuno1(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.frutas2 = ResumenCargaAlimentosCall
                                        .frutasDesayuno2(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.frutas3 = ResumenCargaAlimentosCall
                                        .frutasDesayuno3(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.frutas4 = ResumenCargaAlimentosCall
                                        .frutasDesayuno4(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.frutas5 = ResumenCargaAlimentosCall
                                        .frutasDesayuno5(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.frutas6 = ResumenCargaAlimentosCall
                                        .frutasDesayuno6(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.frutas7 = ResumenCargaAlimentosCall
                                        .frutasDesayuno7(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.verduras1 = ResumenCargaAlimentosCall
                                        .verdurasDesayuno1(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.verduras2 = ResumenCargaAlimentosCall
                                        .verdurasDesayuno2(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.verduras3 = ResumenCargaAlimentosCall
                                        .verdurasDesayuno3(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.verduras4 = ResumenCargaAlimentosCall
                                        .verdurasDesayuno4(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.verduras5 = ResumenCargaAlimentosCall
                                        .verdurasDesayuno5(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.verduras6 = ResumenCargaAlimentosCall
                                        .verdurasDesayuno6(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.verduras7 = ResumenCargaAlimentosCall
                                        .verdurasDesayuno7(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.legumbres1 =
                                        ResumenCargaAlimentosCall
                                            .legumbresDesayuno1(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.legumbres2 =
                                        ResumenCargaAlimentosCall
                                            .legumbresDesayuno2(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.legumbres3 =
                                        ResumenCargaAlimentosCall
                                            .legumbresDesayuno3(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.legumbres4 =
                                        ResumenCargaAlimentosCall
                                            .legumbresDesayuno4(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.legumbres5 =
                                        ResumenCargaAlimentosCall
                                            .legumbresDesayuno5(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.legumbres6 =
                                        ResumenCargaAlimentosCall
                                            .legumbresDesayuno6(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.legumbres7 =
                                        ResumenCargaAlimentosCall
                                            .legumbresDesayuno7(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.secos1 = ResumenCargaAlimentosCall
                                        .secosDesayuno1(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.secos2 = ResumenCargaAlimentosCall
                                        .secosDesayuno2(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.secos3 = ResumenCargaAlimentosCall
                                        .secosDesayuno3(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.secos4 = ResumenCargaAlimentosCall
                                        .secosDesayuno4(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.secos5 = ResumenCargaAlimentosCall
                                        .secosDesayuno5(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.secos6 = ResumenCargaAlimentosCall
                                        .secosDesayuno6(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.secos7 = ResumenCargaAlimentosCall
                                        .secosDesayuno7(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.salsa1 = ResumenCargaAlimentosCall
                                        .salsasDesayuno1(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.salsa2 = ResumenCargaAlimentosCall
                                        .salsasDesayuno2(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.salsa3 = ResumenCargaAlimentosCall
                                        .salsasDesayuno3(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.salsa4 = ResumenCargaAlimentosCall
                                        .salsasDesayuno4(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.salsa5 = ResumenCargaAlimentosCall
                                        .salsasDesayuno5(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.salsa6 = ResumenCargaAlimentosCall
                                        .salsasDesayuno6(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.salsa7 = ResumenCargaAlimentosCall
                                        .salsasDesayuno7(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.bebidas1 = ResumenCargaAlimentosCall
                                        .bebidasDesayuno1(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.bebidas2 = ResumenCargaAlimentosCall
                                        .bebidasDesayuno2(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.bebidas3 = ResumenCargaAlimentosCall
                                        .bebidasDesayuno3(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.bebidas4 = ResumenCargaAlimentosCall
                                        .bebidasDesayuno4(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.bebidas5 = ResumenCargaAlimentosCall
                                        .bebidasDesayuno5(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.bebidas6 = ResumenCargaAlimentosCall
                                        .bebidasDesayuno6(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.bebidas7 = ResumenCargaAlimentosCall
                                        .bebidasDesayuno7(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.sintoma1 =
                                        ResumenCargaAlimentosCall.sint1Desayuno(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.sintoma2 =
                                        ResumenCargaAlimentosCall.sint2Desayuno(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    _model.sintoma3 =
                                        ResumenCargaAlimentosCall.sint3Desayuno(
                                      (_model.apiDesayuno?.jsonBody ?? ''),
                                    );
                                    safeSetState(() {});

                                    safeSetState(() {});
                                  },
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: _model.momento == 1 ? 0.0 : 5.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Container(
                                      width: 90.0,
                                      height: 90.0,
                                      decoration: BoxDecoration(
                                        color: _model.momento == 1
                                            ? FlutterFlowTheme.of(context)
                                                .secondary
                                            : FlutterFlowTheme.of(context)
                                                .primary,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.coffee_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            size: 32.0,
                                          ),
                                          Flexible(
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'an39xahx' /* Desayuno */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.apiComida =
                                        await ResumenCargaAlimentosCall.call(
                                      diarioId: widget!.diarioId,
                                    );

                                    _model.momento = 2;
                                    _model.carnes =
                                        ResumenCargaAlimentosCall.carneComida(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    )!;
                                    _model.pescado =
                                        ResumenCargaAlimentosCall.pescadoComida(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    )!;
                                    _model.marisco =
                                        ResumenCargaAlimentosCall.mariscoComida(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    )!;
                                    _model.lacteos =
                                        ResumenCargaAlimentosCall.lacteoComida(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    )!;
                                    _model.huevos = ResumenCargaAlimentosCall
                                        .cerealesComida(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    )!;
                                    _model.cereales = ResumenCargaAlimentosCall
                                        .cerealesComida(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    )!;
                                    _model.frutas =
                                        ResumenCargaAlimentosCall.frutasComida(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    )!;
                                    _model.verduras = ResumenCargaAlimentosCall
                                        .verdurasComida(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    )!;
                                    _model.legumbres = ResumenCargaAlimentosCall
                                        .legumbresComida(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    )!;
                                    _model.secos =
                                        ResumenCargaAlimentosCall.secosComida(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    )!;
                                    _model.salsas =
                                        ResumenCargaAlimentosCall.salsaComida(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    )!;
                                    _model.bebidas =
                                        ResumenCargaAlimentosCall.bebidasComida(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    )!;
                                    _model.carne1 =
                                        ResumenCargaAlimentosCall.carneComida1(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.carne2 =
                                        ResumenCargaAlimentosCall.carneComida2(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.carne3 =
                                        ResumenCargaAlimentosCall.carneComida3(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.carne4 =
                                        ResumenCargaAlimentosCall.carneComida4(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.carne5 =
                                        ResumenCargaAlimentosCall.carneComida5(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.carne6 =
                                        ResumenCargaAlimentosCall.carneComida6(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.carne7 =
                                        ResumenCargaAlimentosCall.carneComida7(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.pescado1 = ResumenCargaAlimentosCall
                                        .pescadoComida1(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.pescado2 = ResumenCargaAlimentosCall
                                        .pescadoComida2(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.pescado3 = ResumenCargaAlimentosCall
                                        .pescadoComida3(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.pescado4 = ResumenCargaAlimentosCall
                                        .pescadoComida4(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.pescado5 = ResumenCargaAlimentosCall
                                        .pescadoComida5(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.pescado6 = ResumenCargaAlimentosCall
                                        .pescadoComida6(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.pescado7 = ResumenCargaAlimentosCall
                                        .pescadoComida7(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.marisco1 = ResumenCargaAlimentosCall
                                        .mariscoComida1(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.marisco2 = ResumenCargaAlimentosCall
                                        .mariscoComida2(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.marisco3 = ResumenCargaAlimentosCall
                                        .mariscoComida3(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.marisco4 = ResumenCargaAlimentosCall
                                        .mariscoComida4(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.marisco5 = ResumenCargaAlimentosCall
                                        .mariscoComida5(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.marisco6 = ResumenCargaAlimentosCall
                                        .mariscoComida6(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.marisco7 = ResumenCargaAlimentosCall
                                        .mariscoComida7(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.lacteos1 =
                                        ResumenCargaAlimentosCall.lacteoComida1(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.lacteos2 =
                                        ResumenCargaAlimentosCall.lacteoComida2(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.lacteos3 =
                                        ResumenCargaAlimentosCall.lacteoComida3(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.lacteos4 =
                                        ResumenCargaAlimentosCall.lacteoComida4(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.lacteos5 =
                                        ResumenCargaAlimentosCall.lacteoComida5(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.lacteos6 =
                                        ResumenCargaAlimentosCall.lacteoComida6(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.lacteos7 =
                                        ResumenCargaAlimentosCall.lacteoComida7(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.huevos1 =
                                        ResumenCargaAlimentosCall.huevoComida1(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.cereales1 = ResumenCargaAlimentosCall
                                        .cerealesComida1(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.cereales2 = ResumenCargaAlimentosCall
                                        .cerealesComida2(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.cereales3 = ResumenCargaAlimentosCall
                                        .cerealesComida3(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.cereales4 = ResumenCargaAlimentosCall
                                        .cerealesComida4(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.cereales5 = ResumenCargaAlimentosCall
                                        .cerealesComida5(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.cereales6 = ResumenCargaAlimentosCall
                                        .cerealesComida6(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.cereales7 = ResumenCargaAlimentosCall
                                        .cerealesComida7(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.frutas1 =
                                        ResumenCargaAlimentosCall.frutasComida1(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.frutas2 =
                                        ResumenCargaAlimentosCall.frutasComida2(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.frutas3 =
                                        ResumenCargaAlimentosCall.frutasComida3(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.frutas4 =
                                        ResumenCargaAlimentosCall.frutasComida4(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.frutas5 =
                                        ResumenCargaAlimentosCall.frutasComida5(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.frutas6 =
                                        ResumenCargaAlimentosCall.frutasComida6(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.frutas7 =
                                        ResumenCargaAlimentosCall.frutasComida7(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.verduras1 = ResumenCargaAlimentosCall
                                        .verdurasComida1(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.verduras2 = ResumenCargaAlimentosCall
                                        .verdurasComida2(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.verduras3 = ResumenCargaAlimentosCall
                                        .verdurasComida3(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.verduras4 = ResumenCargaAlimentosCall
                                        .verdurasComida4(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.verduras5 = ResumenCargaAlimentosCall
                                        .verdurasComida5(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.verduras6 = ResumenCargaAlimentosCall
                                        .verdurasComida6(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.verduras7 = ResumenCargaAlimentosCall
                                        .verdurasComida7(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.legumbres1 =
                                        ResumenCargaAlimentosCall
                                            .legumbresComida1(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.legumbres2 =
                                        ResumenCargaAlimentosCall
                                            .legumbresComida2(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.legumbres3 =
                                        ResumenCargaAlimentosCall
                                            .legumbresComida3(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.legumbres4 =
                                        ResumenCargaAlimentosCall
                                            .legumbresComida4(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.legumbres5 =
                                        ResumenCargaAlimentosCall
                                            .legumbresComida5(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.legumbres6 =
                                        ResumenCargaAlimentosCall
                                            .legumbresComida6(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.legumbres7 =
                                        ResumenCargaAlimentosCall
                                            .legumbresComida7(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.secos1 =
                                        ResumenCargaAlimentosCall.secosComida1(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.secos2 =
                                        ResumenCargaAlimentosCall.secosComida2(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.secos3 =
                                        ResumenCargaAlimentosCall.secosComida3(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.secos4 =
                                        ResumenCargaAlimentosCall.secosComida4(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.secos5 =
                                        ResumenCargaAlimentosCall.secosComida5(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.secos6 =
                                        ResumenCargaAlimentosCall.secosComida6(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.secos7 =
                                        ResumenCargaAlimentosCall.secosComida7(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.salsa1 =
                                        ResumenCargaAlimentosCall.salsaComida1(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.salsa2 =
                                        ResumenCargaAlimentosCall.salsaComida2(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.salsa3 =
                                        ResumenCargaAlimentosCall.salsaComida3(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.salsa4 =
                                        ResumenCargaAlimentosCall.salsaComida4(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.salsa5 =
                                        ResumenCargaAlimentosCall.salsaComida5(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.salsa6 =
                                        ResumenCargaAlimentosCall.salsaComida6(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.salsa7 =
                                        ResumenCargaAlimentosCall.salsaComida7(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.bebidas1 = ResumenCargaAlimentosCall
                                        .bebidasComida1(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.bebidas2 = ResumenCargaAlimentosCall
                                        .bebidasComida2(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.bebidas3 = ResumenCargaAlimentosCall
                                        .bebidasComida3(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.bebidas4 = ResumenCargaAlimentosCall
                                        .bebidasComida4(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.bebidas5 = ResumenCargaAlimentosCall
                                        .bebidasComida5(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.bebidas6 = ResumenCargaAlimentosCall
                                        .bebidasComida6(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.bebidas7 = ResumenCargaAlimentosCall
                                        .bebidasComida7(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.sintoma1 =
                                        ResumenCargaAlimentosCall.sint1Comida(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.sintoma2 =
                                        ResumenCargaAlimentosCall.sint2Comida(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    _model.sintoma3 =
                                        ResumenCargaAlimentosCall.sint3Comida(
                                      (_model.apiComida?.jsonBody ?? ''),
                                    );
                                    safeSetState(() {});

                                    safeSetState(() {});
                                  },
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: _model.momento == 2 ? 0.0 : 5.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Container(
                                      width: 90.0,
                                      height: 90.0,
                                      decoration: BoxDecoration(
                                        color: _model.momento == 2
                                            ? FlutterFlowTheme.of(context)
                                                .secondary
                                            : FlutterFlowTheme.of(context)
                                                .primary,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.sunny,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            size: 32.0,
                                          ),
                                          Flexible(
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'l86c9dd2' /* Comida */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.apiCena =
                                        await ResumenCargaAlimentosCall.call(
                                      diarioId: widget!.diarioId,
                                    );

                                    _model.momento = 3;
                                    _model.carnes =
                                        ResumenCargaAlimentosCall.carneCena(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    )!;
                                    _model.pescado =
                                        ResumenCargaAlimentosCall.pescadoCena(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    )!;
                                    _model.marisco =
                                        ResumenCargaAlimentosCall.mariscoCena(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    )!;
                                    _model.lacteos =
                                        ResumenCargaAlimentosCall.lacteoCena(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    )!;
                                    _model.huevos =
                                        ResumenCargaAlimentosCall.huevosCena(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    )!;
                                    _model.cereales =
                                        ResumenCargaAlimentosCall.cerealesCena(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    )!;
                                    _model.frutas =
                                        ResumenCargaAlimentosCall.frutasCena(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    )!;
                                    _model.verduras =
                                        ResumenCargaAlimentosCall.verdurasCena(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    )!;
                                    _model.legumbres =
                                        ResumenCargaAlimentosCall.legumbresCena(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    )!;
                                    _model.secos =
                                        ResumenCargaAlimentosCall.secosCena(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    )!;
                                    _model.salsas =
                                        ResumenCargaAlimentosCall.salsasCena(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    )!;
                                    _model.bebidas =
                                        ResumenCargaAlimentosCall.bebidasCena(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    )!;
                                    _model.carne1 =
                                        ResumenCargaAlimentosCall.carneCena1(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.carne2 =
                                        ResumenCargaAlimentosCall.carneCena2(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.carne3 =
                                        ResumenCargaAlimentosCall.carneCena3(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.carne4 =
                                        ResumenCargaAlimentosCall.carneCena4(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.carne5 =
                                        ResumenCargaAlimentosCall.carneCena5(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.carne6 =
                                        ResumenCargaAlimentosCall.carneCena6(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.carne7 =
                                        ResumenCargaAlimentosCall.carneCena7(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.pescado1 =
                                        ResumenCargaAlimentosCall.pescadoCena1(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.pescado2 =
                                        ResumenCargaAlimentosCall.pescadoCena2(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.pescado3 =
                                        ResumenCargaAlimentosCall.pescadoCena3(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.pescado4 =
                                        ResumenCargaAlimentosCall.pescadoCena4(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.pescado5 =
                                        ResumenCargaAlimentosCall.pescadoCena5(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.pescado6 =
                                        ResumenCargaAlimentosCall.pescadoCena6(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.pescado7 =
                                        ResumenCargaAlimentosCall.pescadoCena7(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.marisco1 =
                                        ResumenCargaAlimentosCall.mariscoCena1(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.marisco2 =
                                        ResumenCargaAlimentosCall.mariscoCena2(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.marisco3 =
                                        ResumenCargaAlimentosCall.mariscoCena3(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.marisco4 =
                                        ResumenCargaAlimentosCall.mariscoCena4(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.marisco5 =
                                        ResumenCargaAlimentosCall.mariscoCena5(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.marisco6 =
                                        ResumenCargaAlimentosCall.mariscoCena6(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.marisco7 =
                                        ResumenCargaAlimentosCall.mariscoCena7(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.lacteos1 =
                                        ResumenCargaAlimentosCall.lacteoCena1(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.lacteos2 =
                                        ResumenCargaAlimentosCall.lacteoCena2(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.lacteos3 =
                                        ResumenCargaAlimentosCall.lacteoCena3(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.lacteos4 =
                                        ResumenCargaAlimentosCall.lacteoCena4(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.lacteos5 =
                                        ResumenCargaAlimentosCall.lacteoCena5(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.lacteos6 =
                                        ResumenCargaAlimentosCall.lacteoCena6(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.lacteos7 =
                                        ResumenCargaAlimentosCall.lacteoCena7(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.huevos1 =
                                        ResumenCargaAlimentosCall.huevosCena1(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.cereales1 =
                                        ResumenCargaAlimentosCall.cerealesCena1(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.cereales2 =
                                        ResumenCargaAlimentosCall.cerealesCena2(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.cereales3 =
                                        ResumenCargaAlimentosCall.cerealesCena3(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.cereales4 =
                                        ResumenCargaAlimentosCall.cerealesCena4(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.cereales5 =
                                        ResumenCargaAlimentosCall.cerealesCena5(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.cereales6 =
                                        ResumenCargaAlimentosCall.cerealesCena6(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.cereales7 =
                                        ResumenCargaAlimentosCall.cerealesCena7(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.frutas1 =
                                        ResumenCargaAlimentosCall.frutasCena1(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.frutas2 =
                                        ResumenCargaAlimentosCall.frutasCena2(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.frutas3 =
                                        ResumenCargaAlimentosCall.frutasCena3(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.frutas4 =
                                        ResumenCargaAlimentosCall.frutasCena4(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.frutas5 =
                                        ResumenCargaAlimentosCall.frutasCena5(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.frutas6 =
                                        ResumenCargaAlimentosCall.frutasCena6(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.frutas7 =
                                        ResumenCargaAlimentosCall.frutasCena7(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.verduras1 =
                                        ResumenCargaAlimentosCall.verdurasCena1(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.verduras2 =
                                        ResumenCargaAlimentosCall.verdurasCena2(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.verduras3 =
                                        ResumenCargaAlimentosCall.verdurasCena3(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.verduras4 =
                                        ResumenCargaAlimentosCall.verdurasCena4(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.verduras5 =
                                        ResumenCargaAlimentosCall.verdurasCena5(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.verduras6 =
                                        ResumenCargaAlimentosCall.verdurasCena6(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.verduras7 =
                                        ResumenCargaAlimentosCall.verdurasCena7(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.legumbres1 =
                                        ResumenCargaAlimentosCall
                                            .legumbresCena1(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.legumbres2 =
                                        ResumenCargaAlimentosCall
                                            .legumbresCena2(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.legumbres3 =
                                        ResumenCargaAlimentosCall
                                            .legumbresCena3(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.legumbres4 =
                                        ResumenCargaAlimentosCall
                                            .legumbresCena4(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.legumbres5 =
                                        ResumenCargaAlimentosCall
                                            .legumbresCena5(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.legumbres6 =
                                        ResumenCargaAlimentosCall
                                            .legumbresCena6(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.legumbres7 =
                                        ResumenCargaAlimentosCall
                                            .legumbresCena7(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.secos1 =
                                        ResumenCargaAlimentosCall.secosCena1(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.secos2 =
                                        ResumenCargaAlimentosCall.secosCena2(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.secos3 =
                                        ResumenCargaAlimentosCall.secosCena3(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.secos4 =
                                        ResumenCargaAlimentosCall.secosCena4(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.secos5 =
                                        ResumenCargaAlimentosCall.secosCena5(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.secos6 =
                                        ResumenCargaAlimentosCall.secosCena6(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.secos7 =
                                        ResumenCargaAlimentosCall.secosCena7(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.salsa1 =
                                        ResumenCargaAlimentosCall.salsasCena1(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.salsa2 =
                                        ResumenCargaAlimentosCall.salsasCena2(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.salsa3 =
                                        ResumenCargaAlimentosCall.salsasCena3(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.salsa4 =
                                        ResumenCargaAlimentosCall.salsasCena4(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.salsa5 =
                                        ResumenCargaAlimentosCall.salsasCena5(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.salsa6 =
                                        ResumenCargaAlimentosCall.salsasCena6(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.salsa7 =
                                        ResumenCargaAlimentosCall.salsasCena7(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.bebidas1 =
                                        ResumenCargaAlimentosCall.bebidasCena1(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.bebidas2 =
                                        ResumenCargaAlimentosCall.bebidasCena2(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.bebidas3 =
                                        ResumenCargaAlimentosCall.bebidasCena3(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.bebidas4 =
                                        ResumenCargaAlimentosCall.bebidasCena4(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.bebidas5 =
                                        ResumenCargaAlimentosCall.bebidasCena5(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.bebidas6 =
                                        ResumenCargaAlimentosCall.bebidasCena6(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.bebidas7 =
                                        ResumenCargaAlimentosCall.bebidasCena7(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.sintoma1 =
                                        ResumenCargaAlimentosCall.sint1Cena(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.sintoma2 =
                                        ResumenCargaAlimentosCall.sint2Cena(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    _model.sintoma3 =
                                        ResumenCargaAlimentosCall.sint3Cena(
                                      (_model.apiCena?.jsonBody ?? ''),
                                    );
                                    safeSetState(() {});

                                    safeSetState(() {});
                                  },
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: _model.momento == 3 ? 0.0 : 5.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Container(
                                      width: 90.0,
                                      height: 90.0,
                                      decoration: BoxDecoration(
                                        color: _model.momento == 3
                                            ? FlutterFlowTheme.of(context)
                                                .secondary
                                            : FlutterFlowTheme.of(context)
                                                .primary,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.nightlight_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            size: 32.0,
                                          ),
                                          Flexible(
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '0tjdbymj' /* Cena */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
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
                        if (_model.momento != null)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'uzvpzvre' /* Estos son los alimentos que ha... */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (_model.carnes == 'si')
                              Container(
                                width: 350.0,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 350.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 10.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (_model.mostrarCarne ==
                                                    'no') {
                                                  _model.mostrarCarne = 'si';
                                                  safeSetState(() {});
                                                } else {
                                                  _model.mostrarCarne = 'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'kr0q9yfo' /* Carne */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                            Flexible(
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Container(
                                                  width: 100.0,
                                                  height: 32.0,
                                                  decoration: BoxDecoration(),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      if (_model.mostrarCarne ==
                                                          'y')
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
                                                            if (_model
                                                                    .mostrarCarne ==
                                                                'no') {
                                                              _model.mostrarCarne =
                                                                  'si';
                                                              safeSetState(
                                                                  () {});
                                                            } else {
                                                              _model.mostrarCarne =
                                                                  'no';
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .keyboard_arrow_up_sharp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                      if (_model.mostrarCarne ==
                                                          'y')
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
                                                            if (_model
                                                                    .mostrarCarne ==
                                                                'no') {
                                                              _model.mostrarCarne =
                                                                  'si';
                                                              safeSetState(
                                                                  () {});
                                                            } else {
                                                              _model.mostrarCarne =
                                                                  'no';
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .keyboard_arrow_down_sharp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
                                                            size: 24.0,
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
                                    if (_model.carne1 != null &&
                                        _model.carne1 != '')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  3.0, 10.0, 0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              _model.carne1,
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if (_model.carne2 != null &&
                                        _model.carne2 != '')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  3.0, 5.0, 0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              _model.carne2,
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if (_model.carne3 != null &&
                                        _model.carne3 != '')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  3.0, 5.0, 0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              _model.carne3,
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if (_model.carne4 != null &&
                                        _model.carne4 != '')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  3.0, 5.0, 0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              _model.carne4,
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if (_model.carne5 != null &&
                                        _model.carne5 != '')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  3.0, 5.0, 0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              _model.carne5,
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if (_model.carne6 != null &&
                                        _model.carne6 != '')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  3.0, 5.0, 0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              _model.carne6,
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if (_model.carne7 != null &&
                                        _model.carne7 != '')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  3.0, 5.0, 0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              _model.carne7,
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            if (_model.pescado == 'si')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: Container(
                                  width: 350.0,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 350.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (_model.mostrarPescado ==
                                                      'no') {
                                                    _model.mostrarPescado =
                                                        'si';
                                                    safeSetState(() {});
                                                  } else {
                                                    _model.mostrarPescado =
                                                        'no';
                                                    safeSetState(() {});
                                                  }
                                                },
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6sepautv' /* Pescado */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Container(
                                                    width: 100.0,
                                                    height: 32.0,
                                                    decoration: BoxDecoration(),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        if (_model
                                                                .mostrarPescado ==
                                                            'y')
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
                                                              if (_model
                                                                      .mostrarPescado ==
                                                                  'no') {
                                                                _model.mostrarPescado =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.mostrarPescado =
                                                                    'no';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_up_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        if (_model
                                                                .mostrarPescado ==
                                                            'y')
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
                                                              if (_model
                                                                      .mostrarPescado ==
                                                                  'no') {
                                                                _model.mostrarPescado =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.mostrarPescado =
                                                                    'no';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
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
                                      if (_model.pescado1 != null &&
                                          _model.pescado1 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.pescado1,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.pescado2 != null &&
                                          _model.pescado2 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.pescado2,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.pescado3 != null &&
                                          _model.pescado3 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.pescado3,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.pescado4 != null &&
                                          _model.pescado4 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.pescado4,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.pescado5 != null &&
                                          _model.pescado5 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.pescado5,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.pescado6 != null &&
                                          _model.pescado6 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.pescado6,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.pescado7 != null &&
                                          _model.pescado7 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.pescado7,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            if (_model.marisco == 'si')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: Container(
                                  width: 350.0,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 350.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (_model.mostrarMarisco ==
                                                      'no') {
                                                    _model.mostrarMarisco =
                                                        'si';
                                                    safeSetState(() {});
                                                  } else {
                                                    _model.mostrarMarisco =
                                                        'no';
                                                    safeSetState(() {});
                                                  }
                                                },
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '8vmsj1sf' /* Mariscos */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Container(
                                                    width: 100.0,
                                                    height: 32.0,
                                                    decoration: BoxDecoration(),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        if (_model
                                                                .mostrarMarisco ==
                                                            'y')
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
                                                              if (_model
                                                                      .mostrarMarisco ==
                                                                  'no') {
                                                                _model.mostrarMarisco =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.mostrarMarisco =
                                                                    'no';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_up_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        if (_model
                                                                .mostrarMarisco ==
                                                            'y')
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
                                                              if (_model
                                                                      .mostrarMarisco ==
                                                                  'no') {
                                                                _model.mostrarMarisco =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.mostrarMarisco =
                                                                    'no';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
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
                                      if (_model.marisco1 != null &&
                                          _model.marisco1 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.marisco1,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.marisco2 != null &&
                                          _model.marisco2 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.marisco2,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.marisco3 != null &&
                                          _model.marisco3 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.marisco3,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.marisco4 != null &&
                                          _model.marisco4 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.marisco4,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.marisco5 != null &&
                                          _model.marisco5 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.marisco5,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.marisco6 != null &&
                                          _model.marisco6 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.marisco6,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.marisco7 != null &&
                                          _model.marisco7 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.marisco7,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            if (_model.lacteos == 'si')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: Container(
                                  width: 350.0,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 350.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (_model.mostrarLacteos ==
                                                      'no') {
                                                    _model.mostrarLacteos =
                                                        'si';
                                                    safeSetState(() {});
                                                  } else {
                                                    _model.mostrarLacteos =
                                                        'no';
                                                    safeSetState(() {});
                                                  }
                                                },
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ekahm2n1' /* Lácteos */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Container(
                                                    width: 100.0,
                                                    height: 32.0,
                                                    decoration: BoxDecoration(),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        if (_model
                                                                .mostrarLacteos ==
                                                            'y')
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
                                                              if (_model
                                                                      .mostrarLacteos ==
                                                                  'no') {
                                                                _model.mostrarLacteos =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.mostrarLacteos =
                                                                    'no';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_up_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        if (_model
                                                                .mostrarLacteos ==
                                                            'y')
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
                                                              if (_model
                                                                      .mostrarLacteos ==
                                                                  'no') {
                                                                _model.mostrarLacteos =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.mostrarLacteos =
                                                                    'no';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
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
                                      if (_model.lacteos1 != null &&
                                          _model.lacteos1 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.lacteos1,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.lacteos2 != null &&
                                          _model.lacteos2 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.lacteos2,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.lacteos3 != null &&
                                          _model.lacteos3 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.lacteos3,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.lacteos4 != null &&
                                          _model.lacteos4 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.lacteos4,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.lacteos5 != null &&
                                          _model.lacteos5 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.lacteos5,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.lacteos6 != null &&
                                          _model.lacteos6 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.lacteos6,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.lacteos7 != null &&
                                          _model.lacteos7 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.lacteos7,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            if (_model.huevos == 'si')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: Container(
                                  width: 350.0,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 350.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (_model.mostrarHuevos ==
                                                      'no') {
                                                    _model.mostrarHuevos = 'si';
                                                    safeSetState(() {});
                                                  } else {
                                                    _model.mostrarHuevos = 'no';
                                                    safeSetState(() {});
                                                  }
                                                },
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '8koxnjxo' /* Huevos */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Container(
                                                    width: 100.0,
                                                    height: 32.0,
                                                    decoration: BoxDecoration(),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        if (_model
                                                                .mostrarHuevos ==
                                                            'y')
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
                                                              if (_model
                                                                      .mostrarHuevos ==
                                                                  'no') {
                                                                _model.mostrarHuevos =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.mostrarHuevos =
                                                                    'no';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_up_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        if (_model
                                                                .mostrarHuevos ==
                                                            'y')
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
                                                              if (_model
                                                                      .mostrarHuevos ==
                                                                  'no') {
                                                                _model.mostrarHuevos =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.mostrarHuevos =
                                                                    'no';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
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
                                      if (_model.huevos1 != null &&
                                          _model.huevos1 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.huevos1,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            if (_model.cereales == 'si')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: Container(
                                  width: 350.0,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 350.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (_model.mostrarCereales ==
                                                      'no') {
                                                    _model.mostrarCereales =
                                                        'si';
                                                    safeSetState(() {});
                                                  } else {
                                                    _model.mostrarCereales =
                                                        'si';
                                                    safeSetState(() {});
                                                  }
                                                },
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '8dmi5kmi' /* Cereales */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Container(
                                                    width: 100.0,
                                                    height: 32.0,
                                                    decoration: BoxDecoration(),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        if (_model
                                                                .mostrarCereales ==
                                                            'y')
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
                                                              if (_model
                                                                      .mostrarCereales ==
                                                                  'no') {
                                                                _model.mostrarCereales =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.mostrarCereales =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_up_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        if (_model
                                                                .mostrarCereales ==
                                                            'y')
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
                                                              if (_model
                                                                      .mostrarCereales ==
                                                                  'no') {
                                                                _model.mostrarCereales =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.mostrarCereales =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
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
                                      if (_model.cereales1 != null &&
                                          _model.cereales1 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.cereales1,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.cereales2 != null &&
                                          _model.cereales2 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.cereales2,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.cereales3 != null &&
                                          _model.cereales3 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.cereales3,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.cereales4 != null &&
                                          _model.cereales4 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.cereales4,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.cereales5 != null &&
                                          _model.cereales5 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.cereales5,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.cereales6 != null &&
                                          _model.cereales6 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.cereales6,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.cereales7 != null &&
                                          _model.cereales7 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.cereales7,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            if (_model.frutas == 'si')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: Container(
                                  width: 350.0,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 350.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (_model.mostrarFrutas ==
                                                      'no') {
                                                    _model.mostrarFrutas = 'si';
                                                    safeSetState(() {});
                                                  } else {
                                                    _model.mostrarFrutas = 'no';
                                                    safeSetState(() {});
                                                  }
                                                },
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '3mc9gwd5' /* Frutas */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Container(
                                                    width: 100.0,
                                                    height: 32.0,
                                                    decoration: BoxDecoration(),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        if (_model
                                                                .mostrarFrutas ==
                                                            'y')
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
                                                              if (_model
                                                                      .mostrarFrutas ==
                                                                  'no') {
                                                                _model.mostrarFrutas =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.mostrarFrutas =
                                                                    'no';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_up_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        if (_model
                                                                .mostrarFrutas ==
                                                            'y')
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
                                                              if (_model
                                                                      .mostrarFrutas ==
                                                                  'no') {
                                                                _model.mostrarFrutas =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.mostrarFrutas =
                                                                    'no';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
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
                                      if (_model.frutas1 != null &&
                                          _model.frutas1 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.frutas1,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.frutas2 != null &&
                                          _model.frutas2 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.frutas2,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.frutas3 != null &&
                                          _model.frutas3 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.frutas3,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.frutas4 != null &&
                                          _model.frutas4 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.frutas4,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.frutas5 != null &&
                                          _model.frutas5 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.frutas5,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.frutas6 != null &&
                                          _model.frutas6 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.frutas6,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.frutas7 != null &&
                                          _model.frutas7 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.frutas7,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            if (_model.verduras == 'si')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: Container(
                                  width: 350.0,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 350.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (_model.mostrarVerduras ==
                                                      'no') {
                                                    _model.mostrarVerduras =
                                                        'si';
                                                    safeSetState(() {});
                                                  } else {
                                                    _model.mostrarVerduras =
                                                        'no';
                                                    safeSetState(() {});
                                                  }
                                                },
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '76baffwg' /* Verduras */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Container(
                                                    width: 100.0,
                                                    height: 32.0,
                                                    decoration: BoxDecoration(),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        if (_model.verduras ==
                                                            'y')
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
                                                              if (_model
                                                                      .mostrarVerduras ==
                                                                  'no') {
                                                                _model.mostrarVerduras =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.mostrarVerduras =
                                                                    'no';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_up_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        if (_model.verduras ==
                                                            'y')
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
                                                              if (_model
                                                                      .mostrarVerduras ==
                                                                  'no') {
                                                                _model.mostrarVerduras =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.mostrarVerduras =
                                                                    'no';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
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
                                      if (_model.verduras1 != null &&
                                          _model.verduras1 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.verduras1,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.verduras2 != null &&
                                          _model.verduras2 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.verduras2,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.verduras3 != null &&
                                          _model.verduras3 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.verduras3,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.verduras4 != null &&
                                          _model.verduras4 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.verduras4,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.verduras5 != null &&
                                          _model.verduras5 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.verduras5,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.verduras6 != null &&
                                          _model.verduras6 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.verduras6,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.verduras7 != null &&
                                          _model.verduras7 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.verduras7,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            if (_model.legumbres == 'si')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: Container(
                                  width: 350.0,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 350.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (_model.mostrarLegumbres ==
                                                      'no') {
                                                    _model.mostrarLegumbres =
                                                        'si';
                                                    safeSetState(() {});
                                                  } else {
                                                    _model.mostrarLegumbres =
                                                        'no';
                                                    safeSetState(() {});
                                                  }
                                                },
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'jcqxu66s' /* Legumbres */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Container(
                                                    width: 100.0,
                                                    height: 32.0,
                                                    decoration: BoxDecoration(),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        if (_model
                                                                .mostrarLegumbres ==
                                                            'y')
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
                                                              if (_model
                                                                      .mostrarLegumbres ==
                                                                  'no') {
                                                                _model.mostrarLegumbres =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.mostrarLegumbres =
                                                                    'no';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_up_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        if (_model
                                                                .mostrarLegumbres ==
                                                            'y')
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
                                                              if (_model
                                                                      .mostrarLegumbres ==
                                                                  'no') {
                                                                _model.mostrarLegumbres =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.mostrarLegumbres =
                                                                    'no';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
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
                                      if (_model.legumbres1 != null &&
                                          _model.legumbres1 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.legumbres1,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.legumbres2 != null &&
                                          _model.legumbres2 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.legumbres2,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.legumbres3 != null &&
                                          _model.legumbres3 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.legumbres3,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.legumbres4 != null &&
                                          _model.legumbres4 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.legumbres4,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.legumbres5 != null &&
                                          _model.legumbres5 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.legumbres5,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.legumbres6 != null &&
                                          _model.legumbres6 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.legumbres6,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.legumbres7 != null &&
                                          _model.legumbres7 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.legumbres7,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            if (_model.secos == 'si')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: Container(
                                  width: 350.0,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 350.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (_model.mostrarSecos ==
                                                      'no') {
                                                    _model.mostrarSecos = 'si';
                                                    safeSetState(() {});
                                                  } else {
                                                    _model.mostrarSecos = 'no';
                                                    safeSetState(() {});
                                                  }
                                                },
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ros8y461' /* Frutos Secos */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Container(
                                                    width: 100.0,
                                                    height: 32.0,
                                                    decoration: BoxDecoration(),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        if (_model
                                                                .mostrarSecos ==
                                                            'y')
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
                                                              if (_model
                                                                      .mostrarSecos ==
                                                                  'no') {
                                                                _model.mostrarSecos =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.mostrarSecos =
                                                                    'no';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_up_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        if (_model
                                                                .mostrarSecos ==
                                                            'y')
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
                                                              if (_model
                                                                      .mostrarSecos ==
                                                                  'no') {
                                                                _model.mostrarSecos =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.mostrarSecos =
                                                                    'no';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
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
                                      if (_model.secos1 != null &&
                                          _model.secos1 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.secos1,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.secos2 != null &&
                                          _model.secos2 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.secos2,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.secos3 != null &&
                                          _model.secos3 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.secos3,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.secos4 != null &&
                                          _model.secos4 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.secos4,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.secos5 != null &&
                                          _model.secos5 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.secos5,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.secos6 != null &&
                                          _model.secos6 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.secos6,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.secos7 != null &&
                                          _model.secos7 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.secos7,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            if (_model.salsas == 'si')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: Container(
                                  width: 350.0,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 350.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (_model.mostrarSalsas ==
                                                      'no') {
                                                    _model.mostrarSalsas = 'si';
                                                    safeSetState(() {});
                                                  } else {
                                                    _model.mostrarSalsas = 'no';
                                                    safeSetState(() {});
                                                  }
                                                },
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'fj4kcqqn' /* Condimentos y Salsas */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Container(
                                                    width: 100.0,
                                                    height: 32.0,
                                                    decoration: BoxDecoration(),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        if (_model
                                                                .mostrarSalsas ==
                                                            'y')
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
                                                              if (_model
                                                                      .mostrarSalsas ==
                                                                  'no') {
                                                                _model.mostrarSalsas =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.mostrarSalsas =
                                                                    'no';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_up_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        if (_model
                                                                .mostrarSalsas ==
                                                            'y')
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
                                                              if (_model
                                                                      .mostrarSalsas ==
                                                                  'no') {
                                                                _model.mostrarSalsas =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.mostrarSalsas =
                                                                    'no';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
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
                                      if (_model.salsa1 != null &&
                                          _model.salsa1 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.salsa1,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.salsa2 != null &&
                                          _model.salsa2 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.salsa2,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.salsa3 != null &&
                                          _model.salsa3 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.salsa3,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.salsa4 != null &&
                                          _model.salsa4 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.salsa4,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.salsa5 != null &&
                                          _model.salsa5 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.salsa5,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.salsa6 != null &&
                                          _model.salsa6 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.salsa6,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.salsa7 != null &&
                                          _model.salsa7 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.salsa7,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            if (_model.bebidas == 'si')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: Container(
                                  width: 350.0,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 350.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (_model.mostrarBebidas ==
                                                      'no') {
                                                    _model.mostrarBebidas =
                                                        'si';
                                                    safeSetState(() {});
                                                  } else {
                                                    _model.mostrarBebidas =
                                                        'no';
                                                    safeSetState(() {});
                                                  }
                                                },
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6qu1blrw' /* Bebidas */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Container(
                                                    width: 100.0,
                                                    height: 32.0,
                                                    decoration: BoxDecoration(),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        if (_model
                                                                .mostrarBebidas ==
                                                            'y')
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
                                                              if (_model
                                                                      .mostrarBebidas ==
                                                                  'no') {
                                                                _model.mostrarBebidas =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.mostrarBebidas =
                                                                    'no';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_up_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        if (_model
                                                                .mostrarBebidas ==
                                                            'y')
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
                                                              if (_model
                                                                      .mostrarBebidas ==
                                                                  'no') {
                                                                _model.mostrarBebidas =
                                                                    'si';
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.mostrarBebidas =
                                                                    'no';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
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
                                      if (_model.bebidas1 != null &&
                                          _model.bebidas1 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.bebidas1,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.bebidas2 != null &&
                                          _model.bebidas2 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.bebidas2,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.bebidas3 != null &&
                                          _model.bebidas3 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.bebidas3,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.bebidas4 != null &&
                                          _model.bebidas4 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.bebidas4,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.bebidas5 != null &&
                                          _model.bebidas5 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.bebidas5,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.bebidas6 != null &&
                                          _model.bebidas6 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.bebidas6,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      if (_model.bebidas7 != null &&
                                          _model.bebidas7 != '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.bebidas7,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            if (ResumenDiarioCall.intoId(
                                  resumenResumenDiarioResponse.jsonBody,
                                )! >=
                                1)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '2hb1yf8k' /* Síntomas tras la ingesta */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            if ((_model.sintoma1 == null ||
                                    _model.sintoma1 == '') &&
                                (_model.sintoma2 == null ||
                                    _model.sintoma2 == '') &&
                                (_model.sintoma3 == null ||
                                    _model.sintoma3 == '') &&
                                (ResumenDiarioCall.intoId(
                                      resumenResumenDiarioResponse.jsonBody,
                                    )! >=
                                    1))
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'czua5f79' /* No has registrado síntomas */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            if (_model.bebidas == 'si')
                              Container(
                                width: 350.0,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (_model.sintoma1 != null &&
                                        _model.sintoma1 != '')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  3.0, 10.0, 0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              _model.sintoma1,
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if (_model.sintoma2 != null &&
                                        _model.sintoma2 != '')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  3.0, 5.0, 0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              _model.sintoma2,
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if (_model.sintoma3 != null &&
                                        _model.sintoma3 != '')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  3.0, 5.0, 0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              _model.sintoma3,
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ].addToEnd(SizedBox(height: 150.0)),
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.menuUsuarioModel,
                  updateCallback: () => safeSetState(() {}),
                  child: MenuUsuarioWidget(
                    index: 1,
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
