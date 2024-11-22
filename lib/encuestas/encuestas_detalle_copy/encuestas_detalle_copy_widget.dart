import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'encuestas_detalle_copy_model.dart';
export 'encuestas_detalle_copy_model.dart';

class EncuestasDetalleCopyWidget extends StatefulWidget {
  const EncuestasDetalleCopyWidget({
    super.key,
    required this.encuestaId,
    required this.titulo,
    required this.cantPreguntas,
  });

  final int? encuestaId;
  final String? titulo;
  final int? cantPreguntas;

  @override
  State<EncuestasDetalleCopyWidget> createState() =>
      _EncuestasDetalleCopyWidgetState();
}

class _EncuestasDetalleCopyWidgetState
    extends State<EncuestasDetalleCopyWidget> {
  late EncuestasDetalleCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EncuestasDetalleCopyModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).background,
            automaticallyImplyLeading: false,
            title: Text(
              FFLocalizations.of(context).getText(
                '3t6h0g89' /* Encuesta */,
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
                            10.0, 10.0, 10.0, 10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Text(
                                valueOrDefault<String>(
                                  widget!.titulo,
                                  '-',
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 18.0,
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
                            0.0, 10.0, 0.0, 10.0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: (_model.apiRequestCompleter1 ??=
                                  Completer<ApiCallResponse>()
                                    ..complete(EncuestaPreguntaCall.call(
                                      encuestaId: widget!.encuestaId,
                                      preguntaId:
                                          FFAppState().encuestaPreguntaActual,
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
                            final containerEncuestaPreguntaResponse =
                                snapshot.data!;

                            return Container(
                              width: 360.0,
                              decoration: BoxDecoration(),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              valueOrDefault<String>(
                                                FFLocalizations.of(context)
                                                            .languageCode ==
                                                        'en'
                                                    ? EncuestaPreguntaCall
                                                        .preguntaEn(
                                                        containerEncuestaPreguntaResponse
                                                            .jsonBody,
                                                      )
                                                    : EncuestaPreguntaCall
                                                        .pregunta(
                                                        containerEncuestaPreguntaResponse
                                                            .jsonBody,
                                                      ),
                                                '-',
                                              ),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 15.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              '( ${FFAppState().encuestaPreguntaActual.toString()}${FFLocalizations.of(context).languageCode == 'en' ? ' of ' : ' de '}${FFAppState().cantPreguntasEncuesta.toString()} )',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    if (EncuestaPreguntaCall.ctrlImagen(
                                          containerEncuestaPreguntaResponse
                                              .jsonBody,
                                        ) ==
                                        'si')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 25.0),
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
                                                  child:
                                                      FlutterFlowExpandedImageView(
                                                    image: Image.network(
                                                      EncuestaPreguntaCall
                                                          .imagen(
                                                        containerEncuestaPreguntaResponse
                                                            .jsonBody,
                                                      )!,
                                                      fit: BoxFit.contain,
                                                    ),
                                                    allowRotation: false,
                                                    tag: EncuestaPreguntaCall
                                                        .imagen(
                                                      containerEncuestaPreguntaResponse
                                                          .jsonBody,
                                                    )!,
                                                    useHeroAnimation: true,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Hero(
                                              tag: EncuestaPreguntaCall.imagen(
                                                containerEncuestaPreguntaResponse
                                                    .jsonBody,
                                              )!,
                                              transitionOnUserGestures: true,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  EncuestaPreguntaCall.imagen(
                                                    containerEncuestaPreguntaResponse
                                                        .jsonBody,
                                                  )!,
                                                  width: 300.0,
                                                  height: 200.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (EncuestaPreguntaCall.tipoPregunta(
                                          containerEncuestaPreguntaResponse
                                              .jsonBody,
                                        ) ==
                                        1)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Container(
                                                  width: 350.0,
                                                  child: TextFormField(
                                                    controller:
                                                        _model.textController,
                                                    focusNode: _model
                                                        .textFieldFocusNode,
                                                    onChanged: (_) =>
                                                        EasyDebounce.debounce(
                                                      '_model.textController',
                                                      Duration(
                                                          milliseconds: 50),
                                                      () => safeSetState(() {}),
                                                    ),
                                                    autofocus: false,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'ohchh5di' /* Respuesta */,
                                                      ),
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'ki11sjh8' /* Escribe tu respuesta... */,
                                                      ),
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                                fontStyle:
                                                                    FontStyle
                                                                        .italic,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      filled: true,
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    maxLines: null,
                                                    minLines: 1,
                                                    validator: _model
                                                        .textControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    if (EncuestaPreguntaCall.tipoPregunta(
                                          containerEncuestaPreguntaResponse
                                              .jsonBody,
                                        ) ==
                                        2)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: FutureBuilder<
                                                  ApiCallResponse>(
                                                future:
                                                    EncuestaDesplegableOpcionesCall
                                                        .call(
                                                  encuestaId:
                                                      widget!.encuestaId,
                                                  preguntaId: FFAppState()
                                                      .encuestaPreguntaActual,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child: SpinKitCircle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 50.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  final dropDownOpsEncuestaDesplegableOpcionesResponse =
                                                      snapshot.data!;

                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropDownOpsValueController ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options: FFLocalizations.of(
                                                                    context)
                                                                .languageCode ==
                                                            'en'
                                                        ? EncuestaDesplegableOpcionesCall
                                                            .textoEn(
                                                            dropDownOpsEncuestaDesplegableOpcionesResponse
                                                                .jsonBody,
                                                          )!
                                                        : EncuestaDesplegableOpcionesCall
                                                            .textoEs(
                                                            dropDownOpsEncuestaDesplegableOpcionesResponse
                                                                .jsonBody,
                                                          )!,
                                                    onChanged: (val) async {
                                                      safeSetState(() => _model
                                                              .dropDownOpsValue =
                                                          val);
                                                      _model.despOpciones =
                                                          _model
                                                              .dropDownOpsValue!;
                                                      safeSetState(() {});
                                                      FFAppState()
                                                          .contadorEncuesta = 1;
                                                      safeSetState(() {});
                                                    },
                                                    width: 350.0,
                                                    height: 56.0,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '2nh3wz88' /* Selecciona tu respuesta... */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
                                                    hidesUnderline: true,
                                                    isOverButton: true,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    if (EncuestaPreguntaCall.tipoPregunta(
                                          containerEncuestaPreguntaResponse
                                              .jsonBody,
                                        ) ==
                                        3)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 350.0,
                                              height: 117.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'nyp6l20d' /* Selecciona tu respuesta de 0 a... */,
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
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: 300.0,
                                                      child: Slider(
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        inactiveColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        min: 0.0,
                                                        max: 5.0,
                                                        value: _model
                                                                .sliderValue1 ??=
                                                            0.0,
                                                        label: _model
                                                            .sliderValue1
                                                            ?.toStringAsFixed(
                                                                0),
                                                        divisions: 5,
                                                        onChanged:
                                                            (newValue) async {
                                                          newValue = double
                                                              .parse(newValue
                                                                  .toStringAsFixed(
                                                                      0));
                                                          safeSetState(() =>
                                                              _model.sliderValue1 =
                                                                  newValue);
                                                          _model.desp5 = _model
                                                              .sliderValue1!;
                                                          safeSetState(() {});
                                                          FFAppState()
                                                              .contadorEncuesta = 1;
                                                          safeSetState(() {});
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        formatNumber(
                                                          _model.desp5,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '0',
                                                          locale: '',
                                                        ),
                                                        '0',
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    if (EncuestaPreguntaCall.tipoPregunta(
                                          containerEncuestaPreguntaResponse
                                              .jsonBody,
                                        ) ==
                                        4)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 350.0,
                                              height: 117.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'kxcnevry' /* Selecciona tu respuesta de 0 a... */,
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
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: 300.0,
                                                      child: Slider(
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        inactiveColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        min: 0.0,
                                                        max: 10.0,
                                                        value: _model
                                                                .sliderValue2 ??=
                                                            0.0,
                                                        label: _model
                                                            .sliderValue2
                                                            ?.toStringAsFixed(
                                                                0),
                                                        divisions: 10,
                                                        onChanged:
                                                            (newValue) async {
                                                          newValue = double
                                                              .parse(newValue
                                                                  .toStringAsFixed(
                                                                      0));
                                                          safeSetState(() =>
                                                              _model.sliderValue2 =
                                                                  newValue);
                                                          _model.desp10 = _model
                                                              .sliderValue2!;
                                                          safeSetState(() {});
                                                          FFAppState()
                                                              .contadorEncuesta = 1;
                                                          safeSetState(() {});
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        formatNumber(
                                                          _model.desp10,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '0',
                                                          locale: '',
                                                        ),
                                                        '0',
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    if (EncuestaPreguntaCall.tipoPregunta(
                                          containerEncuestaPreguntaResponse
                                              .jsonBody,
                                        ) !=
                                        1)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: (FFAppState()
                                                          .contadorEncuesta ==
                                                      0)
                                                  ? null
                                                  : () async {
                                                      _model.guardaRespuesta0 =
                                                          await EncuestaGuardaRespuestaCall
                                                              .call(
                                                        authToken: FFAppState()
                                                            .authToken,
                                                        encuestaId:
                                                            widget!.encuestaId,
                                                        preguntaId: FFAppState()
                                                            .encuestaPreguntaActual,
                                                        textoLibre: _model
                                                            .textController
                                                            .text,
                                                        pregunta:
                                                            EncuestaPreguntaCall
                                                                .pregunta(
                                                          containerEncuestaPreguntaResponse
                                                              .jsonBody,
                                                        ),
                                                        tipoPregunta:
                                                            EncuestaPreguntaCall
                                                                .tipoPregunta(
                                                          containerEncuestaPreguntaResponse
                                                              .jsonBody,
                                                        ),
                                                        despOpciones:
                                                            _model.despOpciones,
                                                        desp5: _model.desp5,
                                                        desp10: _model.desp10,
                                                      );

                                                      FFAppState()
                                                              .encuestaPreguntaActual =
                                                          FFAppState()
                                                                  .encuestaPreguntaActual +
                                                              1;
                                                      FFAppState()
                                                          .contadorEncuesta = 0;
                                                      safeSetState(() {});
                                                      _model.despOpciones = '-';
                                                      _model.desp5 = 0.0;
                                                      _model.desp10 = 0.0;
                                                      safeSetState(() {});
                                                      if (FFAppState()
                                                              .encuestaPreguntaActual >
                                                          FFAppState()
                                                              .cantPreguntasEncuesta) {
                                                        _model.apiResultt17 =
                                                            await EncuestaFinalizaCall
                                                                .call(
                                                          authToken:
                                                              FFAppState()
                                                                  .authToken,
                                                          encuestaId: widget!
                                                              .encuestaId,
                                                        );

                                                        context.pushNamed(
                                                          'encuestasFin',
                                                          queryParameters: {
                                                            'encuestaId':
                                                                serializeParam(
                                                              widget!
                                                                  .encuestaId,
                                                              ParamType.int,
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
                                                      } else {
                                                        safeSetState(() {
                                                          _model.textController
                                                              ?.clear();
                                                        });
                                                        safeSetState(() {
                                                          _model
                                                              .dropDownOpsValueController
                                                              ?.reset();
                                                        });
                                                        safeSetState(() => _model
                                                                .apiRequestCompleter1 =
                                                            null);
                                                        await _model
                                                            .waitForApiRequestCompleted1();
                                                        safeSetState(() {
                                                          _model.sliderValue1 =
                                                              0.0;
                                                        });
                                                        safeSetState(() {
                                                          _model.sliderValue2 =
                                                              0.0;
                                                        });
                                                      }

                                                      safeSetState(() {});
                                                    },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'fwcfawob' /* Siguiente */,
                                              ),
                                              options: FFButtonOptions(
                                                width: 300.0,
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                disabledColor:
                                                    FlutterFlowTheme.of(context)
                                                        .botonDesactivado,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    if (EncuestaPreguntaCall.tipoPregunta(
                                          containerEncuestaPreguntaResponse
                                              .jsonBody,
                                        ) ==
                                        1)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: (_model.textController
                                                              .text ==
                                                          null ||
                                                      _model.textController
                                                              .text ==
                                                          '')
                                                  ? null
                                                  : () async {
                                                      _model.guardaRespuesta1 =
                                                          await EncuestaGuardaRespuestaCall
                                                              .call(
                                                        authToken: FFAppState()
                                                            .authToken,
                                                        encuestaId:
                                                            widget!.encuestaId,
                                                        preguntaId: FFAppState()
                                                            .encuestaPreguntaActual,
                                                        textoLibre: _model
                                                            .textController
                                                            .text,
                                                        pregunta:
                                                            EncuestaPreguntaCall
                                                                .pregunta(
                                                          containerEncuestaPreguntaResponse
                                                              .jsonBody,
                                                        ),
                                                        tipoPregunta:
                                                            EncuestaPreguntaCall
                                                                .tipoPregunta(
                                                          containerEncuestaPreguntaResponse
                                                              .jsonBody,
                                                        ),
                                                        despOpciones:
                                                            _model.despOpciones,
                                                        desp5: _model.desp5,
                                                        desp10: _model.desp10,
                                                      );

                                                      FFAppState()
                                                              .encuestaPreguntaActual =
                                                          FFAppState()
                                                                  .encuestaPreguntaActual +
                                                              1;
                                                      FFAppState()
                                                          .contadorEncuesta = 0;
                                                      safeSetState(() {});
                                                      _model.despOpciones = '-';
                                                      _model.desp5 = 0.0;
                                                      _model.desp10 = 0.0;
                                                      safeSetState(() {});
                                                      if (FFAppState()
                                                              .encuestaPreguntaActual >
                                                          FFAppState()
                                                              .cantPreguntasEncuesta) {
                                                        _model.apiResultt17Copy =
                                                            await EncuestaFinalizaCall
                                                                .call(
                                                          authToken:
                                                              FFAppState()
                                                                  .authToken,
                                                          encuestaId: widget!
                                                              .encuestaId,
                                                        );

                                                        context.pushNamed(
                                                          'encuestasFin',
                                                          queryParameters: {
                                                            'encuestaId':
                                                                serializeParam(
                                                              widget!
                                                                  .encuestaId,
                                                              ParamType.int,
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
                                                      } else {
                                                        safeSetState(() {
                                                          _model.textController
                                                              ?.clear();
                                                        });
                                                        safeSetState(() {
                                                          _model
                                                              .dropDownOpsValueController
                                                              ?.reset();
                                                        });
                                                        safeSetState(() => _model
                                                                .apiRequestCompleter1 =
                                                            null);
                                                        await _model
                                                            .waitForApiRequestCompleted1();
                                                        safeSetState(() {
                                                          _model.sliderValue1 =
                                                              0.0;
                                                        });
                                                        safeSetState(() {
                                                          _model.sliderValue2 =
                                                              0.0;
                                                        });
                                                      }

                                                      safeSetState(() {});
                                                    },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'm3h7nro2' /* Siguiente */,
                                              ),
                                              options: FFButtonOptions(
                                                width: 300.0,
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
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
                                                disabledColor:
                                                    FlutterFlowTheme.of(context)
                                                        .botonDesactivado,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () async {
                                              _model.apiResultoj2 =
                                                  await EncuestasCancelaCall
                                                      .call(
                                                authToken:
                                                    FFAppState().authToken,
                                                encuestaId: widget!.encuestaId,
                                              );

                                              context.goNamed(
                                                'encuestas',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 0),
                                                  ),
                                                },
                                              );

                                              safeSetState(() {});
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'hcfojpmt' /* Cancelar */,
                                            ),
                                            options: FFButtonOptions(
                                              width: 300.0,
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
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
                                  ].addToEnd(SizedBox(height: 50.0)),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ].addToEnd(SizedBox(height: 100.0)),
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
