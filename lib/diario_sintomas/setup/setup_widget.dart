import '/backend/api_requests/api_calls.dart';
import '/diario_sintomas/modal_fin_setup/modal_fin_setup_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'setup_model.dart';
export 'setup_model.dart';

class SetupWidget extends StatefulWidget {
  const SetupWidget({
    super.key,
    required this.enfermedadId,
  });

  final int? enfermedadId;

  @override
  State<SetupWidget> createState() => _SetupWidgetState();
}

class _SetupWidgetState extends State<SetupWidget> {
  late SetupModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SetupModel());
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
          title: Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'na21u7wp' /* Configuración del Diario */,
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
                              '${FFAppState().nombre}${FFLocalizations.of(context).languageCode == 'es' ? ' necesitamos que respondas a las siguientes cuestiones, para terminar de configurar tu Diario de Síntomas.' : ' we need you to answer the following questions to finish setting up your Symptom Diary.'}',
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
                                'u9pc75l5' /* (esto solo te lo pediremos una... */,
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
                  if ((FFAppState().enfermedadId == 1) ||
                      (FFAppState().enfermedadId == 2) ||
                      (FFAppState().enfermedadId == 3) ||
                      (FFAppState().enfermedadId == 5) ||
                      (FFAppState().enfermedadId == 6) ||
                      (FFAppState().enfermedadId == 7) ||
                      (FFAppState().enfermedadId == 8) ||
                      (FFAppState().enfermedadId == 9))
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
                                    '46a4rb3f' /* ¿Tienes alguna enfermedad auto... */,
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
                                            .dropDownAutoinmuneValueController ??=
                                        FormFieldController<String>(null),
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        'rhf7qree' /* Si */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'yywexbl1' /* No */,
                                      )
                                    ],
                                    onChanged: (val) => safeSetState(() =>
                                        _model.dropDownAutoinmuneValue = val),
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
                                      'a2dr2mgw' /* Selecciona tu respuesta... */,
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
                                        16.0, 0.0, 16.0, 0.0),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                              ],
                            ),
                            if (_model.dropDownAutoinmuneValue == 'Si')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '68q94um6' /* ¿Cuál? */,
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
                                      future: DespEnfermedadesAutoinmunesCall
                                          .call(),
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
                                        final dropDownEnfAutoDespEnfermedadesAutoinmunesResponse =
                                            snapshot.data!;

                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownEnfAutoValueController ??=
                                              FormFieldController<String>(null),
                                          options: FFLocalizations.of(context)
                                                      .languageCode ==
                                                  'en'
                                              ? DespEnfermedadesAutoinmunesCall
                                                  .en(
                                                  dropDownEnfAutoDespEnfermedadesAutoinmunesResponse
                                                      .jsonBody,
                                                )!
                                              : DespEnfermedadesAutoinmunesCall
                                                  .es(
                                                  dropDownEnfAutoDespEnfermedadesAutoinmunesResponse
                                                      .jsonBody,
                                                )!,
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropDownEnfAutoValue =
                                                  val),
                                          width: 509.0,
                                          height: 50.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
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
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'hvbnxteh' /* Selecciona tu respuesta... */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .azulPerm,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .rellenoCampo2,
                                          elevation: 0.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 2.0,
                                          borderRadius: 12.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            if (_model.dropDownAutoinmuneValue == 'Si')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'ucs32y1r' /* ¿Cuánto tiempo llevas diagnost... */,
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
                                              .dropDownTiempoAutoValueController ??=
                                          FormFieldController<String>(null),
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          '1ozetcbr' /* Menos de 1 año */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'otqpgilv' /* De 1 a 3 años */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'dcgr4reb' /* De 3 a 5 años */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'tbvani4n' /* Más de 5 años */,
                                        )
                                      ],
                                      onChanged: (val) => safeSetState(() =>
                                          _model.dropDownTiempoAutoValue = val),
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
                                        'ykj68m93' /* Selecciona tu respuesta... */,
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
                                      isOverButton: false,
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
                                    'e8wfvixy' /* ¿Tienes algún familiar directo... */,
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
                                        _model.dropDownFamValueController ??=
                                            FormFieldController<String>(null),
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        'm2b0hv2u' /* Si */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        '9xaqbx2a' /* No */,
                                      )
                                    ],
                                    onChanged: (val) => safeSetState(
                                        () => _model.dropDownFamValue = val),
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
                                      'i0bji4uv' /* Selecciona tu respuesta... */,
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
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                              ],
                            ),
                            if (_model.dropDownFamValue == 'Si')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'lehyu3ml' /* Indica el grado familiar */,
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
                                              .dropDownGradoCovid1ValueController ??=
                                          FormFieldController<String>(null),
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'u4syvneq' /* Familiar de primer grado */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'r27ov6n9' /* Familiar de segundo grado */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'c97fw24x' /* Familiar de tercer grado */,
                                        )
                                      ],
                                      onChanged: (val) => safeSetState(() =>
                                          _model.dropDownGradoCovid1Value =
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
                                        'ws7sd1ck' /* Selecciona tu respuesta... */,
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
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  ),
                                ],
                              ),
                            if (FFAppState().authToken == '1')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'r2s2zyhp' /* ¿Tienes diagnóstico de síndrom... */,
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
                                              .dropDownIntestinoValueController1 ??=
                                          FormFieldController<String>(null),
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'x9d596we' /* Si */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'w3rfxree' /* No */,
                                        )
                                      ],
                                      onChanged: (val) => safeSetState(() =>
                                          _model.dropDownIntestinoValue1 = val),
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
                                        'qp2piw8n' /* Selecciona tu respuesta... */,
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
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  ),
                                ],
                              ),
                            if (_model.dropDownIntestinoValue1 == 'Si')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'lkcvyhkt' /* ¿Cuánto tiempo llevas diagnost... */,
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
                                              .dropDownTiempoIntestinoValueController1 ??=
                                          FormFieldController<String>(null),
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'xsw7ay5n' /* Menos de 1 año */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '56uzucp1' /* De 1 a 3 años */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          't0erjhg6' /* De 3 a 5 años */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'hx8tji0q' /* Más de 5 años */,
                                        )
                                      ],
                                      onChanged: (val) => safeSetState(() =>
                                          _model.dropDownTiempoIntestinoValue1 =
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
                                        'dh3k2rgz' /* Selecciona tu respuesta... */,
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
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  ),
                                ],
                              ),
                            if (FFAppState().authToken == '1')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '3x2d4dna' /* ¿Tienes algún familiar directo... */,
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
                                              .dropDownFamIntoValueController1 ??=
                                          FormFieldController<String>(null),
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'k3lsr9g3' /* Si */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'mjiox1lf' /* No */,
                                        )
                                      ],
                                      onChanged: (val) => safeSetState(() =>
                                          _model.dropDownFamIntoValue1 = val),
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
                                        'y3r27gwm' /* Selecciona tu respuesta... */,
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
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  ),
                                ],
                              ),
                            if (_model.dropDownFamIntoValue1 == 'Si')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'lcsd5zhg' /* Indica el grado familiar */,
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
                                              .dropDownGradoIntoValueController1 ??=
                                          FormFieldController<String>(null),
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'xj7zlhva' /* Familiar de primer grado */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'fmwdubjm' /* Familiar de segundo grado */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'vez383ow' /* Familiar de tercer grado */,
                                        )
                                      ],
                                      onChanged: (val) => safeSetState(() =>
                                          _model.dropDownGradoIntoValue1 = val),
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
                                        '0s3r7vii' /* Selecciona tu respuesta... */,
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
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  ),
                                ],
                              ),
                            if (FFAppState().authToken == '1')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'lfkl2r4g' /* ¿Tienes alguna sensibilidad/in... */,
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
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
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
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'fes13fcg' /* Selecciona tu respuesta... */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .azulPerm,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .rellenoCampo2,
                                          elevation: 0.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 2.0,
                                          borderRadius: 12.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            if (_model.dropDownInto1Value != null &&
                                _model.dropDownInto1Value != '')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '80tmgdrk' /* ¿Cuánto tiempo llevas diagnost... */,
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
                                              .dropDownTiempoInto1ValueController1 ??=
                                          FormFieldController<String>(null),
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'sls180m2' /* Menos de 1 año */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'glo12224' /* De 1 a 3 años */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'zylci1au' /* De 3 a 5 años */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'gtxi9n5w' /* Más de 5 años */,
                                        )
                                      ],
                                      onChanged: (val) => safeSetState(() =>
                                          _model.dropDownTiempoInto1Value1 =
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
                                        '44rsaeul' /* Selecciona tu respuesta... */,
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
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  ),
                                ],
                              ),
                            if (_model.dropDownInto1Value != null &&
                                _model.dropDownInto1Value != '')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'dkvkxqft' /* ¿Tienes otra sensibilidad/into... */,
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
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
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
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'n92lgyxk' /* Selecciona tu respuesta... */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .azulPerm,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .rellenoCampo2,
                                          elevation: 0.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 2.0,
                                          borderRadius: 12.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            if (_model.dropDownInto2Value != null &&
                                _model.dropDownInto2Value != '')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'c2aiue3u' /* ¿Cuánto tiempo llevas diagnost... */,
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
                                              .dropDownTiempoInto2ValueController1 ??=
                                          FormFieldController<String>(null),
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          '21a683zi' /* Menos de 1 año */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '3otcg5vn' /* De 1 a 3 años */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ht8poswr' /* De 3 a 5 años */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '810dab81' /* Más de 5 años */,
                                        )
                                      ],
                                      onChanged: (val) => safeSetState(() =>
                                          _model.dropDownTiempoInto2Value1 =
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
                                        'fq4mtgt9' /* Selecciona tu respuesta... */,
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
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  ),
                                ],
                              ),
                            if (_model.dropDownInto2Value != null &&
                                _model.dropDownInto2Value != '')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'nptaq986' /* ¿Tienes otra sensibilidad/into... */,
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
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
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
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'hv3feqgi' /* Selecciona tu respuesta... */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .azulPerm,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .rellenoCampo2,
                                          elevation: 0.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 2.0,
                                          borderRadius: 12.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            if (_model.dropDownTiempoInto3Value1 != null &&
                                _model.dropDownTiempoInto3Value1 != '')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'kkt45m4z' /* ¿Cuánto tiempo llevas diagnost... */,
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
                                          '5jbjff6t' /* Menos de 1 año */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '2nwswzk9' /* De 1 a 3 años */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '9u1vfluc' /* De 3 a 5 años */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'i2xitvvk' /* Más de 5 años */,
                                        )
                                      ],
                                      onChanged: (val) => safeSetState(() =>
                                          _model.dropDownTiempoInto3Value1 =
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
                                        'nkmd286h' /* Selecciona tu respuesta... */,
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
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  ),
                                ],
                              ),
                            if (_model.dropDownInto3nValue != null &&
                                _model.dropDownInto3nValue != '')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'h0jaqzot' /* ¿Tienes otra sensibilidad/into... */,
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
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
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
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            '8cen09xg' /* Selecciona tu respuesta... */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .azulPerm,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .rellenoCampo2,
                                          elevation: 0.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 2.0,
                                          borderRadius: 12.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            if (_model.dropDownInto4Value != null &&
                                _model.dropDownInto4Value != '')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'imjkryb9' /* ¿Cuánto tiempo llevas diagnost... */,
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
                                              .dropDownTiempoInto4ValueController1 ??=
                                          FormFieldController<String>(null),
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          '43k1rqb2' /* Menos de 1 año */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'txm04smg' /* De 1 a 3 años */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'cu576z5i' /* De 3 a 5 años */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '2qb4wfhz' /* Más de 5 años */,
                                        )
                                      ],
                                      onChanged: (val) => safeSetState(() =>
                                          _model.dropDownTiempoInto4Value1 =
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
                                        'sgvwy6vu' /* Selecciona tu respuesta... */,
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
                                      isOverButton: false,
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
                                onPressed: ((_model.dropDownAutoinmuneValue ==
                                                null ||
                                            _model.dropDownAutoinmuneValue ==
                                                '') ||
                                        (_model.dropDownFamValue == null ||
                                            _model.dropDownFamValue == ''))
                                    ? null
                                    : () async {
                                        _model.apiResultv8h =
                                            await DiarioFinalizaSetupCall.call(
                                          authToken: FFAppState().authToken,
                                          autoinmune:
                                              _model.dropDownAutoinmuneValue,
                                          nombreAuto: _model
                                                          .dropDownEnfAutoValue !=
                                                      null &&
                                                  _model.dropDownEnfAutoValue !=
                                                      ''
                                              ? _model.dropDownEnfAutoValue
                                              : 'n/a',
                                          tiempoAuto:
                                              _model.dropDownTiempoAutoValue !=
                                                          null &&
                                                      _model.dropDownTiempoAutoValue !=
                                                          ''
                                                  ? _model
                                                      .dropDownTiempoAutoValue
                                                  : 'n/a',
                                          familiarAuto: _model.dropDownFamValue,
                                          gradoAuto:
                                              _model.dropDownGradoCovid1Value !=
                                                          null &&
                                                      _model.dropDownGradoCovid1Value !=
                                                          ''
                                                  ? _model
                                                      .dropDownGradoCovid1Value
                                                  : 'n/a',
                                          intestino:
                                              _model.dropDownIntestinoValue1 !=
                                                          null &&
                                                      _model.dropDownIntestinoValue1 !=
                                                          ''
                                                  ? _model
                                                      .dropDownIntestinoValue1
                                                  : 'n/a',
                                          tiempoIntestino: _model
                                                          .dropDownTiempoIntestinoValue1 !=
                                                      null &&
                                                  _model.dropDownTiempoIntestinoValue1 !=
                                                      ''
                                              ? _model
                                                  .dropDownTiempoIntestinoValue1
                                              : 'n/a',
                                          familiarInto: _model
                                                          .dropDownFamIntoValue1 !=
                                                      null &&
                                                  _model.dropDownFamIntoValue1 !=
                                                      ''
                                              ? _model.dropDownFamIntoValue1
                                              : 'n/a',
                                          gradoInto:
                                              _model.dropDownGradoIntoValue1 !=
                                                          null &&
                                                      _model.dropDownGradoIntoValue1 !=
                                                          ''
                                                  ? _model.dropDownEnfAutoValue
                                                  : 'n/a',
                                          into1: _model.dropDownInto1Value !=
                                                      null &&
                                                  _model.dropDownInto1Value !=
                                                      ''
                                              ? _model.dropDownInto1Value
                                              : 'n/a',
                                          tiempoInto1:
                                              _model.dropDownTiempoInto1Value1 !=
                                                          null &&
                                                      _model.dropDownTiempoInto1Value1 !=
                                                          ''
                                                  ? _model
                                                      .dropDownTiempoInto1Value1
                                                  : 'n/a',
                                          into2: _model.dropDownInto2Value !=
                                                      null &&
                                                  _model.dropDownInto2Value !=
                                                      ''
                                              ? _model.dropDownInto2Value
                                              : 'n/a',
                                          tiempoInto2:
                                              _model.dropDownTiempoInto2Value1 !=
                                                          null &&
                                                      _model.dropDownTiempoInto2Value1 !=
                                                          ''
                                                  ? _model
                                                      .dropDownTiempoInto2Value1
                                                  : 'n/a',
                                          into3: _model.dropDownInto3Value !=
                                                      null &&
                                                  _model.dropDownInto3Value !=
                                                      ''
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
                                        );

                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          isDismissible: false,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () =>
                                                  FocusScope.of(context)
                                                      .unfocus(),
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: ModalFinSetupWidget(),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));

                                        safeSetState(() {});
                                      },
                                text: FFLocalizations.of(context).getText(
                                  'j4aiyde5' /* Finalizar */,
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
                  if (FFAppState().enfermedadId == 4)
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
                                    '730du81g' /* ¿Tienes diagnóstico de síndrom... */,
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
                                            .dropDownIntestinoValueController2 ??=
                                        FormFieldController<String>(null),
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        'ukq9re79' /* Si */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'hk6ui87f' /* No */,
                                      )
                                    ],
                                    onChanged: (val) => safeSetState(() =>
                                        _model.dropDownIntestinoValue2 = val),
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
                                      '59au0z45' /* Selecciona tu respuesta... */,
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
                                        16.0, 4.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                              ],
                            ),
                            if (_model.dropDownIntestinoValue2 == 'Si')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'wh5cldwz' /* ¿Cuánto tiempo llevas diagnost... */,
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
                                              .dropDownTiempoIntestinoValueController2 ??=
                                          FormFieldController<String>(null),
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'x16yruv6' /* Menos de 1 año */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ix90xb5m' /* De 1 a 3 años */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          's4vw4yvt' /* De 3 a 5 años */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ki149b9d' /* Más de 5 años */,
                                        )
                                      ],
                                      onChanged: (val) => safeSetState(() =>
                                          _model.dropDownTiempoIntestinoValue2 =
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
                                        '296li1wg' /* Selecciona tu respuesta... */,
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
                                          16.0, 4.0, 16.0, 4.0),
                                      hidesUnderline: true,
                                      isOverButton: false,
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
                                    '84u4vt5q' /* ¿Tienes algún familiar directo... */,
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
                                            .dropDownFamIntoValueController2 ??=
                                        FormFieldController<String>(null),
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        'br9rfuhs' /* Si */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'm7z1dp4v' /* No */,
                                      )
                                    ],
                                    onChanged: (val) => safeSetState(() =>
                                        _model.dropDownFamIntoValue2 = val),
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
                                      '1kizh8wh' /* Selecciona tu respuesta... */,
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
                                        16.0, 4.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                              ],
                            ),
                            if (_model.dropDownFamIntoValue2 == 'Si')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'pg12sf1l' /* Indica el grado familiar */,
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
                                              .dropDownGradoIntoValueController2 ??=
                                          FormFieldController<String>(null),
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'zhlyfvt9' /* Familiar de primer grado */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'po0c345k' /* Familiar de segundo grado */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '5hbfu19b' /* Familiar de tercer grado */,
                                        )
                                      ],
                                      onChanged: (val) => safeSetState(() =>
                                          _model.dropDownGradoIntoValue2 = val),
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
                                        'cteauoy2' /* Selecciona tu respuesta... */,
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
                                          16.0, 4.0, 16.0, 4.0),
                                      hidesUnderline: true,
                                      isOverButton: false,
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
                                    'um4d2cwd' /* ¿Tienes alguna sensibilidad/in... */,
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
                                      final dropDownInto1nDespIntoleranciasResponse =
                                          snapshot.data!;

                                      return FlutterFlowDropDown<String>(
                                        controller: _model
                                                .dropDownInto1nValueController ??=
                                            FormFieldController<String>(null),
                                        options: FFLocalizations.of(context)
                                                    .languageCode ==
                                                'en'
                                            ? DespIntoleranciasCall.en(
                                                dropDownInto1nDespIntoleranciasResponse
                                                    .jsonBody,
                                              )!
                                            : DespIntoleranciasCall.es(
                                                dropDownInto1nDespIntoleranciasResponse
                                                    .jsonBody,
                                              )!,
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownInto1nValue = val),
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
                                          '91910ny0' /* Selecciona tu respuesta... */,
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
                                            16.0, 4.0, 16.0, 4.0),
                                        hidesUnderline: true,
                                        isOverButton: false,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                            if (_model.dropDownInto1nValue != null &&
                                _model.dropDownInto1nValue != '')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '0gfwcbyo' /* ¿Cuánto tiempo llevas diagnost... */,
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
                                              .dropDownTiempoInto1ValueController2 ??=
                                          FormFieldController<String>(null),
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'v2svcbnj' /* Menos de 1 año */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '19xk4afn' /* De 1 a 3 años */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'j63wmjzf' /* De 3 a 5 años */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ufnlgmwo' /* Más de 5 años */,
                                        )
                                      ],
                                      onChanged: (val) => safeSetState(() =>
                                          _model.dropDownTiempoInto1Value2 =
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
                                        'k374uuru' /* Selecciona tu respuesta... */,
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
                                          16.0, 4.0, 16.0, 4.0),
                                      hidesUnderline: true,
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  ),
                                ],
                              ),
                            if (_model.dropDownInto1nValue != null &&
                                _model.dropDownInto1nValue != '')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'axvsen7q' /* ¿Tienes otra sensibilidad/into... */,
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
                                        final dropDownInto2nDespIntoleranciasResponse =
                                            snapshot.data!;

                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownInto2nValueController ??=
                                              FormFieldController<String>(null),
                                          options: FFLocalizations.of(context)
                                                      .languageCode ==
                                                  'en'
                                              ? DespIntoleranciasCall.en(
                                                  dropDownInto2nDespIntoleranciasResponse
                                                      .jsonBody,
                                                )!
                                              : DespIntoleranciasCall.es(
                                                  dropDownInto2nDespIntoleranciasResponse
                                                      .jsonBody,
                                                )!,
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropDownInto2nValue = val),
                                          width: 509.0,
                                          height: 50.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
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
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'bvj428op' /* Selecciona tu respuesta... */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .azulPerm,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .rellenoCampo2,
                                          elevation: 0.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 2.0,
                                          borderRadius: 12.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 4.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            if (_model.dropDownInto2nValue != null &&
                                _model.dropDownInto2nValue != '')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'xp5ndgnr' /* ¿Cuánto tiempo llevas diagnost... */,
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
                                              .dropDownTiempoInto2ValueController2 ??=
                                          FormFieldController<String>(null),
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'snvylgs4' /* Menos de 1 año */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'eumzivji' /* De 1 a 3 años */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'gg29hzyu' /* De 3 a 5 años */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'uh91z6qx' /* Más de 5 años */,
                                        )
                                      ],
                                      onChanged: (val) => safeSetState(() =>
                                          _model.dropDownTiempoInto2Value2 =
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
                                        'pjcb8wpj' /* Selecciona tu respuesta... */,
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
                                          16.0, 4.0, 16.0, 4.0),
                                      hidesUnderline: true,
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  ),
                                ],
                              ),
                            if (_model.dropDownInto2nValue != null &&
                                _model.dropDownInto2nValue != '')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'vmfrzjuj' /* ¿Tienes otra sensibilidad/into... */,
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
                                        final dropDownInto3nDespIntoleranciasResponse =
                                            snapshot.data!;

                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownInto3nValueController ??=
                                              FormFieldController<String>(null),
                                          options: FFLocalizations.of(context)
                                                      .languageCode ==
                                                  'en'
                                              ? DespIntoleranciasCall.en(
                                                  dropDownInto3nDespIntoleranciasResponse
                                                      .jsonBody,
                                                )!
                                              : DespIntoleranciasCall.es(
                                                  dropDownInto3nDespIntoleranciasResponse
                                                      .jsonBody,
                                                )!,
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropDownInto3nValue = val),
                                          width: 509.0,
                                          height: 50.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
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
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            '04gvb307' /* Selecciona tu respuesta... */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .azulPerm,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .rellenoCampo2,
                                          elevation: 0.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 2.0,
                                          borderRadius: 12.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 4.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            if (_model.dropDownInto3nValue != null &&
                                _model.dropDownInto3nValue != '')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'w0b2kkib' /* ¿Cuánto tiempo llevas diagnost... */,
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
                                          '0nzjwlcy' /* Menos de 1 año */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'mzvsxisg' /* De 1 a 3 años */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'tm1btpva' /* De 3 a 5 años */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '5nya9ssw' /* Más de 5 años */,
                                        )
                                      ],
                                      onChanged: (val) => safeSetState(() =>
                                          _model.dropDownTiempoInto3Value2 =
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
                                        '1tie1t4i' /* Selecciona tu respuesta... */,
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
                                          16.0, 4.0, 16.0, 4.0),
                                      hidesUnderline: true,
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  ),
                                ],
                              ),
                            if (_model.dropDownInto3nValue != null &&
                                _model.dropDownInto3nValue != '')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'yvqmuvo3' /* ¿Tienes otra sensibilidad/into... */,
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
                                        final dropDownInto4nDespIntoleranciasResponse =
                                            snapshot.data!;

                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownInto4nValueController ??=
                                              FormFieldController<String>(null),
                                          options: FFLocalizations.of(context)
                                                      .languageCode ==
                                                  'en'
                                              ? DespIntoleranciasCall.en(
                                                  dropDownInto4nDespIntoleranciasResponse
                                                      .jsonBody,
                                                )!
                                              : DespIntoleranciasCall.es(
                                                  dropDownInto4nDespIntoleranciasResponse
                                                      .jsonBody,
                                                )!,
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropDownInto4nValue = val),
                                          width: 509.0,
                                          height: 50.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
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
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'vguothro' /* Selecciona tu respuesta... */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .azulPerm,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .rellenoCampo2,
                                          elevation: 0.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 2.0,
                                          borderRadius: 12.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 4.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            if (_model.dropDownInto4nValue != null &&
                                _model.dropDownInto4nValue != '')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'oj7zrmxu' /* ¿Cuánto tiempo llevas diagnost... */,
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
                                              .dropDownTiempoInto4ValueController2 ??=
                                          FormFieldController<String>(null),
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'x0s3ppu6' /* Menos de 1 año */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '6s3unwvw' /* De 1 a 3 años */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'inzoomh5' /* De 3 a 5 años */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'zjbgvo94' /* Más de 5 años */,
                                        )
                                      ],
                                      onChanged: (val) => safeSetState(() =>
                                          _model.dropDownTiempoInto4Value2 =
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
                                        'jwtfdnw9' /* Selecciona tu respuesta... */,
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
                                          16.0, 4.0, 16.0, 4.0),
                                      hidesUnderline: true,
                                      isOverButton: false,
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
                                onPressed: ((_model.dropDownIntestinoValue2 ==
                                                null ||
                                            _model.dropDownIntestinoValue2 ==
                                                '') ||
                                        (_model.dropDownFamIntoValue2 == null ||
                                            _model.dropDownFamIntoValue2 ==
                                                '') ||
                                        (_model.dropDownInto1nValue == null ||
                                            _model.dropDownInto1nValue == ''))
                                    ? null
                                    : () async {
                                        _model.apiResultv8h2 =
                                            await DiarioFinalizaSetupCall.call(
                                          authToken: FFAppState().authToken,
                                          autoinmune: 'n/a',
                                          nombreAuto: 'n/a',
                                          tiempoAuto: 'n/a',
                                          familiarAuto: 'n/a',
                                          gradoAuto: 'n/a',
                                          intestino:
                                              _model.dropDownIntestinoValue2,
                                          tiempoIntestino: _model
                                                          .dropDownTiempoIntestinoValue2 !=
                                                      null &&
                                                  _model.dropDownTiempoIntestinoValue2 !=
                                                      ''
                                              ? _model
                                                  .dropDownTiempoIntestinoValue2
                                              : 'n/a',
                                          familiarInto:
                                              _model.dropDownFamIntoValue2,
                                          gradoInto:
                                              _model.dropDownGradoIntoValue2 !=
                                                          null &&
                                                      _model.dropDownGradoIntoValue2 !=
                                                          ''
                                                  ? _model
                                                      .dropDownGradoIntoValue2
                                                  : 'n/a',
                                          into1: _model.dropDownInto1nValue,
                                          tiempoInto1:
                                              _model.dropDownTiempoInto1Value2 !=
                                                          null &&
                                                      _model.dropDownTiempoInto1Value2 !=
                                                          ''
                                                  ? _model
                                                      .dropDownTiempoInto1Value2
                                                  : 'n/a',
                                          into2: _model.dropDownInto2nValue !=
                                                      null &&
                                                  _model.dropDownInto2nValue !=
                                                      ''
                                              ? _model.dropDownInto2nValue
                                              : 'n/a',
                                          tiempoInto2:
                                              _model.dropDownTiempoInto2Value2 !=
                                                          null &&
                                                      _model.dropDownTiempoInto2Value2 !=
                                                          ''
                                                  ? _model
                                                      .dropDownTiempoInto2Value2
                                                  : 'n/a',
                                          into3: _model.dropDownInto3nValue !=
                                                      null &&
                                                  _model.dropDownInto3nValue !=
                                                      ''
                                              ? _model.dropDownInto3nValue
                                              : 'n/a',
                                          tiempoInto3:
                                              _model.dropDownTiempoInto3Value2 !=
                                                          null &&
                                                      _model.dropDownTiempoInto3Value2 !=
                                                          ''
                                                  ? _model
                                                      .dropDownTiempoInto3Value2
                                                  : 'n/a',
                                          into4: _model.dropDownInto4nValue !=
                                                      null &&
                                                  _model.dropDownInto4nValue !=
                                                      ''
                                              ? _model.dropDownInto4nValue
                                              : 'n/a',
                                          tiempoInto4:
                                              _model.dropDownTiempoInto4Value2 !=
                                                          null &&
                                                      _model.dropDownTiempoInto4Value2 !=
                                                          ''
                                                  ? _model
                                                      .dropDownTiempoInto4Value2
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
                                              onTap: () =>
                                                  FocusScope.of(context)
                                                      .unfocus(),
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: ModalFinSetupWidget(),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));

                                        safeSetState(() {});
                                      },
                                text: FFLocalizations.of(context).getText(
                                  'qyjshlaz' /* Finalizar */,
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
