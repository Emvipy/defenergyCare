import '/backend/api_requests/api_calls.dart';
import '/empresa_encuestas/modal_add_opcion/modal_add_opcion_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'emp_crea_edita_pregunta_model.dart';
export 'emp_crea_edita_pregunta_model.dart';

class EmpCreaEditaPreguntaWidget extends StatefulWidget {
  const EmpCreaEditaPreguntaWidget({super.key});

  @override
  State<EmpCreaEditaPreguntaWidget> createState() =>
      _EmpCreaEditaPreguntaWidgetState();
}

class _EmpCreaEditaPreguntaWidgetState
    extends State<EmpCreaEditaPreguntaWidget> {
  late EmpCreaEditaPreguntaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmpCreaEditaPreguntaModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiCargaPregunta = await EmpresaImagenPreguntaCall.call(
        preguntaId: FFAppState().nuevaPreguntaId,
      );

      if ((_model.apiCargaPregunta?.succeeded ?? true)) {
        _model.tipo = EmpresaImagenPreguntaCall.tipoPregunta(
          (_model.apiCargaPregunta?.jsonBody ?? ''),
        )!;
        safeSetState(() {});
      }
    });

    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        safeSetState(() {
          _isKeyboardVisible = visible;
        });
      });
    }

    _model.pregEsFocusNode ??= FocusNode();

    _model.pregEnFocusNode ??= FocusNode();
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

    return FutureBuilder<ApiCallResponse>(
      future: EmpresaImagenPreguntaCall.call(
        preguntaId: FFAppState().nuevaPreguntaId,
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
        final empCreaEditaPreguntaEmpresaImagenPreguntaResponse =
            snapshot.data!;

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
                    'emp_crea_encuesta2',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                      ),
                    },
                  );
                },
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'exw7x1fw' /* Encuestas */,
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
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'my5onai0' /* Editar pregunta */,
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
                          ],
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: SizedBox(
                          width: 350.0,
                          child: TextFormField(
                            controller: _model.pregEsTextController ??=
                                TextEditingController(
                              text: EmpresaImagenPreguntaCall.preguntaEs(
                                empCreaEditaPreguntaEmpresaImagenPreguntaResponse
                                    .jsonBody,
                              ),
                            ),
                            focusNode: _model.pregEsFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.pregEsTextController',
                              const Duration(milliseconds: 100),
                              () => safeSetState(() {}),
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelText: FFLocalizations.of(context).getText(
                                '905d0kri' /* Pregunta en Español */,
                              ),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model.pregEsTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: SizedBox(
                            width: 350.0,
                            child: TextFormField(
                              controller: _model.pregEnTextController ??=
                                  TextEditingController(
                                text: EmpresaImagenPreguntaCall.preguntaEn(
                                  empCreaEditaPreguntaEmpresaImagenPreguntaResponse
                                      .jsonBody,
                                ),
                              ),
                              focusNode: _model.pregEnFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.pregEnTextController',
                                const Duration(milliseconds: 100),
                                () => safeSetState(() {}),
                              ),
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                labelText:
                                    FFLocalizations.of(context).getText(
                                  'm7o1bndi' /* Pregunta en Inglés */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model.pregEnTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Container(
                            width: 350.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'm7pypx92' /* Selecciona el tipo de respuest... */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme.of(
                                                        context)
                                                    .primary,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 5.0, 10.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FlutterFlowDropDown<int>(
                                        controller:
                                            _model.dropDownValueController ??=
                                                FormFieldController<int>(
                                          _model.dropDownValue ??=
                                              EmpresaImagenPreguntaCall
                                                  .tipoPregunta(
                                            empCreaEditaPreguntaEmpresaImagenPreguntaResponse
                                                .jsonBody,
                                          ),
                                        ),
                                        options: List<int>.from([1, 2, 3, 4]),
                                        optionLabels: [
                                          FFLocalizations.of(context).getText(
                                            'vh35j9d3' /* Texto libre */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '5zf8jyfd' /* Desplegable con opciones */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '6psqkd2i' /* Escala de 0 a 5 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'odq4p4lk' /* Escala de 0 a 10 */,
                                          )
                                        ],
                                        onChanged: (val) async {
                                          safeSetState(() =>
                                              _model.dropDownValue = val);
                                          _model.tipo = _model.dropDownValue!;
                                          safeSetState(() {});
                                        },
                                        width: 340.0,
                                        height: 40.0,
                                        textStyle:
                                            FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                        hintText: FFLocalizations.of(context)
                                            .getText(
                                          'lbsaywum' /* Selecciona la opción */,
                                        ),
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
                                        ),
                                        fillColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        borderWidth: 2.0,
                                        borderRadius: 8.0,
                                        margin:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                12.0, 0.0, 12.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: false,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      if (_model.tipo == 2)
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: Container(
                              width: 350.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        5.0, 5.0, 5.0, 2.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            FFLocalizations.of(context)
                                                .getText(
                                              'licvga01' /* Crea las opciones de respuesta... */,
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
                                                      letterSpacing: 0.0,
                                                    ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 5.0, 5.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            FFLocalizations.of(context)
                                                .getText(
                                              'wlwjeaxb' /* Las opciones se mostrarán en o... */,
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
                                                              .alternate,
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  FutureBuilder<ApiCallResponse>(
                                    future: (_model.apiRequestCompleter ??=
                                            Completer<ApiCallResponse>()
                                              ..complete(
                                                  EmpresaListadoOpcionesCall
                                                      .call(
                                                preguntaId: FFAppState()
                                                    .nuevaPreguntaId,
                                                encuestaId: FFAppState()
                                                    .nuevaEncuestaId,
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 50.0,
                                            ),
                                          ),
                                        );
                                      }
                                      final listViewEmpresaListadoOpcionesResponse =
                                          snapshot.data!;

                                      return Builder(
                                        builder: (context) {
                                          final childOpciones = getJsonField(
                                            listViewEmpresaListadoOpcionesResponse
                                                .jsonBody,
                                            r'''$''',
                                          ).toList();

                                          return ListView.separated(
                                            padding: const EdgeInsets.fromLTRB(
                                              0,
                                              0,
                                              0,
                                              10.0,
                                            ),
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: childOpciones.length,
                                            separatorBuilder: (_, __) =>
                                                const SizedBox(height: 10.0),
                                            itemBuilder: (context,
                                                childOpcionesIndex) {
                                              final childOpcionesItem =
                                                  childOpciones[
                                                      childOpcionesIndex];
                                              return Align(
                                                alignment:
                                                    const AlignmentDirectional(
                                                        0.0, 0.0),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 1.0),
                                                  child: Container(
                                                    width: 340.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          const Color(0x8063A4DC),
                                                      borderRadius:
                                                          BorderRadius
                                                              .circular(10.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  10.0,
                                                                  5.0,
                                                                  10.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                            context)
                                                                        .languageCode ==
                                                                    'en'
                                                                ? getJsonField(
                                                                    childOpcionesItem,
                                                                    r'''$.texto_en''',
                                                                  ).toString()
                                                                : getJsonField(
                                                                    childOpcionesItem,
                                                                    r'''$.texto''',
                                                                  ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          Flexible(
                                                            child: Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      1.0,
                                                                      0.0),
                                                              child: InkWell(
                                                                splashColor:
                                                                    Colors
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
                                                                  _model.apiResultt7e =
                                                                      await EmpresaBorraOpcionEncuestaCall
                                                                          .call(
                                                                    opcionId:
                                                                        getJsonField(
                                                                      childOpcionesItem,
                                                                      r'''$.id''',
                                                                    ),
                                                                  );

                                                                  if ((_model
                                                                          .apiResultt7e
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    safeSetState(() =>
                                                                        _model.apiRequestCompleter =
                                                                            null);
                                                                    await _model
                                                                        .waitForApiRequestCompleted();
                                                                    FFAppState()
                                                                            .contadorOpcionesEncuestas =
                                                                        FFAppState().contadorOpcionesEncuestas +
                                                                            -1;
                                                                    safeSetState(
                                                                        () {});
                                                                  }

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child: Icon(
                                                                  Icons
                                                                      .delete_forever,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 24.0,
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
                                            },
                                          );
                                        },
                                      );
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return GestureDetector(
                                                  onTap: () =>
                                                      FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding: MediaQuery
                                                        .viewInsetsOf(
                                                            context),
                                                    child:
                                                        ModalAddOpcionWidget(
                                                      numPreg:
                                                          EmpresaImagenPreguntaCall
                                                              .numPregunta(
                                                        empCreaEditaPreguntaEmpresaImagenPreguntaResponse
                                                            .jsonBody,
                                                      )!,
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then((value) =>
                                                safeSetState(() {}));
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            '3r8gd58z' /* Agregar Opción al desplegable */,
                                          ),
                                          options: FFButtonOptions(
                                            width: 300.0,
                                            height: 40.0,
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            iconPadding: const EdgeInsetsDirectional
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
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Container(
                            width: 350.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 10.0),
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(8.0),
                                      child: Image.network(
                                        EmpresaImagenPreguntaCall.imagen(
                                          empCreaEditaPreguntaEmpresaImagenPreguntaResponse
                                              .jsonBody,
                                        )!,
                                        width: 300.0,
                                        height: 200.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 20.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          final selectedMedia =
                                              await selectMediaWithSourceBottomSheet(
                                            context: context,
                                            maxWidth: 900.00,
                                            maxHeight: 600.00,
                                            allowPhoto: true,
                                          );
                                          if (selectedMedia != null &&
                                              selectedMedia.every((m) =>
                                                  validateFileFormat(
                                                      m.storagePath,
                                                      context))) {
                                            safeSetState(() => _model
                                                .isDataUploading = true);
                                            var selectedUploadedFiles =
                                                <FFUploadedFile>[];

                                            try {
                                              selectedUploadedFiles =
                                                  selectedMedia
                                                      .map((m) =>
                                                          FFUploadedFile(
                                                            name: m
                                                                .storagePath
                                                                .split('/')
                                                                .last,
                                                            bytes: m.bytes,
                                                            height: m
                                                                .dimensions
                                                                ?.height,
                                                            width: m
                                                                .dimensions
                                                                ?.width,
                                                            blurHash:
                                                                m.blurHash,
                                                          ))
                                                      .toList();
                                            } finally {
                                              _model.isDataUploading = false;
                                            }
                                            if (selectedUploadedFiles
                                                    .length ==
                                                selectedMedia.length) {
                                              safeSetState(() {
                                                _model.uploadedLocalFile =
                                                    selectedUploadedFiles
                                                        .first;
                                              });
                                            } else {
                                              safeSetState(() {});
                                              return;
                                            }
                                          }

                                          _model.apiResultg9x =
                                              await EmpresasubeFotoEncuestaCall
                                                  .call(
                                            img: _model.uploadedLocalFile,
                                            preguntaId:
                                                FFAppState().nuevaPreguntaId,
                                            authToken: FFAppState().authToken,
                                          );

                                          if ((_model
                                                  .apiResultg9x?.succeeded ??
                                              true)) {
                                            context.pushNamed(
                                              'emp_crea_edita_pregunta',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration: Duration(
                                                      milliseconds: 0),
                                                ),
                                              },
                                            );
                                          }

                                          safeSetState(() {});
                                        },
                                        child: Icon(
                                          Icons.file_upload_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .azulPerm,
                                          size: 30.0,
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.apiResultwhi =
                                              await EmpresaBorraImagenEncuestaCall
                                                  .call(
                                            preguntaId:
                                                FFAppState().nuevaPreguntaId,
                                          );

                                          if ((_model
                                                  .apiResultwhi?.succeeded ??
                                              true)) {
                                            context.pushNamed(
                                              'emp_crea_edita_pregunta',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration: Duration(
                                                      milliseconds: 0),
                                                ),
                                              },
                                            );
                                          }

                                          safeSetState(() {});
                                        },
                                        child: Icon(
                                          Icons.delete_forever,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          size: 30.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 15.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                _model.apiResultywt =
                                    await EmpresaBorraPreguntaCall.call(
                                  authToken: FFAppState().authToken,
                                  preguntaId: FFAppState().nuevaPreguntaId,
                                  encuestaId: FFAppState().nuevaEncuestaId,
                                );

                                if ((_model.apiResultywt?.succeeded ??
                                    true)) {
                                  FFAppState().nuevaPreguntaId = 0;
                                  safeSetState(() {});

                                  context.pushNamed(
                                    'emp_crea_encuesta2',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.fade,
                                      ),
                                    },
                                  );
                                }

                                safeSetState(() {});
                              },
                              text: FFLocalizations.of(context).getText(
                                'lm0f5s19' /* Eliminar Pregunta */,
                              ),
                              options: FFButtonOptions(
                                width: 300.0,
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).error,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      if ((_model.tipo == 2) &&
                          (_model.pregEsTextController.text != '') &&
                          (_model.pregEnTextController.text != ''))
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  _model.apiResulta09 =
                                      await EmpresaEditaPreguntaCall.call(
                                    authToken: FFAppState().authToken,
                                    preguntaId: FFAppState().nuevaPreguntaId,
                                    encuestaId: FFAppState().nuevaEncuestaId,
                                    preguntaEs:
                                        _model.pregEsTextController.text,
                                    preguntaEn:
                                        _model.pregEnTextController.text,
                                    tipoRespuesta: _model.tipo,
                                  );

                                  if ((_model.apiResulta09?.succeeded ??
                                      true)) {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Pregunta guardada!',
                                          style: TextStyle(
                                            color:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                        ),
                                        duration:
                                            const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .success,
                                      ),
                                    );
                                    FFAppState().nuevaPreguntaId = 0;
                                    safeSetState(() {});

                                    context.pushNamed(
                                      'emp_crea_encuesta2',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                        ),
                                      },
                                    );
                                  }

                                  safeSetState(() {});
                                },
                                text: FFLocalizations.of(context).getText(
                                  'y24dbx4b' /* Guardar */,
                                ),
                                options: FFButtonOptions(
                                  width: 300.0,
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
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
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if ((_model.tipo != 2) &&
                          (_model.pregEsTextController.text != '') &&
                          (_model.pregEnTextController.text != ''))
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  _model.apiResulta092 =
                                      await EmpresaEditaPreguntaCall.call(
                                    authToken: FFAppState().authToken,
                                    preguntaId: FFAppState().nuevaPreguntaId,
                                    encuestaId: FFAppState().nuevaEncuestaId,
                                    preguntaEs:
                                        _model.pregEsTextController.text,
                                    preguntaEn:
                                        _model.pregEnTextController.text,
                                    tipoRespuesta: _model.tipo,
                                  );

                                  if ((_model.apiResulta092?.succeeded ??
                                      true)) {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Pregunta guardada!',
                                          style: TextStyle(
                                            color:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                        ),
                                        duration:
                                            const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .success,
                                      ),
                                    );
                                    FFAppState().nuevaPreguntaId = 0;
                                    safeSetState(() {});

                                    context.pushNamed(
                                      'emp_crea_encuesta2',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                        ),
                                      },
                                    );
                                  }

                                  safeSetState(() {});
                                },
                                text: FFLocalizations.of(context).getText(
                                  'hh0fkh45' /* Guardar */,
                                ),
                                options: FFButtonOptions(
                                  width: 300.0,
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
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
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ].addToEnd(const SizedBox(height: 150.0)),
                  ),
                ),
                if (!(isWeb
                    ? MediaQuery.viewInsetsOf(context).bottom > 0
                    : _isKeyboardVisible))
                  wrapWithModel(
                    model: _model.menuUsuarioModel,
                    updateCallback: () => safeSetState(() {}),
                    child: const MenuUsuarioWidget(
                      index: 2,
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
