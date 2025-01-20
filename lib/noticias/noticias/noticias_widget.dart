import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'dart:ui';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'noticias_model.dart';
export 'noticias_model.dart';

class NoticiasWidget extends StatefulWidget {
  const NoticiasWidget({super.key});

  @override
  State<NoticiasWidget> createState() => _NoticiasWidgetState();
}

class _NoticiasWidgetState extends State<NoticiasWidget> {
  late NoticiasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoticiasModel());

    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        safeSetState(() {
          _isKeyboardVisible = visible;
        });
      });
    }

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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

                  return;
                } else {
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

                  return;
                }
              },
            ),
            title: Text(
              FFLocalizations.of(context).getText(
                'fsv72nfh' /* Noticias de salud */,
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
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width: 300.0,
                                        child: TextFormField(
                                          controller: _model.textController,
                                          focusNode: _model.textFieldFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.textController',
                                            Duration(milliseconds: 100),
                                            () => safeSetState(() {}),
                                          ),
                                          autofocus: false,
                                          textInputAction:
                                              TextInputAction.search,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'ofo5t1k9' /* Buscador */,
                                            ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      letterSpacing: 0.0,
                                                      fontStyle:
                                                          FontStyle.italic,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .rellenoCampo2,
                                            prefixIcon: Icon(
                                              Icons.search_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 26.0,
                                            ),
                                            suffixIcon: _model.textController!
                                                    .text.isNotEmpty
                                                ? InkWell(
                                                    onTap: () async {
                                                      _model.textController
                                                          ?.clear();
                                                      safeSetState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.clear,
                                                      size: 24.0,
                                                    ),
                                                  )
                                                : null,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                              ),
                                          validator: _model
                                              .textControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 1.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (_model.mostrarFiltro == 'no') {
                                          _model.mostrarFiltro = 'si';
                                          safeSetState(() {});
                                        } else {
                                          _model.mostrarFiltro = 'no';
                                          safeSetState(() {});
                                        }
                                      },
                                      child: Icon(
                                        Icons.filter_list,
                                        color: _model.mostrarFiltro == 'no'
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : FlutterFlowTheme.of(context)
                                                .secondary,
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (_model.mostrarFiltro == 'si')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 15.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FlutterFlowDropDown<String>(
                                      controller: _model
                                              .dropDownEnfermedadValueController ??=
                                          FormFieldController<String>(null),
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'to0vrvyf' /* COVID persistente */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'eop1hhnm' /* Encefalomielitis Miálgica */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '0rsbh20q' /* Fibromialgia */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'sj6tawuz' /* Enfermedad Autoinmune */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'soak2ec1' /* Intolerancias alimentarias */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ej9d96m0' /* Todas */,
                                        )
                                      ],
                                      onChanged: (val) async {
                                        safeSetState(() => _model
                                            .dropDownEnfermedadValue = val);
                                        _model.filtro =
                                            _model.dropDownEnfermedadValue!;
                                        safeSetState(() {});
                                        safeSetState(() =>
                                            _model.apiRequestCompleter = null);
                                        await _model
                                            .waitForApiRequestCompleted();
                                      },
                                      width: 345.0,
                                      height: 48.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'urot6y3q' /* Filtro por Enfermedad... */,
                                      ),
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      elevation: 2.0,
                                      borderColor: Colors.transparent,
                                      borderWidth: 2.0,
                                      borderRadius: 10.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  ],
                                ),
                              ),
                            if (_model.mostrarFiltro == 'si')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 15.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FutureBuilder<ApiCallResponse>(
                                      future: DespAutorNoticiasCall.call(
                                        privada: 'no',
                                      ),
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
                                        final dropDownAutorDespAutorNoticiasResponse =
                                            snapshot.data!;

                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownAutorValueController ??=
                                              FormFieldController<String>(null),
                                          options: DespAutorNoticiasCall.autor(
                                            dropDownAutorDespAutorNoticiasResponse
                                                .jsonBody,
                                          )!,
                                          onChanged: (val) async {
                                            safeSetState(() => _model
                                                .dropDownAutorValue = val);
                                            _model.autor =
                                                _model.dropDownAutorValue!;
                                            safeSetState(() {});
                                            safeSetState(() => _model
                                                .apiRequestCompleter = null);
                                            await _model
                                                .waitForApiRequestCompleted();
                                          },
                                          width: 345.0,
                                          height: 48.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            '7vvu8u5h' /* Filtro por Autor... */,
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
                                          borderColor: Colors.transparent,
                                          borderWidth: 2.0,
                                          borderRadius: 10.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            if (_model.mostrarFiltro == 'no')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed(
                                          'noticiasAso',
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
                                        'z9qj97jm' /* Ver noticias de Asociaciones */,
                                      ),
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
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
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            FutureBuilder<ApiCallResponse>(
                              future: (_model.apiRequestCompleter ??=
                                      Completer<ApiCallResponse>()
                                        ..complete(NoticiasCall.call(
                                          enfermedad: _model.filtro,
                                          palabra: _model.textController.text,
                                          autor: _model.autor,
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
                                final listViewNoticiasResponse = snapshot.data!;

                                return Builder(
                                  builder: (context) {
                                    final childNoticias = getJsonField(
                                      listViewNoticiasResponse.jsonBody,
                                      r'''$''',
                                    ).toList();

                                    return ListView.separated(
                                      padding: EdgeInsets.fromLTRB(
                                        0,
                                        0,
                                        0,
                                        90.0,
                                      ),
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: childNoticias.length,
                                      separatorBuilder: (_, __) =>
                                          SizedBox(height: 15.0),
                                      itemBuilder:
                                          (context, childNoticiasIndex) {
                                        final childNoticiasItem =
                                            childNoticias[childNoticiasIndex];
                                        return Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 4.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Container(
                                              width: 345.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
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
                                                      context.pushNamed(
                                                        'noticiasDetalleNew',
                                                        queryParameters: {
                                                          'noticiasId':
                                                              serializeParam(
                                                            getJsonField(
                                                              childNoticiasItem,
                                                              r'''$.id''',
                                                            ),
                                                            ParamType.int,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                          ),
                                                        },
                                                      );
                                                    },
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, -0.6),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                              child:
                                                                  Image.network(
                                                                getJsonField(
                                                                  childNoticiasItem,
                                                                  r'''$.imagen.url''',
                                                                ).toString(),
                                                                width: 123.0,
                                                                height: 69.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Flexible(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          5.0,
                                                                          5.0,
                                                                          0.0),
                                                              child: Text(
                                                                FFLocalizations.of(context)
                                                                            .languageCode ==
                                                                        'en'
                                                                    ? getJsonField(
                                                                        childNoticiasItem,
                                                                        r'''$.titulo_en''',
                                                                      ).toString()
                                                                    : getJsonField(
                                                                        childNoticiasItem,
                                                                        r'''$.titulo''',
                                                                      ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                maxLines: 3,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .azulPerm,
                                                                      fontSize:
                                                                          17.0,
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
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 3.0,
                                                                5.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Flexible(
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
                                                              context.pushNamed(
                                                                'noticiasDetalleNew',
                                                                queryParameters:
                                                                    {
                                                                  'noticiasId':
                                                                      serializeParam(
                                                                    getJsonField(
                                                                      childNoticiasItem,
                                                                      r'''$.id''',
                                                                    ),
                                                                    ParamType
                                                                        .int,
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
                                                            },
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                              context)
                                                                          .languageCode ==
                                                                      'en'
                                                                  ? getJsonField(
                                                                      childNoticiasItem,
                                                                      r'''$.descripcion_en''',
                                                                    ).toString()
                                                                  : getJsonField(
                                                                      childNoticiasItem,
                                                                      r'''$.descripcion''',
                                                                    ).toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .negroPerm,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                5.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            '${getJsonField(
                                                              childNoticiasItem,
                                                              r'''$._likes_noticias_of_noticias''',
                                                            ).toString()} Me gusta',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            '${getJsonField(
                                                              childNoticiasItem,
                                                              r'''$._comentarios_noticias_of_noticias''',
                                                            ).toString()} Comentarios',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                      ],
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
                          ].addToEnd(SizedBox(height: 50.0)),
                        ),
                      ),
                    ),
                  ),
                  if (FFAppState().perfilId != 1)
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                var _shouldSetState = false;
                                _model.apiCreaNews =
                                    await EmpresaCreaNoticiaCall.call(
                                  authToken: FFAppState().authToken,
                                );

                                _shouldSetState = true;
                                if ((_model.apiCreaNews?.succeeded ?? true)) {
                                  FFAppState().noticiaId =
                                      EmpresaCreaNoticiaCall.id(
                                    (_model.apiCreaNews?.jsonBody ?? ''),
                                  )!;
                                  FFAppState().textES = '';
                                  FFAppState().textEN = '';
                                  safeSetState(() {});

                                  context.pushNamed(
                                    'noticiasCreaNew',
                                    queryParameters: {
                                      'noticiaId': serializeParam(
                                        EmpresaCreaNoticiaCall.id(
                                          (_model.apiCreaNews?.jsonBody ?? ''),
                                        ),
                                        ParamType.int,
                                      ),
                                      'edita': serializeParam(
                                        'no',
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
                                        transitionType: PageTransitionType.fade,
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
                                '1v5seaqm' /* Crear Nueva Noticia */,
                              ),
                              options: FFButtonOptions(
                                width: 300.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).secondary,
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
                    ),
                ].addToEnd(SizedBox(height: 100.0)),
              ),
              if (!(isWeb
                  ? MediaQuery.viewInsetsOf(context).bottom > 0
                  : _isKeyboardVisible))
                wrapWithModel(
                  model: _model.menuUsuarioModel,
                  updateCallback: () => safeSetState(() {}),
                  child: MenuUsuarioWidget(
                    index: 0,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
