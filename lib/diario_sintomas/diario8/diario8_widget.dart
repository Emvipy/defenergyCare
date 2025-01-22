import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'diario8_model.dart';
export 'diario8_model.dart';

class Diario8Widget extends StatefulWidget {
  const Diario8Widget({super.key});

  @override
  State<Diario8Widget> createState() => _Diario8WidgetState();
}

class _Diario8WidgetState extends State<Diario8Widget> {
  late Diario8Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Diario8Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiMejora = await DespMejoraSintomasCall.call();

      _model.mejoraSintomas = getJsonField(
        (_model.apiMejora?.jsonBody ?? ''),
        r'''$''',
        true,
      )!
          .toList()
          .cast<dynamic>();
      _model.nombreMed = null;
      _model.ultimoMed = 'empty';
      _model.respuestaBusqueda = [];
      _model.alivioSintomas = 'x';
      _model.contadorAlivio = 0;
      _model.mejora1 = null;
      _model.mejora2 = null;
      _model.mejora3 = null;
      _model.mejora4 = null;
      _model.mejora5 = null;
      _model.emp1 = null;
      _model.emp2 = null;
      _model.emp3 = null;
      _model.emp4 = null;
      _model.emp5 = null;
      _model.mostrarListado = 'no';
      safeSetState(() {});
      _model.apiEmpeora = await DespEmpeoraSintomasCall.call();

