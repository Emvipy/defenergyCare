import '/backend/api_requests/api_calls.dart';
import '/diario_intolerancias/modal_fin_setup_into/modal_fin_setup_into_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'setup_into_model.dart';
export 'setup_into_model.dart';

class SetupIntoWidget extends StatefulWidget {
  const SetupIntoWidget({super.key});

  @override
  State<SetupIntoWidget> createState() => _SetupIntoWidgetState();
}

class _SetupIntoWidgetState extends State<SetupIntoWidget> {
  late SetupIntoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SetupIntoModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      safeSetState(() {
        _model.dropDownIntestinoValueController?.reset();
        _model.dropDownTiempoIntestinoValueController?.reset();
        _model.dropDownFamIntoValueController?.reset();
        _model.dropDownGradoIntoValueController?.reset();
        _model.dropDownInto1ValueController?.reset();
        _model.dropDownTiempoInto1ValueController?.reset();
        _model.dropDownInto2ValueController?.reset();
        _model.dropDownTiempoInto2ValueController?.reset();
        _model.dropDownInto3ValueController?.reset();
        _model.dropDownTiempoInto3ValueController1?.reset();
      });
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
              'd3bzl3fd' /* Configuración del Diario */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Open Sans',
                  color: FlutterFlowTheme.of(context).secondaryText,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 10.0, 15.0, 5.0),
                            child: Text(
                              '${FFAppState().nombre} necesitamos que respondas a las siguientes cuestiones, para terminar de configurar tu Diario de Intolerancias',
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
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 10.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'bpkopppa' /* (esto solo te lo pediremos una... */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Container(
                      width: 332.0,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'gllfky2s' /* ¿Tienes diagnóstico de síndrom... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: FlutterFlowDropDown<String>(
                                  controller: _model
                                          .dropDownIntestinoValueController ??=
                                      FormFieldController<String>(null),
                                  options: [
                                    FFLocalizations.of(context).getText(
                                      '74b60222' /* Si */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'cssps8ua' /* No */,
                                    )
                                  ],
                                  onChanged: (val) => safeSetState(() =>
                                      _model.dropDownIntestinoValue = val),
                                  width: 509.0,
                                  height: 50.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 15.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    'sn731kma' /* Selecciona tu respuesta... */,
                                  ),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color:
                                        FlutterFlowTheme.of(context).azulPerm,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .rellenoCampo2,
                                  elevation: 0.0,
                                  borderColor: Colors.transparent,
                                  borderWidth: 2.0,
                                  borderRadius: 12.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isOverButton: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ),
                            ],
                          ),
                          if (_model.dropDownIntestinoValue == 'Si')
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'gn3pdbh8' /* ¿Cuánto tiempo llevas diagnost... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: FlutterFlowDropDown<String>(
                                    controller: _model
                                            .dropDownTiempoIntestinoValueController ??=
                                        FormFieldController<String>(null),
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        'p0yxh9vu' /* Menos de 1 año */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'b5x5frw1' /* De 1 a 3 años */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'vxya7ckq' /* De 3 a 5 años */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        '0okt0h1v' /* Más de 5 años */,
                                      )
                                    ],
                                    onChanged: (val) => safeSetState(() =>
                                        _model.dropDownTiempoIntestinoValue =
                                            val),
                                    width: 509.0,
                                    height: 50.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'fs1vfggc' /* Selecciona tu respuesta... */,
                                    ),
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).azulPerm,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .rellenoCampo2,
                                    elevation: 0.0,
                                    borderColor: Colors.transparent,
                                    borderWidth: 2.0,
                                    borderRadius: 12.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                              ],
                            ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'eg8o6h0p' /* ¿Tienes algún familiar directo... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: FlutterFlowDropDown<String>(
                                  controller:
                                      _model.dropDownFamIntoValueController ??=
                                          FormFieldController<String>(null),
                                  options: [
                                    FFLocalizations.of(context).getText(
                                      '30w8m94m' /* Si */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'cm4rcqf2' /* No */,
                                    )
                                  ],
                                  onChanged: (val) => safeSetState(
                                      () => _model.dropDownFamIntoValue = val),
                                  width: 509.0,
                                  height: 50.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 15.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    'ih5cvmn9' /* Selecciona tu respuesta... */,
                                  ),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color:
                                        FlutterFlowTheme.of(context).azulPerm,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .rellenoCampo2,
                                  elevation: 0.0,
                                  borderColor: Colors.transparent,
                                  borderWidth: 2.0,
                                  borderRadius: 12.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isOverButton: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ),
                            ],
                          ),
                          if (_model.dropDownFamIntoValue == 'Si')
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'hc5atrqs' /* Indica el grado familiar */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: FlutterFlowDropDown<String>(
                                    controller: _model
                                            .dropDownGradoIntoValueController ??=
                                        FormFieldController<String>(null),
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        'v4y9176v' /* Familiar de primer grado */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'x86qsg3m' /* Familiar de segundo grado */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'ulhhe10v' /* Familiar de tercer grado */,
                                      )
                                    ],
                                    onChanged: (val) => safeSetState(() =>
                                        _model.dropDownGradoIntoValue = val),
                                    width: 509.0,
                                    height: 50.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      '82i9h6k9' /* Selecciona tu respuesta... */,
                                    ),
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).azulPerm,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .rellenoCampo2,
                                    elevation: 0.0,
                                    borderColor: Colors.transparent,
                                    borderWidth: 2.0,
                                    borderRadius: 12.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                              ],
                            ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'mczc0q6v' /* ¿Tienes alguna sensibilidad/in... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: FutureBuilder<ApiCallResponse>(
                                  future: DespIntoleranciasCall.call(),
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
                                    final dropDownInto1DespIntoleranciasResponse =
                                        snapshot.data!;

                                    return FlutterFlowDropDown<String>(
                                      controller: _model
                                              .dropDownInto1ValueController ??=
                                          FormFieldController<String>(null),
                                      options: FFLocalizations.of(context)
                                                  .languageCode ==
                                              'en'
                                          ? DespIntoleranciasCall.en(
                                              dropDownInto1DespIntoleranciasResponse
                                                  .jsonBody,
                                            )!
                                          : DespIntoleranciasCall.es(
                                              dropDownInto1DespIntoleranciasResponse
                                                  .jsonBody,
                                            )!,
                                      onChanged: (val) => safeSetState(() =>
                                          _model.dropDownInto1Value = val),
                                      width: 509.0,
                                      height: 50.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'efwxwzlu' /* Selecciona tu respuesta... */,
                                      ),
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .azulPerm,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .rellenoCampo2,
                                      elevation: 0.0,
                                      borderColor: Colors.transparent,
                                      borderWidth: 2.0,
                                      borderRadius: 12.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 4.0),
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
                          if ((_model.dropDownInto1Value != null &&
                                  _model.dropDownInto1Value != '') &&
                              (_model.dropDownInto1Value != 'No tengo ninguna'))
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '3twyckwp' /* ¿Cuánto tiempo llevas diagnost... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: FlutterFlowDropDown<String>(
                                    controller: _model
                                            .dropDownTiempoInto1ValueController ??=
                                        FormFieldController<String>(null),
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        'um0szp0b' /* Menos de 1 año */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        '4qmh3yos' /* De 1 a 3 años */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'byornku8' /* De 3 a 5 años */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'wwgysml0' /* Más de 5 años */,
                                      )
                                    ],
                                    onChanged: (val) => safeSetState(() =>
                                        _model.dropDownTiempoInto1Value = val),
                                    width: 509.0,
                                    height: 50.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'au87iaou' /* Selecciona tu respuesta... */,
                                    ),
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).azulPerm,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .rellenoCampo2,
                                    elevation: 0.0,
                                    borderColor: Colors.transparent,
                                    borderWidth: 2.0,
                                    borderRadius: 12.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                              ],
                            ),
                          if ((_model.dropDownInto1Value != null &&
                                  _model.dropDownInto1Value != '') &&
                              (_model.dropDownInto1Value != 'No tengo ninguna'))
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'hnl0nyce' /* ¿Tienes otra sensibilidad/into... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: FutureBuilder<ApiCallResponse>(
                                    future: DespIntoleranciasCall.call(),
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
                                      final dropDownInto2DespIntoleranciasResponse =
                                          snapshot.data!;

                                      return FlutterFlowDropDown<String>(
                                        controller: _model
                                                .dropDownInto2ValueController ??=
                                            FormFieldController<String>(null),
                                        options: FFLocalizations.of(context)
                                                    .languageCode ==
                                                'en'
                                            ? DespIntoleranciasCall.en(
                                                dropDownInto2DespIntoleranciasResponse
                                                    .jsonBody,
                                              )!
                                            : DespIntoleranciasCall.es(
                                                dropDownInto2DespIntoleranciasResponse
                                                    .jsonBody,
                                              )!,
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownInto2Value = val),
                                        width: 509.0,
                                        height: 50.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 15.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'hmzfxr93' /* Selecciona tu respuesta... */,
                                        ),
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .azulPerm,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .rellenoCampo2,
                                        elevation: 0.0,
                                        borderColor: Colors.transparent,
                                        borderWidth: 2.0,
                                        borderRadius: 12.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 4.0),
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
                          if ((_model.dropDownInto2Value != null &&
                                  _model.dropDownInto2Value != '') &&
                              (_model.dropDownInto2Value != 'No tengo ninguna'))
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '4y9ltb9e' /* ¿Cuánto tiempo llevas diagnost... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: FlutterFlowDropDown<String>(
                                    controller: _model
                                            .dropDownTiempoInto2ValueController ??=
                                        FormFieldController<String>(null),
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        '0fypzod3' /* Menos de 1 año */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'b59etm3w' /* De 1 a 3 años */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        '4pffflas' /* De 3 a 5 años */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'kk6k9ncl' /* Más de 5 años */,
                                      )
                                    ],
                                    onChanged: (val) => safeSetState(() =>
                                        _model.dropDownTiempoInto2Value = val),
                                    width: 509.0,
                                    height: 50.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'f048nmv7' /* Selecciona tu respuesta... */,
                                    ),
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).azulPerm,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .rellenoCampo2,
                                    elevation: 0.0,
                                    borderColor: Colors.transparent,
                                    borderWidth: 2.0,
                                    borderRadius: 12.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                              ],
                            ),
                          if ((_model.dropDownInto2Value != null &&
                                  _model.dropDownInto2Value != '') &&
                              (_model.dropDownInto2Value != 'No tengo ninguna'))
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'rhzadlt6' /* ¿Tienes otra sensibilidad/into... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: FutureBuilder<ApiCallResponse>(
                                    future: DespIntoleranciasCall.call(),
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
                                      final dropDownInto3DespIntoleranciasResponse =
                                          snapshot.data!;

                                      return FlutterFlowDropDown<String>(
                                        controller: _model
                                                .dropDownInto3ValueController ??=
                                            FormFieldController<String>(null),
                                        options: FFLocalizations.of(context)
                                                    .languageCode ==
                                                'en'
                                            ? DespIntoleranciasCall.en(
                                                dropDownInto3DespIntoleranciasResponse
                                                    .jsonBody,
                                              )!
                                            : DespIntoleranciasCall.es(
                                                dropDownInto3DespIntoleranciasResponse
                                                    .jsonBody,
                                              )!,
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownInto3Value = val),
                                        width: 509.0,
                                        height: 50.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 15.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'np9go996' /* Selecciona tu respuesta... */,
                                        ),
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .azulPerm,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .rellenoCampo2,
                                        elevation: 0.0,
                                        borderColor: Colors.transparent,
                                        borderWidth: 2.0,
                                        borderRadius: 12.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 4.0),
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
                          if ((_model.dropDownInto3Value != null &&
                                  _model.dropDownInto3Value != '') &&
                              (_model.dropDownInto3Value != 'No tengo ninguna'))
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '1dv1wmsl' /* ¿Cuánto tiempo llevas diagnost... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: FlutterFlowDropDown<String>(
                                    controller: _model
                                            .dropDownTiempoInto3ValueController1 ??=
                                        FormFieldController<String>(null),
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        'd546gojb' /* Menos de 1 año */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'kdy6utyw' /* De 1 a 3 años */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'b9dylf4r' /* De 3 a 5 años */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        '1qzj9g0q' /* Más de 5 años */,
                                      )
                                    ],
                                    onChanged: (val) => safeSetState(() =>
                                        _model.dropDownTiempoInto3Value1 = val),
                                    width: 509.0,
                                    height: 50.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      '4ddhp6mb' /* Selecciona tu respuesta... */,
                                    ),
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).azulPerm,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .rellenoCampo2,
                                    elevation: 0.0,
                                    borderColor: Colors.transparent,
                                    borderWidth: 2.0,
                                    borderRadius: 12.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                              ],
                            ),
                          if ((_model.dropDownInto3Value != null &&
                                  _model.dropDownInto3Value != '') &&
                              (_model.dropDownInto3Value != 'No tengo ninguna'))
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'v8ihp1x1' /* ¿Tienes otra sensibilidad/into... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: FutureBuilder<ApiCallResponse>(
                                    future: DespIntoleranciasCall.call(),
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
                                      final dropDownInto4DespIntoleranciasResponse =
                                          snapshot.data!;

                                      return FlutterFlowDropDown<String>(
                                        controller: _model
                                                .dropDownInto4ValueController ??=
                                            FormFieldController<String>(null),
                                        options: FFLocalizations.of(context)
                                                    .languageCode ==
                                                'en'
                                            ? DespIntoleranciasCall.en(
                                                dropDownInto4DespIntoleranciasResponse
                                                    .jsonBody,
                                              )!
                                            : DespIntoleranciasCall.es(
                                                dropDownInto4DespIntoleranciasResponse
                                                    .jsonBody,
                                              )!,
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownInto4Value = val),
                                        width: 509.0,
                                        height: 50.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 15.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'gtwmofi4' /* Selecciona tu respuesta... */,
                                        ),
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .azulPerm,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .rellenoCampo2,
                                        elevation: 0.0,
                                        borderColor: Colors.transparent,
                                        borderWidth: 2.0,
                                        borderRadius: 12.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 4.0),
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
                          if ((_model.dropDownInto4Value != null &&
                                  _model.dropDownInto4Value != '') &&
                              (_model.dropDownInto4Value != 'No tengo ninguna'))
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'ih4hdu5g' /* ¿Cuánto tiempo llevas diagnost... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: FlutterFlowDropDown<String>(
                                    controller: _model
                                            .dropDownTiempoInto3ValueController2 ??=
                                        FormFieldController<String>(null),
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        'bcl9x731' /* Menos de 1 año */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'nkkqz2su' /* De 1 a 3 años */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'yq1s2bxo' /* De 3 a 5 años */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'b9wizgmg' /* Más de 5 años */,
                                      )
                                    ],
                                    onChanged: (val) => safeSetState(() =>
                                        _model.dropDownTiempoInto3Value2 = val),
                                    width: 509.0,
                                    height: 50.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'u0emwhko' /* Selecciona tu respuesta... */,
                                    ),
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).azulPerm,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .rellenoCampo2,
                                    elevation: 0.0,
                                    borderColor: Colors.transparent,
                                    borderWidth: 2.0,
                                    borderRadius: 12.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                              ],
                            ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 16.0),
                            child: FFButtonWidget(
                              onPressed: ((_model.dropDownIntestinoValue ==
                                              null ||
                                          _model.dropDownIntestinoValue ==
                                              '') ||
                                      (_model.dropDownFamIntoValue == null ||
                                          _model.dropDownFamIntoValue == '') ||
                                      (_model.dropDownInto1Value == null ||
                                          _model.dropDownInto1Value == ''))
                                  ? null
                                  : () async {
                                      _model.setupInto =
                                          await DiarioFinalizaSetupIntoCall
                                              .call(
                                        authToken: FFAppState().authToken,
                                        autoinmune: '-',
                                        nombreAuto: '-',
                                        tiempoAuto: '-',
                                        familiarAuto: '-',
                                        gradoAuto: '-',
                                        intestino:
                                            _model.dropDownIntestinoValue,
                                        tiempoIntestino:
                                            _model.dropDownTiempoIntestinoValue !=
                                                        null &&
                                                    _model.dropDownTiempoIntestinoValue !=
                                                        ''
                                                ? _model
                                                    .dropDownTiempoIntestinoValue
                                                : 'n/a',
                                        familiarInto:
                                            _model.dropDownFamIntoValue,
                                        gradoInto: _model
                                                        .dropDownGradoIntoValue !=
                                                    null &&
                                                _model.dropDownGradoIntoValue !=
                                                    ''
                                            ? _model.dropDownGradoIntoValue
                                            : 'n/a',
                                        into1: _model.dropDownInto1Value,
                                        tiempoInto1: _model
                                                        .dropDownTiempoInto1Value !=
                                                    null &&
                                                _model.dropDownTiempoInto1Value !=
                                                    ''
                                            ? _model.dropDownTiempoInto1Value
                                            : 'n/a',
                                        into2: _model.dropDownInto2Value !=
                                                    null &&
                                                _model.dropDownInto2Value != ''
                                            ? _model.dropDownInto2Value
                                            : 'n/a',
                                        tiempoInto2: _model
                                                        .dropDownTiempoInto2Value !=
                                                    null &&
                                                _model.dropDownTiempoInto2Value !=
                                                    ''
                                            ? _model.dropDownTiempoInto2Value
                                            : 'n/a',
                                        into3: _model.dropDownInto3Value !=
                                                    null &&
                                                _model.dropDownInto3Value != ''
                                            ? _model.dropDownInto3Value
                                            : 'n/a',
                                        tiempoInto3:
                                            _model.dropDownTiempoInto3Value1 !=
                                                        null &&
                                                    _model.dropDownTiempoInto3Value1 !=
                                                        ''
                                                ? _model
                                                    .dropDownTiempoInto3Value1
                                                : 'n/a',
                                        into4: _model.dropDownInto4Value !=
                                                    null &&
                                                _model.dropDownInto4Value != ''
                                            ? _model.dropDownInto4Value
                                            : 'n/a',
                                        tiempoInto4:
                                            _model.dropDownTiempoInto3Value2 !=
                                                        null &&
                                                    _model.dropDownTiempoInto3Value2 !=
                                                        ''
                                                ? _model
                                                    .dropDownTiempoInto3Value2
                                                : 'n/a',
                                      );

                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        isDismissible: false,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return GestureDetector(
                                            onTap: () => FocusScope.of(context)
                                                .unfocus(),
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: ModalFinSetupIntoWidget(),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));

                                      safeSetState(() {});
                                    },
                              text: FFLocalizations.of(context).getText(
                                'x6177gzs' /* Finalizar */,
                              ),
                              options: FFButtonOptions(
                                width: 300.0,
                                height: 44.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).azulPerm,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                                disabledColor: FlutterFlowTheme.of(context)
                                    .botonDesactivado,
                                disabledTextColor:
                                    FlutterFlowTheme.of(context).accent4,
                              ),
                            ),
                          ),
                        ].addToEnd(SizedBox(height: 100.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
    );
  }
}
