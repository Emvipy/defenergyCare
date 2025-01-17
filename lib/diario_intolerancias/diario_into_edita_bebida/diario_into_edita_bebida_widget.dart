import '/backend/api_requests/api_calls.dart';
import '/diario_intolerancias/modal_elimina_plato/modal_elimina_plato_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'diario_into_edita_bebida_model.dart';
export 'diario_into_edita_bebida_model.dart';

class DiarioIntoEditaBebidaWidget extends StatefulWidget {
  const DiarioIntoEditaBebidaWidget({
    super.key,
    required this.id,
    required this.nombre,
  });

  final int? id;
  final String? nombre;

  @override
  State<DiarioIntoEditaBebidaWidget> createState() =>
      _DiarioIntoEditaBebidaWidgetState();
}

class _DiarioIntoEditaBebidaWidgetState
    extends State<DiarioIntoEditaBebidaWidget> {
  late DiarioIntoEditaBebidaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiarioIntoEditaBebidaModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiCargaPlatoBebida =
          await IntoleranciaCargaPlatoIndividualCall.call(
        id: widget!.id,
      );

      if ((_model.apiCargaPlatoBebida?.succeeded ?? true)) {
        _model.bebida1 = IntoleranciaCargaPlatoIndividualCall.bebidas1(
          (_model.apiCargaPlatoBebida?.jsonBody ?? ''),
        );
        _model.bebida2 = IntoleranciaCargaPlatoIndividualCall.bebidas2(
          (_model.apiCargaPlatoBebida?.jsonBody ?? ''),
        );
        _model.bebida3 = IntoleranciaCargaPlatoIndividualCall.bebidas3(
          (_model.apiCargaPlatoBebida?.jsonBody ?? ''),
        );
        _model.bebida4 = IntoleranciaCargaPlatoIndividualCall.bebidas4(
          (_model.apiCargaPlatoBebida?.jsonBody ?? ''),
        );
        _model.bebida5 = IntoleranciaCargaPlatoIndividualCall.bebidas5(
          (_model.apiCargaPlatoBebida?.jsonBody ?? ''),
        );
        _model.bebida6 = IntoleranciaCargaPlatoIndividualCall.bebidas6(
          (_model.apiCargaPlatoBebida?.jsonBody ?? ''),
        );
        _model.bebida7 = IntoleranciaCargaPlatoIndividualCall.bebidas7(
          (_model.apiCargaPlatoBebida?.jsonBody ?? ''),
        );
        _model.mostrarBebidas = IntoleranciaCargaPlatoIndividualCall.bebidas(
          (_model.apiCargaPlatoBebida?.jsonBody ?? ''),
        )!;
        _model.nombrePlato = IntoleranciaCargaPlatoIndividualCall.nombre(
          (_model.apiCargaPlatoBebida?.jsonBody ?? ''),
        );
        safeSetState(() {});
        return;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Error...',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).error,
          ),
        );
        return;
      }
    });

    _model.textFieldNameTextController ??=
        TextEditingController(text: widget!.nombre);
    _model.textFieldNameFocusNode ??= FocusNode();
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
                context.pushNamed(
                  'diario_Into1',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                    ),
                  },
                );
              },
            ),
            title: Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'vl33qisd' /* Diario de Intolerancias */,
                ),
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
          body: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    valueOrDefault<String>(
                                      _model.bebida1,
                                      '-',
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 15.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: 350.0,
                                      child: TextFormField(
                                        controller:
                                            _model.textFieldNameTextController,
                                        focusNode:
                                            _model.textFieldNameFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.textFieldNameTextController',
                                          Duration(milliseconds: 100),
                                          () => safeSetState(() {}),
                                        ),
                                        autofocus: false,
                                        textCapitalization:
                                            TextCapitalization.sentences,
                                        textInputAction: TextInputAction.done,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'yt7sa1dl' /* Nombre del plato */,
                                          ),
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'femddogw' /* Indica un nombre para el plato... */,
                                          ),
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.0,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        validator: _model
                                            .textFieldNameTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 20.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '02he9d4b' /* Selecciona las bebidas */,
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 1.0, 10.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Container(
                                      width: 350.0,
                                      height: 41.0,
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
                                                if (_model.mostrarBebidas ==
                                                    'no') {
                                                  _model.mostrarBebidas = 'si';
                                                  safeSetState(() {});
                                                  return;
                                                } else {
                                                  _model.mostrarBebidas = 'no';
                                                  safeSetState(() {});
                                                  return;
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'o32fpkec' /* Bebidas */,
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
                                                      if (_model
                                                              .mostrarBebidas ==
                                                          'si')
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
                                                                    .mostrarBebidas ==
                                                                'no') {
                                                              _model.mostrarBebidas =
                                                                  'si';
                                                              safeSetState(
                                                                  () {});
                                                              return;
                                                            } else {
                                                              _model.mostrarBebidas =
                                                                  'no';
                                                              safeSetState(
                                                                  () {});
                                                              return;
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
                                                          'no')
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
                                                                    .mostrarBebidas ==
                                                                'no') {
                                                              _model.mostrarBebidas =
                                                                  'si';
                                                              safeSetState(
                                                                  () {});
                                                              return;
                                                            } else {
                                                              _model.mostrarBebidas =
                                                                  'no';
                                                              safeSetState(
                                                                  () {});
                                                              return;
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
                                  ),
                                  if (_model.mostrarBebidas == 'si')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 10.0, 15.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 10.0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropBebidas1ValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropBebidas1Value ??=
                                                          _model.bebida1,
                                                    ),
                                                    options: FFLocalizations.of(
                                                                    context)
                                                                .languageCode ==
                                                            'es'
                                                        ? FFAppState()
                                                            .despBebidas
                                                            .map((e) =>
                                                                getJsonField(
                                                                  e,
                                                                  r'''$.comida''',
                                                                ))
                                                            .toList()
                                                            .map((e) =>
                                                                e.toString())
                                                            .toList()
                                                        : FFAppState()
                                                            .despBebidas
                                                            .map((e) =>
                                                                getJsonField(
                                                                  e,
                                                                  r'''$.en''',
                                                                ))
                                                            .toList()
                                                            .map((e) =>
                                                                e.toString())
                                                            .toList(),
                                                    onChanged: (val) async {
                                                      safeSetState(() => _model
                                                              .dropBebidas1Value =
                                                          val);
                                                      _model.bebida1 = _model
                                                          .dropBebidas1Value;
                                                      _model.contador =
                                                          _model.contador + 1;
                                                      safeSetState(() {});
                                                    },
                                                    width: 350.0,
                                                    height: 50.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    searchTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
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
                                                      'nbpxh0a3' /* Selecciona tu respuesta */,
                                                    ),
                                                    searchHintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'd21datg7' /* Buscador... */,
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
                                                    isOverButton: false,
                                                    isSearchable: true,
                                                    isMultiSelect: false,
                                                  ),
                                                ),
                                                if ((_model.dropBebidas1Value !=
                                                            null &&
                                                        _model.dropBebidas1Value !=
                                                            '') &&
                                                    (_model.dropBebidas1Value !=
                                                        'No he bebido nada más') &&
                                                    (_model.dropBebidas1Value !=
                                                        'I haven\'t drunk anything else'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropBebidas2ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropBebidas2Value ??=
                                                            _model.bebida2,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despBebidas
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.comida''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList()
                                                          : FFAppState()
                                                              .despBebidas
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.en''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList(),
                                                      onChanged: (val) async {
                                                        safeSetState(() => _model
                                                                .dropBebidas2Value =
                                                            val);
                                                        _model.bebida2 = _model
                                                            .dropBebidas2Value;
                                                        safeSetState(() {});
                                                      },
                                                      width: 350.0,
                                                      height: 50.0,
                                                      searchHintTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      searchTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'ynow10nm' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'huipzkta' /* Buscador... */,
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
                                                              .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: true,
                                                      isMultiSelect: false,
                                                    ),
                                                  ),
                                                if ((_model.dropBebidas2Value !=
                                                            null &&
                                                        _model.dropBebidas2Value !=
                                                            '') &&
                                                    (_model.dropBebidas2Value !=
                                                        'No he bebido nada más') &&
                                                    (_model.dropBebidas2Value !=
                                                        'I haven\'t drunk anything else'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropBebidas3ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropBebidas3Value ??=
                                                            _model.bebida3,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despBebidas
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.comida''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList()
                                                          : FFAppState()
                                                              .despBebidas
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.en''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList(),
                                                      onChanged: (val) async {
                                                        safeSetState(() => _model
                                                                .dropBebidas3Value =
                                                            val);
                                                        _model.bebida3 = _model
                                                            .dropBebidas3Value;
                                                        safeSetState(() {});
                                                      },
                                                      width: 350.0,
                                                      height: 50.0,
                                                      searchHintTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      searchTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'qdry7u8h' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'wxesktg6' /* Buscador... */,
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
                                                              .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: true,
                                                      isMultiSelect: false,
                                                    ),
                                                  ),
                                                if ((_model.dropBebidas3Value !=
                                                            null &&
                                                        _model.dropBebidas3Value !=
                                                            '') &&
                                                    (_model.dropBebidas3Value !=
                                                        'No he bebido nada más') &&
                                                    (_model.dropBebidas3Value !=
                                                        'I haven\'t drunk anything else'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropBebidas4ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropBebidas4Value ??=
                                                            _model.bebida4,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despBebidas
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.comida''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList()
                                                          : FFAppState()
                                                              .despBebidas
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.en''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList(),
                                                      onChanged: (val) async {
                                                        safeSetState(() => _model
                                                                .dropBebidas4Value =
                                                            val);
                                                        _model.bebida4 = _model
                                                            .dropBebidas4Value;
                                                        safeSetState(() {});
                                                      },
                                                      width: 350.0,
                                                      height: 50.0,
                                                      searchHintTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      searchTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'q0tq7meh' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '15r2pcwx' /* Buscador... */,
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
                                                              .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: true,
                                                      isMultiSelect: false,
                                                    ),
                                                  ),
                                                if ((_model.dropBebidas4Value !=
                                                            null &&
                                                        _model.dropBebidas4Value !=
                                                            '') &&
                                                    (_model.dropBebidas4Value !=
                                                        'No he bebido nada más') &&
                                                    (_model.dropBebidas4Value !=
                                                        'I haven\'t drunk anything else'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropBebidas5ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropBebidas5Value ??=
                                                            _model.bebida5,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despBebidas
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.comida''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList()
                                                          : FFAppState()
                                                              .despBebidas
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.en''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList(),
                                                      onChanged: (val) async {
                                                        safeSetState(() => _model
                                                                .dropBebidas5Value =
                                                            val);
                                                        _model.bebida5 = _model
                                                            .dropBebidas5Value;
                                                        safeSetState(() {});
                                                      },
                                                      width: 350.0,
                                                      height: 50.0,
                                                      searchHintTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      searchTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '7f9zasda' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'novefcsv' /* Buscador... */,
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
                                                              .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: true,
                                                      isMultiSelect: false,
                                                    ),
                                                  ),
                                                if ((_model.dropBebidas5Value !=
                                                            null &&
                                                        _model.dropBebidas5Value !=
                                                            '') &&
                                                    (_model.dropBebidas5Value !=
                                                        'No he bebido nada más') &&
                                                    (_model.dropBebidas5Value !=
                                                        'I haven\'t drunk anything else'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropBebidas6ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropBebidas6Value ??=
                                                            _model.bebida6,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despBebidas
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.comida''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList()
                                                          : FFAppState()
                                                              .despBebidas
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.en''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList(),
                                                      onChanged: (val) async {
                                                        safeSetState(() => _model
                                                                .dropBebidas6Value =
                                                            val);
                                                        _model.bebida6 = _model
                                                            .dropBebidas6Value;
                                                        safeSetState(() {});
                                                      },
                                                      width: 350.0,
                                                      height: 50.0,
                                                      searchHintTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      searchTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '57g482ow' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'asef5m6v' /* Buscador... */,
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
                                                              .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: true,
                                                      isMultiSelect: false,
                                                    ),
                                                  ),
                                                if ((_model.dropBebidas6Value !=
                                                            null &&
                                                        _model.dropBebidas6Value !=
                                                            '') &&
                                                    (_model.dropBebidas6Value !=
                                                        'No he bebido nada más') &&
                                                    (_model.dropBebidas6Value !=
                                                        'I haven\'t drunk anything else'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropBebidas7ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropBebidas7Value ??=
                                                            _model.bebida7,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despBebidas
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.comida''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList()
                                                          : FFAppState()
                                                              .despBebidas
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.en''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList(),
                                                      onChanged: (val) async {
                                                        safeSetState(() => _model
                                                                .dropBebidas7Value =
                                                            val);
                                                        _model.bebida7 = _model
                                                            .dropBebidas7Value;
                                                        safeSetState(() {});
                                                      },
                                                      width: 350.0,
                                                      height: 50.0,
                                                      searchHintTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      searchTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'tutlll4c' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'ypiuiqln' /* Buscador... */,
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
                                                              .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: true,
                                                      isMultiSelect: false,
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
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: (_model.textFieldNameTextController
                                                  .text ==
                                              null ||
                                          _model.textFieldNameTextController
                                                  .text ==
                                              '')
                                      ? null
                                      : () async {
                                          var _shouldSetState = false;
                                          _model.apiEditaBebida =
                                              await IntoleranciasPlatosCall
                                                  .call(
                                            accion: 'editar',
                                            id: widget!.id,
                                            nombre: _model
                                                .textFieldNameTextController
                                                .text,
                                            tipoTxt: 'comidas',
                                            tipoId: 1,
                                            bebidas: _model.bebida1 != null &&
                                                    _model.bebida1 != ''
                                                ? 'si'
                                                : 'no',
                                            bebidas1: _model.bebida1,
                                            bebidas2: _model.bebida2,
                                            bebidas3: _model.bebida3,
                                            bebidas4: _model.bebida4,
                                            bebidas5: _model.bebida5,
                                            bebidas6: _model.bebida6,
                                            bebidas7: _model.bebida7,
                                            authToken: FFAppState().authToken,
                                          );

                                          _shouldSetState = true;
                                          if ((_model
                                                  .apiEditaBebida?.succeeded ??
                                              true)) {
                                            context.safePop();
                                            if (_shouldSetState)
                                              safeSetState(() {});
                                            return;
                                          } else {
                                            if (_shouldSetState)
                                              safeSetState(() {});
                                            return;
                                          }

                                          if (_shouldSetState)
                                            safeSetState(() {});
                                        },
                                  text: FFLocalizations.of(context).getText(
                                    'ec1qwfw1' /* Guardar */,
                                  ),
                                  options: FFButtonOptions(
                                    width: 300.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
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
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                    disabledColor: FlutterFlowTheme.of(context)
                                        .botonDesactivado,
                                    disabledTextColor:
                                        FlutterFlowTheme.of(context).accent4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return WebViewAware(
                                          child: GestureDetector(
                                            onTap: () {
                                              FocusScope.of(context).unfocus();
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                            },
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: ModalEliminaPlatoWidget(
                                                id: widget!.id!,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'ukdygehm' /* Eliminar Bebida */,
                                  ),
                                  options: FFButtonOptions(
                                    width: 300.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).error,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 30.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    context.safePop();
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'm9ulivio' /* Cancelar */,
                                  ),
                                  options: FFButtonOptions(
                                    width: 300.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0x0063A4DC),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