      _model.empeoraSintomas = getJsonField(
        (_model.apiEmpeora?.jsonBody ?? ''),
        r'''$''',
        true,
      )!
          .toList()
          .cast<dynamic>();
      safeSetState(() {});
    });

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
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
                _model.nombreMed = null;
                _model.ultimoMed = 'empty';
                _model.respuestaBusqueda = [];
                _model.alivioSintomas = 'x';
                _model.contadorAlivio = 0;
                _model.mejoraSintomas = [];
                _model.empeoraSintomas = [];
                _model.mejora1 = null;
                _model.mejora2 = null;
                _model.mejora3 = null;
                _model.mejora4 = null;
                _model.mejora5 = null;
                _model.emp1 = null;
                _model.emp2 = null;
                _model.emp3 = null;
                _model.emp4 = null;
                _model.emp5 = null;
                _model.mostrarListado = 'no';
                safeSetState(() {
                  _model.dropDownMejora1P2ValueController?.reset();
                  _model.dropDownMejora2P2ValueController?.reset();
                  _model.dropDownMejora3P2ValueController?.reset();
                  _model.dropDownMejora4P2ValueController?.reset();
                  _model.dropDownMejora5P2ValueController?.reset();
                  _model.dropDownEmpeora1P2ValueController?.reset();
                  _model.dropDownEmpeora2P2ValueController?.reset();
                  _model.dropDownEmpeora3P2ValueController?.reset();
                  _model.dropDownEmpeora4P2ValueController?.reset();
                  _model.dropDownEmpeora5P2ValueController?.reset();
                });
                safeSetState(() {
                  _model.textController1?.clear();
                  _model.textController2?.clear();
                });
                if (FFAppState().diarioMed1 == 'si') {
                  context.pushNamed(
                    'diario7',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                } else {
                  context.pushNamed(
                    'diario6',
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
            title: Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'rlk3893q' /* Diario de Síntomas */,
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
            centerTitle: true,
            elevation: 2.0,
          ),
          body: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: Container(
                              width: double.infinity,
                              height: 24.0,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: LinearPercentIndicator(
                                          percent: 0.95,
                                          width: 300.0,
                                          lineHeight: 20.0,
                                          animation: true,
                                          animateFromLastPercent: true,
                                          progressColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          center: Text(
                                            FFLocalizations.of(context).getText(
                                              'fc9pmw6a' /* 95% */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          barRadius: Radius.circular(10.0),
                                          padding: EdgeInsets.zero,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        if (_model.nombreMed == null || _model.nombreMed == '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 5.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'bujab0j0' /* ¿Que otro medicamento has toma... */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (_model.nombreMed == null || _model.nombreMed == '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 5.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'cgaq3piu' /* Recuerda poner el nombre en es... */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 13.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (_model.nombreMed != null && _model.nombreMed != '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 5.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 10.0, 5.0),
                                    child: Text(
                                      _model.nombreMed!,
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (_model.nombreMed != null && _model.nombreMed != '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 5.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 5.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'okccl25e' /* ¿Este medicamento alivió tus s... */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (_model.nombreMed == null || _model.nombreMed == '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Container(
                              width: 350.0,
                              height: 60.0,
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: 300.0,
                                      child: TextFormField(
                                        controller: _model.textController1,
                                        focusNode: _model.textFieldFocusNode1,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.textController1',
                                          Duration(milliseconds: 100),
                                          () => safeSetState(() {}),
                                        ),
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 13.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            '5bck9dmr' /* nombre del medicamento */,
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
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
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
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .rellenoCampo2,
                                          suffixIcon: _model.textController1!
                                                  .text.isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    _model.textController1
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
                                            .textController1Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: FlutterFlowIconButton(
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        borderRadius: 20.0,
                                        borderWidth: 1.0,
                                        buttonSize: 40.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primary,
                                        icon: Icon(
                                          Icons.arrow_forward_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          size: 24.0,
                                        ),
                                        onPressed: () async {
                                          if (_model.textController1.text !=
                                                  null &&
                                              _model.textController1.text !=
                                                  '') {
                                            _model.respuestaBusqueda = [];
                                            safeSetState(() {});
                                            _model.apiBuscadorMedicamento =
                                                await DiarioBuscadorMedicamentoCall
                                                    .call(
                                              idioma:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                              nombre:
                                                  _model.textController1.text,
                                            );

                                            _model.respuestaBusqueda =
                                                getJsonField(
                                              (_model.apiBuscadorMedicamento
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$''',
                                              true,
                                            )!
                                                    .toList()
                                                    .cast<dynamic>();
                                            _model.mostrarListado = 'si';
                                            safeSetState(() {});
                                          }

                                          safeSetState(() {});
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        if (_model.nombreMed == null || _model.nombreMed == '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'glsm8r9c' /* Recuerda utilizar las tíldes e... */,
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (_model.nombreMed == null || _model.nombreMed == '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'wkhduqyo' /* Debes añadir los medicamentos ... */,
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if ((_model.nombreMed == null ||
                                _model.nombreMed == '') &&
                            (_model.mostrarListado == 'si'))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 303.0,
                              decoration: BoxDecoration(),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Builder(
                                      builder: (context) {
                                        final list =
                                            _model.respuestaBusqueda.toList();

                                        return ListView.separated(
                                          padding: EdgeInsets.fromLTRB(
                                            0,
                                            0,
                                            0,
                                            150.0,
                                          ),
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: list.length,
                                          separatorBuilder: (_, __) =>
                                              SizedBox(height: 10.0),
                                          itemBuilder: (context, listIndex) {
                                            final listItem = list[listIndex];
                                            return Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Container(
                                                width: 350.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 3.0, 10.0, 3.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      _model.nombreMed =
                                                          FFLocalizations.of(
                                                                          context)
                                                                      .languageCode ==
                                                                  'en'
                                                              ? getJsonField(
                                                                  listItem,
                                                                  r'''$.nombre_en''',
                                                                ).toString()
                                                              : getJsonField(
                                                                  listItem,
                                                                  r'''$.nombre''',
                                                                ).toString();
                                                      safeSetState(() {});
                                                    },
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Flexible(
                                                          flex: 80,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                FFLocalizations.of(context)
                                                                            .languageCode ==
                                                                        'en'
                                                                    ? getJsonField(
                                                                        listItem,
                                                                        r'''$.nombre_en''',
                                                                      ).toString()
                                                                    : getJsonField(
                                                                        listItem,
                                                                        r'''$.nombre''',
                                                                      ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Flexible(
                                                          flex: 20,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .add_circle,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    size: 28.0,
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
                                              ),
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
                        if ((_model.nombreMed == null ||
                                _model.nombreMed == '') &&
                            (FFAppState().diarioUltimoMed2 != 'no'))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Container(
                              width: 350.0,
                              height: 120.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 10.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '4t4jpebj' /* O usar el del último diario re... */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            FFAppState().diarioUltimoMed2,
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.nombreMed =
                                                FFAppState().diarioUltimoMed2;
                                            safeSetState(() {});
                                          },
                                          child: Icon(
                                            Icons.add_circle,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            size: 28.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        if ((_model.nombreMed != null &&
                                _model.nombreMed != '') &&
                            (_model.alivioSintomas != 'si') &&
                            (_model.alivioSintomas != 'no'))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: BoxDecoration(),
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
                                      safeSetState(() {
                                        _model.dropDownMejora1P2ValueController
                                            ?.reset();
                                        _model.dropDownMejora2P2ValueController
                                            ?.reset();
                                        _model.dropDownMejora3P2ValueController
                                            ?.reset();
                                        _model.dropDownMejora4P2ValueController
                                            ?.reset();
                                        _model.dropDownMejora5P2ValueController
                                            ?.reset();
                                        _model.dropDownEmpeora1P2ValueController
                                            ?.reset();
                                        _model.dropDownEmpeora2P2ValueController
                                            ?.reset();
                                        _model.dropDownEmpeora3P2ValueController
                                            ?.reset();
                                        _model.dropDownEmpeora4P2ValueController
                                            ?.reset();
                                        _model.dropDownEmpeora5P2ValueController
                                            ?.reset();
                                      });
                                      _model.alivioSintomas = 'si';
                                      safeSetState(() {});
                                      safeSetState(() {
                                        _model.textController1?.clear();
                                        _model.textController2?.clear();
                                      });
                                    },
                                    child: Container(
                                      width: 105.0,
                                      height: 86.0,
                                      decoration: BoxDecoration(
                                        color: _model.alivioSintomas == 'si'
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
                                            Icons.check_circle_outline_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            size: 32.0,
                                          ),
                                          Flexible(
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '83shmgxa' /* Si alivió mis
síntomas */
                                                ,
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
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      safeSetState(() {
                                        _model.dropDownMejora1P2ValueController
                                            ?.reset();
                                        _model.dropDownMejora2P2ValueController
                                            ?.reset();
                                        _model.dropDownMejora3P2ValueController
                                            ?.reset();
                                        _model.dropDownMejora4P2ValueController
                                            ?.reset();
                                        _model.dropDownMejora5P2ValueController
                                            ?.reset();
                                        _model.dropDownEmpeora1P2ValueController
                                            ?.reset();
                                        _model.dropDownEmpeora2P2ValueController
                                            ?.reset();
                                        _model.dropDownEmpeora3P2ValueController
                                            ?.reset();
                                        _model.dropDownEmpeora4P2ValueController
                                            ?.reset();
                                        _model.dropDownEmpeora5P2ValueController
                                            ?.reset();
                                      });
                                      _model.alivioSintomas = 'no';
                                      safeSetState(() {});
                                      safeSetState(() {
                                        _model.textController2?.clear();
                                        _model.textController1?.clear();
                                      });
                                    },
                                    child: Container(
                                      width: 105.0,
                                      height: 86.0,
                                      decoration: BoxDecoration(
                                        color: _model.alivioSintomas == 'no'
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
                                            Icons.close_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            size: 32.0,
                                          ),
                                          Flexible(
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'wawgg3dc' /* No alivió mis
síntomas */
                                                ,
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
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      safeSetState(() {
                                        _model.dropDownMejora1P2ValueController
                                            ?.reset();
                                        _model.dropDownMejora2P2ValueController
                                            ?.reset();
                                        _model.dropDownMejora3P2ValueController
                                            ?.reset();
                                        _model.dropDownMejora4P2ValueController
                                            ?.reset();
                                        _model.dropDownMejora5P2ValueController
                                            ?.reset();
                                        _model.dropDownEmpeora1P2ValueController
                                            ?.reset();
                                        _model.dropDownEmpeora2P2ValueController
                                            ?.reset();
                                        _model.dropDownEmpeora3P2ValueController
                                            ?.reset();
                                        _model.dropDownEmpeora4P2ValueController
                                            ?.reset();
                                        _model.dropDownEmpeora5P2ValueController
                                            ?.reset();
                                      });
                                      _model.alivioSintomas = 'sin';
                                      safeSetState(() {});
                                      safeSetState(() {
                                        _model.textController2?.clear();
                                        _model.textController1?.clear();
                                      });
                                    },
                                    child: Container(
                                      width: 105.0,
                                      height: 86.0,
                                      decoration: BoxDecoration(
                                        color: _model.alivioSintomas == 'sin'
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
                                            Icons.back_hand_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            size: 32.0,
                                          ),
                                          Flexible(
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'm02d80d4' /* No tuvo
efectos */
                                                ,
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
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
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
                        if (_model.alivioSintomas == 'si')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'r4gu6c63' /* Por favor indica los síntomas ... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: FlutterFlowDropDown<String>(
                                        controller: _model
                                                .dropDownMejora1P2ValueController ??=
                                            FormFieldController<String>(null),
                                        options: FFLocalizations.of(context)
                                                    .languageCode ==
                                                'es'
                                            ? _model.mejoraSintomas
                                                .map((e) => getJsonField(
                                                      e,
                                                      r'''$.mejora''',
                                                    ))
                                                .toList()
                                                .map((e) => e.toString())
                                                .toList()
                                            : _model.mejoraSintomas
                                                .map((e) => getJsonField(
                                                      e,
                                                      r'''$.mejora_en''',
                                                    ))
                                                .toList()
                                                .map((e) => e.toString())
                                                .toList(),
                                        onChanged: (val) async {
                                          safeSetState(() => _model
                                              .dropDownMejora1P2Value = val);
                                          _model.mejora1 =
                                              _model.dropDownMejora1P2Value;
                                          safeSetState(() {});
                                        },
                                        width: 350.0,
                                        height: 50.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'cmfgdtha' /* Selecciona tu respuesta */,
                                        ),
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .rellenoCampo2,
                                        elevation: 2.0,
                                        borderColor: Colors.transparent,
                                        borderWidth: 2.0,
                                        borderRadius: 12.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                  ),
                                  if ((_model.dropDownMejora1P2Value != null &&
                                          _model.dropDownMejora1P2Value !=
                                              '') &&
                                      (_model.dropDownMejora1P2Value !=
                                          'No ha mejorado más síntomas'))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownMejora2P2ValueController ??=
                                              FormFieldController<String>(null),
                                          options: FFLocalizations.of(context)
                                                      .languageCode ==
                                                  'es'
                                              ? _model.mejoraSintomas
                                                  .map((e) => getJsonField(
                                                        e,
                                                        r'''$.mejora''',
                                                      ))
                                                  .toList()
                                                  .map((e) => e.toString())
                                                  .toList()
                                              : _model.mejoraSintomas
                                                  .map((e) => getJsonField(
                                                        e,
                                                        r'''$.mejora_en''',
                                                      ))
                                                  .toList()
                                                  .map((e) => e.toString())
                                                  .toList(),
                                          onChanged: (val) async {
                                            safeSetState(() => _model
                                                .dropDownMejora2P2Value = val);
                                            _model.mejora2 =
                                                _model.dropDownMejora2P2Value;
                                            safeSetState(() {});
                                          },
                                          width: 350.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'e0iufcr6' /* Selecciona tu respuesta */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .rellenoCampo2,
                                          elevation: 2.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 2.0,
                                          borderRadius: 12.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                    ),
                                  if ((_model.dropDownMejora2P2Value != null &&
                                          _model.dropDownMejora2P2Value !=
                                              '') &&
                                      (_model.dropDownMejora2P2Value !=
                                          'No ha mejorado más síntomas'))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownMejora3P2ValueController ??=
                                              FormFieldController<String>(null),
                                          options: FFLocalizations.of(context)
                                                      .languageCode ==
                                                  'es'
                                              ? _model.mejoraSintomas
                                                  .map((e) => getJsonField(
                                                        e,
                                                        r'''$.mejora''',
                                                      ))
                                                  .toList()
                                                  .map((e) => e.toString())
                                                  .toList()
                                              : _model.mejoraSintomas
                                                  .map((e) => getJsonField(
                                                        e,
                                                        r'''$.mejora_en''',
                                                      ))
                                                  .toList()
                                                  .map((e) => e.toString())
                                                  .toList(),
                                          onChanged: (val) async {
                                            safeSetState(() => _model
                                                .dropDownMejora3P2Value = val);
                                            _model.mejora3 =
                                                _model.dropDownMejora3P2Value;
                                            safeSetState(() {});
                                          },
                                          width: 350.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'da1ltpzq' /* Selecciona tu respuesta */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .rellenoCampo2,
                                          elevation: 2.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 2.0,
                                          borderRadius: 12.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                    ),
                                  if ((_model.dropDownMejora3P2Value != null &&
                                          _model.dropDownMejora3P2Value !=
                                              '') &&
                                      (_model.dropDownMejora3P2Value !=
                                          'No ha mejorado más síntomas'))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownMejora4P2ValueController ??=
                                              FormFieldController<String>(null),
                                          options: FFLocalizations.of(context)
                                                      .languageCode ==
                                                  'es'
                                              ? _model.mejoraSintomas
                                                  .map((e) => getJsonField(
                                                        e,
                                                        r'''$.mejora''',
                                                      ))
                                                  .toList()
                                                  .map((e) => e.toString())
                                                  .toList()
                                              : _model.mejoraSintomas
                                                  .map((e) => getJsonField(
                                                        e,
                                                        r'''$.mejora_en''',
                                                      ))
                                                  .toList()
                                                  .map((e) => e.toString())
                                                  .toList(),
                                          onChanged: (val) async {
                                            safeSetState(() => _model
                                                .dropDownMejora4P2Value = val);
                                            _model.mejora4 =
                                                _model.dropDownMejora4P2Value;
                                            safeSetState(() {});
                                          },
                                          width: 350.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'bss0wslw' /* Selecciona tu respuesta */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .rellenoCampo2,
                                          elevation: 2.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 2.0,
                                          borderRadius: 12.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                    ),
                                  if ((_model.dropDownMejora4P2Value != null &&
                                          _model.dropDownMejora4P2Value !=
                                              '') &&
                                      (_model.dropDownMejora4P2Value !=
                                          'No ha mejorado más síntomas'))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownMejora5P2ValueController ??=
                                              FormFieldController<String>(null),
                                          options: FFLocalizations.of(context)
                                                      .languageCode ==
                                                  'es'
                                              ? _model.mejoraSintomas
                                                  .map((e) => getJsonField(
                                                        e,
                                                        r'''$.mejora''',
                                                      ))
                                                  .toList()
                                                  .map((e) => e.toString())
                                                  .toList()
                                              : _model.mejoraSintomas
                                                  .map((e) => getJsonField(
                                                        e,
                                                        r'''$.mejora_en''',
                                                      ))
                                                  .toList()
                                                  .map((e) => e.toString())
                                                  .toList(),
                                          onChanged: (val) async {
                                            safeSetState(() => _model
                                                .dropDownMejora5P2Value = val);
                                            _model.mejora5 =
                                                _model.dropDownMejora5P2Value;
                                            safeSetState(() {});
                                          },
                                          width: 350.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'rbpz668p' /* Selecciona tu respuesta */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .rellenoCampo2,
                                          elevation: 2.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 2.0,
                                          borderRadius: 12.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        if ((_model.alivioSintomas == 'si') ||
                            (_model.alivioSintomas == 'no'))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'ai1f2nhx' /* Por favor indica los síntomas ... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: FlutterFlowDropDown<String>(
                                        controller: _model
                                                .dropDownEmpeora1P2ValueController ??=
                                            FormFieldController<String>(null),
                                        options: FFLocalizations.of(context)
                                                    .languageCode ==
                                                'es'
                                            ? _model.empeoraSintomas
                                                .map((e) => getJsonField(
                                                      e,
                                                      r'''$.mejora''',
                                                    ))
                                                .toList()
                                                .map((e) => e.toString())
                                                .toList()
                                            : _model.empeoraSintomas
                                                .map((e) => getJsonField(
                                                      e,
                                                      r'''$.mejora_en''',
                                                    ))
                                                .toList()
                                                .map((e) => e.toString())
                                                .toList(),
                                        onChanged: (val) async {
                                          safeSetState(() => _model
                                              .dropDownEmpeora1P2Value = val);
                                          _model.emp1 =
                                              _model.dropDownEmpeora1P2Value;
                                          safeSetState(() {});
                                        },
                                        width: 350.0,
                                        height: 50.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'rleuzcc0' /* Selecciona tu respuesta */,
                                        ),
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .rellenoCampo2,
                                        elevation: 2.0,
                                        borderColor: Colors.transparent,
                                        borderWidth: 2.0,
                                        borderRadius: 12.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                  ),
                                  if ((_model.dropDownEmpeora1P2Value != null &&
                                          _model.dropDownEmpeora1P2Value !=
                                              '') &&
                                      (_model.dropDownEmpeora1P2Value !=
                                          'No ha empeorado más síntomas'))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownEmpeora2P2ValueController ??=
                                              FormFieldController<String>(null),
                                          options: FFLocalizations.of(context)
                                                      .languageCode ==
                                                  'es'
                                              ? _model.empeoraSintomas
                                                  .map((e) => getJsonField(
                                                        e,
                                                        r'''$.mejora''',
                                                      ))
                                                  .toList()
                                                  .map((e) => e.toString())
                                                  .toList()
                                              : _model.empeoraSintomas
                                                  .map((e) => getJsonField(
                                                        e,
                                                        r'''$.mejora_en''',
                                                      ))
                                                  .toList()
                                                  .map((e) => e.toString())
                                                  .toList(),
                                          onChanged: (val) async {
                                            safeSetState(() => _model
                                                .dropDownEmpeora2P2Value = val);
                                            _model.emp2 =
                                                _model.dropDownEmpeora2P2Value;
                                            safeSetState(() {});
                                          },
                                          width: 350.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'yfpclfsw' /* Selecciona tu respuesta */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .rellenoCampo2,
                                          elevation: 2.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 2.0,
                                          borderRadius: 12.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                    ),
                                  if ((_model.dropDownEmpeora2P2Value != null &&
                                          _model.dropDownEmpeora2P2Value !=
                                              '') &&
                                      (_model.dropDownEmpeora2P2Value !=
                                          'No ha empeorado más síntomas'))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownEmpeora3P2ValueController ??=
                                              FormFieldController<String>(null),
                                          options: FFLocalizations.of(context)
                                                      .languageCode ==
                                                  'es'
                                              ? _model.empeoraSintomas
                                                  .map((e) => getJsonField(
                                                        e,
                                                        r'''$.mejora''',
                                                      ))
                                                  .toList()
                                                  .map((e) => e.toString())
                                                  .toList()
                                              : _model.empeoraSintomas
                                                  .map((e) => getJsonField(
                                                        e,
                                                        r'''$.mejora_en''',
                                                      ))
                                                  .toList()
                                                  .map((e) => e.toString())
                                                  .toList(),
                                          onChanged: (val) async {
                                            safeSetState(() => _model
                                                .dropDownEmpeora3P2Value = val);
                                            _model.emp3 =
                                                _model.dropDownEmpeora3P2Value;
                                            safeSetState(() {});
                                          },
                                          width: 350.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'kcnu7lhs' /* Selecciona tu respuesta */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .rellenoCampo2,
                                          elevation: 2.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 2.0,
                                          borderRadius: 12.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                    ),
                                  if ((_model.dropDownEmpeora3P2Value != null &&
                                          _model.dropDownEmpeora3P2Value !=
                                              '') &&
                                      (_model.dropDownEmpeora3P2Value !=
                                          'No ha empeorado más síntomas'))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownEmpeora4P2ValueController ??=
                                              FormFieldController<String>(null),
                                          options: FFLocalizations.of(context)
                                                      .languageCode ==
                                                  'es'
                                              ? _model.empeoraSintomas
                                                  .map((e) => getJsonField(
                                                        e,
                                                        r'''$.mejora''',
                                                      ))
                                                  .toList()
                                                  .map((e) => e.toString())
                                                  .toList()
                                              : _model.empeoraSintomas
                                                  .map((e) => getJsonField(
                                                        e,
                                                        r'''$.mejora_en''',
                                                      ))
                                                  .toList()
                                                  .map((e) => e.toString())
                                                  .toList(),
                                          onChanged: (val) async {
                                            safeSetState(() => _model
                                                .dropDownEmpeora4P2Value = val);
                                            _model.emp4 =
                                                _model.dropDownEmpeora4P2Value;
                                            safeSetState(() {});
                                          },
                                          width: 350.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'sx6dw208' /* Selecciona tu respuesta */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .rellenoCampo2,
                                          elevation: 2.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 2.0,
                                          borderRadius: 12.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                    ),
                                  if ((_model.dropDownEmpeora4P2Value != null &&
                                          _model.dropDownEmpeora4P2Value !=
                                              '') &&
                                      (_model.dropDownEmpeora4P2Value !=
                                          'No ha empeorado más síntomas'))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownEmpeora5P2ValueController ??=
                                              FormFieldController<String>(null),
                                          options: FFLocalizations.of(context)
                                                      .languageCode ==
                                                  'es'
                                              ? _model.empeoraSintomas
                                                  .map((e) => getJsonField(
                                                        e,
                                                        r'''$.mejora''',
                                                      ))
                                                  .toList()
                                                  .map((e) => e.toString())
                                                  .toList()
                                              : _model.empeoraSintomas
                                                  .map((e) => getJsonField(
                                                        e,
                                                        r'''$.mejora_en''',
                                                      ))
                                                  .toList()
                                                  .map((e) => e.toString())
                                                  .toList(),
                                          onChanged: (val) async {
                                            safeSetState(() => _model
                                                .dropDownEmpeora5P2Value = val);
                                            _model.emp5 =
                                                _model.dropDownEmpeora5P2Value;
                                            safeSetState(() {});
                                          },
                                          width: 350.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            '60l4wgwo' /* Selecciona tu respuesta */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .rellenoCampo2,
                                          elevation: 2.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 2.0,
                                          borderRadius: 12.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        if ((_model.alivioSintomas == 'si') ||
                            (_model.alivioSintomas == 'no'))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: Container(
                                        width: 350.0,
                                        child: TextFormField(
                                          controller: _model.textController2,
                                          focusNode: _model.textFieldFocusNode2,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'a63jcew0' /* Notas */,
                                            ),
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
                                              '4wtbwl80' /* Aquí puedes agregar notas sobr... */,
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
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
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
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .rellenoCampo2,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 5.0, 10.0, 5.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                              ),
                                          maxLines: null,
                                          validator: _model
                                              .textController2Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if ((_model.nombreMed != null &&
                                _model.nombreMed != '') &&
                            (_model.alivioSintomas != 'sin'))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: (_model.emp1 == null ||
                                          _model.emp1 == '')
                                      ? null
                                      : () async {
                                          var _shouldSetState = false;
                                          _model.apiP8 =
                                              await DiarioOchoCall.call(
                                            authToken: FFAppState().authToken,
                                            diarioId: FFAppState().diarioId,
                                            med1: _model.nombreMed,
                                            conAlivio: _model.alivioSintomas,
                                            sinAlivio: 'n/a',
                                            mejora1: _model.mejora1 != null &&
                                                    _model.mejora1 != ''
                                                ? _model.mejora1
                                                : 'n/a',
                                            mejora2: _model.mejora2 != null &&
                                                    _model.mejora2 != ''
                                                ? _model.mejora2
                                                : 'n/a',
                                            mejora3: _model.mejora3 != null &&
                                                    _model.mejora3 != ''
                                                ? _model.mejora3
                                                : 'n/a',
                                            mejora4: _model.mejora4 != null &&
                                                    _model.mejora4 != ''
                                                ? _model.mejora4
                                                : 'n/a',
                                            mejora5: _model.mejora5 != null &&
                                                    _model.mejora5 != ''
                                                ? _model.mejora5
                                                : 'n/a',
                                            empeora1: _model.emp1 != null &&
                                                    _model.emp1 != ''
                                                ? _model.emp1
                                                : 'n/a',
                                            empeora2: _model.emp2 != null &&
                                                    _model.emp2 != ''
                                                ? _model.emp2
                                                : 'n/a',
                                            empeora3: _model.emp3 != null &&
                                                    _model.emp3 != ''
                                                ? _model.emp3
                                                : 'n/a',
                                            empeora4: _model.emp4 != null &&
                                                    _model.emp4 != ''
                                                ? _model.emp4
                                                : 'n/a',
                                            empeora5: _model.emp5 != null &&
                                                    _model.emp5 != ''
                                                ? _model.emp5
                                                : 'n/a',
                                            notas: _model.textController2
                                                            .text !=
                                                        null &&
                                                    _model.textController2
                                                            .text !=
                                                        ''
                                                ? functions
                                                    .formatTextwithLineBreaksToXano(
                                                        _model.textController2
                                                            .text)
                                                : 'n/a',
                                            editando:
                                                FFAppState().editandoDiario,
                                          );

                                          _shouldSetState = true;
                                          if (FFAppState().diarioVit == 'si') {
                                            context.pushNamed(
                                              'diario9',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                ),
                                              },
                                            );

                                            if (_shouldSetState)
                                              safeSetState(() {});
                                            return;
                                          } else {
                                            _model.apiResultyly2 =
                                                await DiarioFinalizaCall.call(
                                              authToken: FFAppState().authToken,
                                              idDiario: FFAppState().diarioId,
                                              edita:
                                                  FFAppState().editandoDiario,
                                            );

                                            _shouldSetState = true;

                                            context.pushNamed(
                                              'diarioFin',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                ),
                                              },
                                            );
                                          }

                                          if (_shouldSetState)
                                            safeSetState(() {});
                                        },
                                  text: FFLocalizations.of(context).getText(
                                    'lvzdyqvs' /* Continuar */,
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
                        if ((_model.nombreMed != null &&
                                _model.nombreMed != '') &&
                            (_model.alivioSintomas == 'sin'))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    var _shouldSetState = false;
                                    _model.apiP8sin = await DiarioOchoCall.call(
                                      authToken: FFAppState().authToken,
                                      diarioId: FFAppState().diarioId,
                                      med1: _model.nombreMed,
                                      conAlivio: _model.alivioSintomas,
                                      sinAlivio: 'n/a',
                                      mejora1: _model.mejora1 != null &&
                                              _model.mejora1 != ''
                                          ? _model.mejora1
                                          : 'n/a',
                                      mejora2: _model.mejora2 != null &&
                                              _model.mejora2 != ''
                                          ? _model.mejora2
                                          : 'n/a',
                                      mejora3: _model.mejora3 != null &&
                                              _model.mejora3 != ''
                                          ? _model.mejora3
                                          : 'n/a',
                                      mejora4: _model.mejora4 != null &&
                                              _model.mejora4 != ''
                                          ? _model.mejora4
                                          : 'n/a',
                                      mejora5: _model.mejora5 != null &&
                                              _model.mejora5 != ''
                                          ? _model.mejora5
                                          : 'n/a',
                                      empeora1: _model.emp1 != null &&
                                              _model.emp1 != ''
                                          ? _model.emp1
                                          : 'n/a',
                                      empeora2: _model.emp2 != null &&
                                              _model.emp2 != ''
                                          ? _model.emp2
                                          : 'n/a',
                                      empeora3: _model.emp3 != null &&
                                              _model.emp3 != ''
                                          ? _model.emp3
                                          : 'n/a',
                                      empeora4: _model.emp4 != null &&
                                              _model.emp4 != ''
                                          ? _model.emp4
                                          : 'n/a',
                                      empeora5: _model.emp5 != null &&
                                              _model.emp5 != ''
                                          ? _model.emp5
                                          : 'n/a',
                                      notas: _model.textController2.text !=
                                                  null &&
                                              _model.textController2.text != ''
                                          ? functions
                                              .formatTextwithLineBreaksToXano(
                                                  _model.textController2.text)
                                          : 'n/a',
                                      editando: FFAppState().editandoDiario,
                                    );

                                    _shouldSetState = true;
                                    if (FFAppState().diarioVit == 'si') {
                                      context.pushNamed(
                                        'diario9',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                          ),
                                        },
                                      );

                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    } else {
                                      _model.apiResultyly2sin =
                                          await DiarioFinalizaCall.call(
                                        authToken: FFAppState().authToken,
                                        idDiario: FFAppState().diarioId,
                                        edita: FFAppState().editandoDiario,
                                      );

                                      _shouldSetState = true;

                                      context.pushNamed(
                                        'diarioFin',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                          ),
                                        },
                                      );

                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }

                                    if (_shouldSetState) safeSetState(() {});
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    '338zjkt1' /* Continuar */,
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
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (FFAppState().authToken == '1')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 30.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    unawaited(
                                      () async {
                                        _model.apiP8Back =
                                            await DiarioOchoCall.call(
                                          authToken: FFAppState().authToken,
                                          diarioId: FFAppState().diarioId,
                                          med1: _model.nombreMed,
                                          conAlivio: _model.alivioSintomas,
                                          sinAlivio: 'n/a',
                                          mejora1: _model.mejora1 != null &&
                                                  _model.mejora1 != ''
                                              ? _model.mejora1
                                              : 'n/a',
                                          mejora2: _model.mejora2 != null &&
                                                  _model.mejora2 != ''
                                              ? _model.mejora2
                                              : 'n/a',
                                          mejora3: _model.mejora3 != null &&
                                                  _model.mejora3 != ''
                                              ? _model.mejora3
                                              : 'n/a',
                                          mejora4: _model.mejora4 != null &&
                                                  _model.mejora4 != ''
                                              ? _model.mejora4
                                              : 'n/a',
                                          mejora5: _model.mejora5 != null &&
                                                  _model.mejora5 != ''
                                              ? _model.mejora5
                                              : 'n/a',
                                          empeora1: _model.emp1 != null &&
                                                  _model.emp1 != ''
                                              ? _model.emp1
                                              : 'n/a',
                                          empeora2: _model.emp2 != null &&
                                                  _model.emp2 != ''
                                              ? _model.emp2
                                              : 'n/a',
                                          empeora3: _model.emp3 != null &&
                                                  _model.emp3 != ''
                                              ? _model.emp3
                                              : 'n/a',
                                          empeora4: _model.emp4 != null &&
                                                  _model.emp4 != ''
                                              ? _model.emp4
                                              : 'n/a',
                                          empeora5: _model.emp5 != null &&
                                                  _model.emp5 != ''
                                              ? _model.emp5
                                              : 'n/a',
                                          notas: _model.textController2.text !=
                                                      null &&
                                                  _model.textController2.text !=
                                                      ''
                                              ? functions
                                                  .formatTextwithLineBreaksToXano(
                                                      _model
                                                          .textController2.text)
                                              : 'n/a',
                                        );
                                      }(),
                                    );
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Diario guardado!',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .success,
                                      ),
                                    );
                                    FFAppState().deleteDiarioId();
                                    FFAppState().diarioId = 0;

                                    FFAppState().deleteDiarioDolor();
                                    FFAppState().diarioDolor = 'no';

                                    FFAppState().deleteDiarioMed1();
                                    FFAppState().diarioMed1 = 'no';

                                    FFAppState().deleteDiarioMed2();
                                    FFAppState().diarioMed2 = 'no';

                                    FFAppState().deleteDiarioVit();
                                    FFAppState().diarioVit = 'no';

                                    FFAppState().deleteDiarioUltimoMed1();
                                    FFAppState().diarioUltimoMed1 = '';

                                    FFAppState().deleteDiarioUltimoMed2();
                                    FFAppState().diarioUltimoMed2 = '';

                                    FFAppState().deleteDiarioUltimoSup1();
                                    FFAppState().diarioUltimoSup1 = '';

                                    FFAppState().deleteDiarioUltimoSup2();
                                    FFAppState().diarioUltimoSup2 = '';

                                    FFAppState().deleteDiarioUltimoSup3();
                                    FFAppState().diarioUltimoSup3 = '';

                                    context.pushNamed(
                                      'Home',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );

                                    safeSetState(() {});
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'kcxs535m' /* Finalizar más tarde */,
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
                      ].addToEnd(SizedBox(height: 50.0)),
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
