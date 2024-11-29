import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/registro/modal_cancela_sign/modal_cancela_sign_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'sign_up_detalle_enfermedad_model.dart';
export 'sign_up_detalle_enfermedad_model.dart';

class SignUpDetalleEnfermedadWidget extends StatefulWidget {
  const SignUpDetalleEnfermedadWidget({
    super.key,
    required this.editando,
  });

  final String? editando;

  @override
  State<SignUpDetalleEnfermedadWidget> createState() =>
      _SignUpDetalleEnfermedadWidgetState();
}

class _SignUpDetalleEnfermedadWidgetState
    extends State<SignUpDetalleEnfermedadWidget> {
  late SignUpDetalleEnfermedadModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpDetalleEnfermedadModel());

    _model.textFieldOtrasCovid1TextController ??= TextEditingController();
    _model.textFieldOtrasCovid1FocusNode ??= FocusNode();

    _model.textFieldOtrasCovid2TextController ??= TextEditingController();
    _model.textFieldOtrasCovid2FocusNode ??= FocusNode();

    _model.textFieldOtrasCovid3TextController ??= TextEditingController();
    _model.textFieldOtrasCovid3FocusNode ??= FocusNode();

    _model.textFieldOtrasCovid4TextController ??= TextEditingController();
    _model.textFieldOtrasCovid4FocusNode ??= FocusNode();

    _model.textFieldOtrasCovid5TextController ??= TextEditingController();
    _model.textFieldOtrasCovid5FocusNode ??= FocusNode();

    _model.textFieldOtrasCovid6TextController ??= TextEditingController();
    _model.textFieldOtrasCovid6FocusNode ??= FocusNode();

    _model.textFieldOtrasCovid7TextController ??= TextEditingController();
    _model.textFieldOtrasCovid7FocusNode ??= FocusNode();

    _model.textFieldOtrasCovidTextController ??= TextEditingController();
    _model.textFieldOtrasCovidFocusNode ??= FocusNode();

    _model.textFieldOtrasCovid9TextController ??= TextEditingController();
    _model.textFieldOtrasCovid9FocusNode ??= FocusNode();
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
                  'signUpEnfermedad',
                  queryParameters: {
                    'editando': serializeParam(
                      widget!.editando,
                      ParamType.String,
                    ),
                  }.withoutNulls,
                );
              },
            ),
            title: Text(
              FFLocalizations.of(context).getText(
                'v0bfny9h' /* Más información */,
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
          body: SafeArea(
            top: true,
            child: Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(32.0, 10.0, 32.0, 32.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: Text(
                          FFLocalizations.of(context).languageCode == 'es'
                              ? FFAppState().enfermedadTxt
                              : FFAppState().enfemedadTxtEn,
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 18.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'ftxcjcvr' /* Ahora necesitamos conocer algo... */,
                          ),
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                      if (FFAppState().xUserId == 129986556)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 15.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 320.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: LinearPercentIndicator(
                                  percent: 0.75,
                                  width: 330.0,
                                  lineHeight: 20.0,
                                  animation: true,
                                  animateFromLastPercent: true,
                                  progressColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  backgroundColor: Colors.transparent,
                                  center: Text(
                                    FFLocalizations.of(context).getText(
                                      'miqs793k' /* 75% */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily: 'Open Sans',
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  barRadius: Radius.circular(5.0),
                                  padding: EdgeInsets.zero,
                                ),
                              ),
                            ],
                          ),
                        ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownGeneroValueController ??=
                              FormFieldController<String>(null),
                          options: [
                            FFLocalizations.of(context).getText(
                              'ek3xlwpc' /* Femenino */,
                            ),
                            FFLocalizations.of(context).getText(
                              'ofi0b6nt' /* Masculino */,
                            )
                          ],
                          onChanged: (val) => safeSetState(
                              () => _model.dropDownGeneroValue = val),
                          width: 509.0,
                          height: 50.0,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 15.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                          hintText: FFLocalizations.of(context).getText(
                            'aetdrzy5' /* ¿Cuál es tu género? */,
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).azulPerm,
                            size: 24.0,
                          ),
                          fillColor: FlutterFlowTheme.of(context).rellenoCampo2,
                          elevation: 0.0,
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
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownFumadorValueController ??=
                              FormFieldController<String>(null),
                          options: [
                            FFLocalizations.of(context).getText(
                              'zrj6y4nk' /* No */,
                            ),
                            FFLocalizations.of(context).getText(
                              'qz75u12o' /* Si */,
                            )
                          ],
                          onChanged: (val) => safeSetState(
                              () => _model.dropDownFumadorValue = val),
                          width: 509.0,
                          height: 50.0,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 15.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                          hintText: FFLocalizations.of(context).getText(
                            'uam2dz4k' /* ¿Eres fumadora? */,
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).azulPerm,
                            size: 24.0,
                          ),
                          fillColor: FlutterFlowTheme.of(context).rellenoCampo2,
                          elevation: 0.0,
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
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownAlcoholValueController ??=
                              FormFieldController<String>(null),
                          options: [
                            FFLocalizations.of(context).getText(
                              'ndor5m17' /* Nada */,
                            ),
                            FFLocalizations.of(context).getText(
                              '3bv5uxai' /* Social */,
                            ),
                            FFLocalizations.of(context).getText(
                              'y8znx99t' /* Diario */,
                            )
                          ],
                          onChanged: (val) => safeSetState(
                              () => _model.dropDownAlcoholValue = val),
                          width: 509.0,
                          height: 50.0,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 15.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                          hintText: FFLocalizations.of(context).getText(
                            '02tno779' /* ¿Consumes Alcohol? */,
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).azulPerm,
                            size: 24.0,
                          ),
                          fillColor: FlutterFlowTheme.of(context).rellenoCampo2,
                          elevation: 0.0,
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
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: DespPesoCall.call(),
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
                            final dropDownPesoDespPesoResponse = snapshot.data!;

                            return FlutterFlowDropDown<int>(
                              controller: _model.dropDownPesoValueController ??=
                                  FormFieldController<int>(
                                _model.dropDownPesoValue ??= 0,
                              ),
                              options: List<int>.from(DespPesoCall.num(
                                dropDownPesoDespPesoResponse.jsonBody,
                              )!),
                              optionLabels: DespPesoCall.txt(
                                dropDownPesoDespPesoResponse.jsonBody,
                              )!,
                              onChanged: (val) => safeSetState(
                                  () => _model.dropDownPesoValue = val),
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
                                'tsiybb7q' /* Selecciona tu peso */,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: FlutterFlowTheme.of(context).azulPerm,
                                size: 24.0,
                              ),
                              fillColor:
                                  FlutterFlowTheme.of(context).rellenoCampo2,
                              elevation: 0.0,
                              borderColor: Colors.transparent,
                              borderWidth: 2.0,
                              borderRadius: 12.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: DespAlturaCall.call(),
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
                            final dropDownAlturaDespAlturaResponse =
                                snapshot.data!;

                            return FlutterFlowDropDown<int>(
                              controller:
                                  _model.dropDownAlturaValueController ??=
                                      FormFieldController<int>(
                                _model.dropDownAlturaValue ??= 0,
                              ),
                              options: List<int>.from(DespAlturaCall.num(
                                dropDownAlturaDespAlturaResponse.jsonBody,
                              )!),
                              optionLabels: DespAlturaCall.txt(
                                dropDownAlturaDespAlturaResponse.jsonBody,
                              )!,
                              onChanged: (val) => safeSetState(
                                  () => _model.dropDownAlturaValue = val),
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
                                'ml1c99ac' /* Selecciona tu altura */,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: FlutterFlowTheme.of(context).azulPerm,
                                size: 24.0,
                              ),
                              fillColor:
                                  FlutterFlowTheme.of(context).rellenoCampo2,
                              elevation: 0.0,
                              borderColor: Colors.transparent,
                              borderWidth: 2.0,
                              borderRadius: 12.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            );
                          },
                        ),
                      ),
                      if (FFAppState().enfermedadId == 1)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
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
                                        '501vjygi' /* ¿En qué año te infectaste con ... */,
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
                                                .dropDownYearCovid1ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            '846kfcjg' /* 2020 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '9az8ul7h' /* 2021 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'qlzntzsi' /* 2022 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'n1wkn8iz' /* 2023 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'pqt1zwh6' /* 2024 */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownYearCovid1Value =
                                                val),
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
                                          'xtc2t16b' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        '0et0o6am' /* ¿Cuántas veces te has contagia... */,
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
                                                .dropDownVecesCovid1ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'vj6k7if2' /* 1 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '55t0plmu' /* 2 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'b1ovgiy7' /* 3 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '0t0jiwvf' /* 4 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '584keajy' /* 5 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'qawi6fqo' /* 6 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '6fbftetz' /* 7 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'mvkxqsc9' /* 8 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'busj8dhm' /* 9 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'hwruok4h' /* 10 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '6xptshyv' /* Más de una vez */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownVecesCovid1Value =
                                                val),
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
                                          'vemo42xm' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'axfrptsc' /* ¿Tienes algún familiar directo... */,
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
                                                .dropDownFamiliarCovid1ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            '65vs9c8a' /* Si */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '31e4wzeg' /* No */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownFamiliarCovid1Value =
                                                val),
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
                                          '2wxnmqig' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                  ],
                                ),
                                if (_model.dropDownFamiliarCovid1Value == 'Si')
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'k199rfjc' /* Indica el grado familiar */,
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
                                              'enseo557' /* Familiar de primer grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              '3v7ssf6l' /* Familiar de segundo grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'pvq4v9ij' /* Familiar de tercer grado */,
                                            )
                                          ],
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropDownGradoCovid1Value =
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
                                            'ms85xsz0' /* Selecciona tu respuesta... */,
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
                                        'bw9zvjud' /* Escribe aquí tus otras enferme... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    TextFormField(
                                      controller: _model
                                          .textFieldOtrasCovid1TextController,
                                      focusNode:
                                          _model.textFieldOtrasCovid1FocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
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
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .rellenoCampo2,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      maxLines: null,
                                      validator: _model
                                          .textFieldOtrasCovid1TextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 16.0),
                                  child: FFButtonWidget(
                                    onPressed: ((_model
                                                        .dropDownGeneroValue ==
                                                    null ||
                                                _model
                                                        .dropDownGeneroValue ==
                                                    '') ||
                                            (_model
                                                        .dropDownFumadorValue ==
                                                    null ||
                                                _model
                                                        .dropDownFumadorValue ==
                                                    '') ||
                                            (_model
                                                        .dropDownAlcoholValue ==
                                                    null ||
                                                _model
                                                        .dropDownAlcoholValue ==
                                                    '') ||
                                            (_model
                                                    .dropDownPesoValue ==
                                                null) ||
                                            (_model
                                                    .dropDownAlturaValue ==
                                                null) ||
                                            (_model.dropDownYearCovid1Value ==
                                                    null ||
                                                _model
                                                        .dropDownYearCovid1Value ==
                                                    '') ||
                                            (_model.dropDownVecesCovid1Value ==
                                                    null ||
                                                _model.dropDownVecesCovid1Value ==
                                                    '') ||
                                            (_model.dropDownFamiliarCovid1Value ==
                                                    null ||
                                                _model.dropDownFamiliarCovid1Value ==
                                                    ''))
                                        ? null
                                        : () async {
                                            _model.enf1 =
                                                await SignUpFinalizaCopyCall
                                                    .call(
                                              userId: FFAppState().xUserId,
                                              genero:
                                                  _model.dropDownGeneroValue,
                                              fumador:
                                                  _model.dropDownFumadorValue,
                                              alcohol:
                                                  _model.dropDownAlcoholValue,
                                              peso: _model.dropDownPesoValue,
                                              altura:
                                                  _model.dropDownAlturaValue,
                                              yearCovid: _model
                                                  .dropDownYearCovid1Value,
                                              vecesCovid: _model
                                                  .dropDownVecesCovid1Value,
                                              familiarCovid: _model
                                                  .dropDownFamiliarCovid1Value,
                                              gradoCovid: _model
                                                  .dropDownGradoCovid1Value,
                                              otrasEnfermedades: functions
                                                  .formatTextwithLineBreaksToXano(
                                                      functions
                                                          .removeDoubleQuotationMarksFromText(
                                                              _model
                                                                  .textFieldOtrasCovid1TextController
                                                                  .text)),
                                              eventoFibro: 'n/a',
                                              tiempoFibro: 'n/a',
                                              empeoraSintomaFibro: 'n/a',
                                              familiarFibro: 'n/a',
                                              gradoFibro: 'n/a',
                                              tiempoEm: 'n/a',
                                              criteriosEm: 'n/a',
                                              familiarEm: 'n/a',
                                              gradoEm: 'n/a',
                                              nombreAuto: 'n/a',
                                              tiempoAuto: 'n/a',
                                              familiarAuto: 'n/a',
                                              gradoAuto: 'n/a',
                                              eventoEm: 'n/a',
                                            );

                                            FFAppState().creadoOk = 'si';
                                            FFAppState().tmpPwd = '';

                                            context.pushNamed(
                                              'Home',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                ),
                                              },
                                            );

                                            safeSetState(() {});
                                          },
                                    text: FFLocalizations.of(context).getText(
                                      'h937d3bn' /* Finalizar */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 300.0,
                                      height: 44.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).azulPerm,
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
                                      disabledColor:
                                          FlutterFlowTheme.of(context)
                                              .botonDesactivado,
                                      disabledTextColor:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      if (FFAppState().enfermedadId == 2)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
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
                                        'g4zat2m1' /* ¿Tras qué evento desarrollaste... */,
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
                                                .dropDownEventoFibro2ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'qcj6fq48' /* No lo sé */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'hzc5tek3' /* Infección viral o resfriado */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'p4tvp36u' /* Tras una cirugía */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '9blpvq3g' /* Tras un accidente */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '0m4prlij' /* Tras estancia hospitalaria */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'mim6wql1' /* Estrés */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'v8eqnhmq' /* Postparto */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownEventoFibro2Value =
                                                val),
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
                                          'xdcusyx6' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'znxz8l41' /* ¿Cuánto tiempo llevas diagnost... */,
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
                                                .dropDownTiempoFibro2ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'tx9i4ghr' /* Menos de 1 año */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'nsry0vbz' /* de 1 a 3 años */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '05t9o80i' /* de 3 a 5 años */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'phh9pkq1' /* más de 5 años */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownTiempoFibro2Value =
                                                val),
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
                                          '5wz9s42j' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'chawyo52' /* ¿Empeoran tus síntomas tras un... */,
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
                                                .dropDownEmpeoraFibro2ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'y6t8v16g' /* Si */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'denaqaju' /* No */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownEmpeoraFibro2Value =
                                                val),
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
                                          '2v4lrvx9' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'iqqpdxgl' /* ¿Tienes algún familiar directo... */,
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
                                                .dropDownFamiliarFibro2ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'w19ce6zz' /* Si */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'rz2t6hum' /* No */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownFamiliarFibro2Value =
                                                val),
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
                                          'g0zddtk0' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                  ],
                                ),
                                if (_model.dropDownFamiliarFibro2Value == 'Si')
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'pvnmnmdz' /* Indica el grado familiar */,
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
                                                  .dropDownGradoFibro2ValueController ??=
                                              FormFieldController<String>(null),
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              'anywgijx' /* Familiar de primer grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'c8i1ckdk' /* Familiar de segundo grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              '1pwfc0qu' /* Familiar de tercer grado */,
                                            )
                                          ],
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropDownGradoFibro2Value =
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
                                            'qfk8i4lp' /* Selecciona tu respuesta... */,
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
                                        'drnh1i0t' /* Escribe aquí tus otras enferme... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    TextFormField(
                                      controller: _model
                                          .textFieldOtrasCovid2TextController,
                                      focusNode:
                                          _model.textFieldOtrasCovid2FocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
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
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .rellenoCampo2,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      maxLines: null,
                                      validator: _model
                                          .textFieldOtrasCovid2TextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 16.0),
                                  child: FFButtonWidget(
                                    onPressed: ((_model.dropDownGeneroValue == null ||
                                                _model.dropDownGeneroValue ==
                                                    '') ||
                                            (_model.dropDownFumadorValue == null ||
                                                _model.dropDownFumadorValue ==
                                                    '') ||
                                            (_model.dropDownAlcoholValue == null ||
                                                _model.dropDownAlcoholValue ==
                                                    '') ||
                                            (_model.dropDownPesoValue ==
                                                null) ||
                                            (_model.dropDownAlturaValue ==
                                                null) ||
                                            (_model.dropDownEventoFibro2Value ==
                                                    null ||
                                                _model.dropDownEventoFibro2Value ==
                                                    '') ||
                                            (_model.dropDownTiempoFibro2Value ==
                                                    null ||
                                                _model.dropDownTiempoFibro2Value ==
                                                    '') ||
                                            (_model.dropDownFamiliarFibro2Value ==
                                                    null ||
                                                _model.dropDownFamiliarFibro2Value ==
                                                    '') ||
                                            (_model.dropDownEmpeoraFibro2Value ==
                                                    null ||
                                                _model.dropDownEmpeoraFibro2Value ==
                                                    ''))
                                        ? null
                                        : () async {
                                            _model.enf2 =
                                                await SignUpFinalizaCopyCall
                                                    .call(
                                              userId: FFAppState().xUserId,
                                              genero:
                                                  _model.dropDownGeneroValue,
                                              fumador:
                                                  _model.dropDownFumadorValue,
                                              alcohol:
                                                  _model.dropDownAlcoholValue,
                                              peso: _model.dropDownPesoValue,
                                              altura:
                                                  _model.dropDownAlturaValue,
                                              yearCovid: 'n/a',
                                              vecesCovid: 'n/a',
                                              familiarCovid: 'n/a',
                                              gradoCovid: 'n/a',
                                              otrasEnfermedades: functions
                                                  .formatTextwithLineBreaksToXano(
                                                      functions
                                                          .removeDoubleQuotationMarksFromText(
                                                              _model
                                                                  .textFieldOtrasCovid2TextController
                                                                  .text)),
                                              eventoFibro: _model
                                                  .dropDownEventoFibro2Value,
                                              tiempoFibro: _model
                                                  .dropDownTiempoFibro2Value,
                                              empeoraSintomaFibro: _model
                                                  .dropDownEmpeoraFibro2Value,
                                              familiarFibro: _model
                                                  .dropDownFamiliarFibro2Value,
                                              gradoFibro: _model
                                                  .dropDownGradoFibro2Value,
                                              tiempoEm: 'n/a',
                                              criteriosEm: 'n/a',
                                              familiarEm: 'n/a',
                                              gradoEm: 'n/a',
                                              nombreAuto: 'n/a',
                                              tiempoAuto: 'n/a',
                                              familiarAuto: 'n/a',
                                              gradoAuto: 'n/a',
                                              eventoEm: 'n/a',
                                            );

                                            FFAppState().creadoOk = 'si';
                                            FFAppState().tmpPwd = '';

                                            context.pushNamed(
                                              'Home',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                ),
                                              },
                                            );

                                            safeSetState(() {});
                                          },
                                    text: FFLocalizations.of(context).getText(
                                      '9ii1g4de' /* Finalizar */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 300.0,
                                      height: 44.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).azulPerm,
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
                                      disabledColor:
                                          FlutterFlowTheme.of(context)
                                              .botonDesactivado,
                                      disabledTextColor:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      if (FFAppState().enfermedadId == 3)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
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
                                        '8wv48f1o' /* ¿Con qué criterios te han diag... */,
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
                                                .dropDownCriteriosEm3ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'ua4s77wz' /* No lo sé pero tengo el diagnós... */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '9iyaoxmk' /* Criterios de consenso canadien... */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'c0c4tvt4' /* Criterios de Fukuda */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'ucqhmyid' /* Criterios de consenso internac... */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '7nn08l34' /* Criterios de enfermedad de int... */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownCriteriosEm3Value =
                                                val),
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
                                          'e3cpz5qm' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'ycxof0ja' /* ¿Cuánto tiempo llevas diagnost... */,
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
                                                .dropDownTiempoEm3ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'rb9seb5w' /* Menos de 1 año */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'hviwxngk' /* de 1 a 3 años */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'xxm5lys4' /* de 3 a 5 años */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'tecsc3c7' /* más de 5 años */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownTiempoEm3Value =
                                                val),
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
                                          'ikmr0xro' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'c6b749l8' /* ¿Tras qué evento desarrollaste... */,
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
                                                .dropDownEventoEm3ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'xlk7b90w' /* No lo sé */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'f3eto34s' /* Infección viral o resfriado */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'h0z8d506' /* Tras una cirugía */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'f2beegn3' /* Tras un accidente */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '6is0gunb' /* Estrés */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'v3n3hqj8' /* Postparto */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'r5zo7i8o' /* Medicación */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownEventoEm3Value =
                                                val),
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
                                          'ux7ssy8m' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'zex53crn' /* ¿Tienes algún familiar directo... */,
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
                                                .dropDownFamiliarEm3ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            '3q38fn4t' /* Si */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'zqhhlyus' /* No */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownFamiliarEm3Value =
                                                val),
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
                                          'lptfc47v' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                  ],
                                ),
                                if (_model.dropDownFamiliarEm3Value == 'Si')
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'r8ai1vfn' /* Indica el grado familiar */,
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
                                                  .dropDownGradoEm3ValueController ??=
                                              FormFieldController<String>(null),
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              'ay7hnasv' /* Familiar de primer grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'vfbnkxm9' /* Familiar de segundo grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'pelvqqpi' /* Familiar de tercer grado */,
                                            )
                                          ],
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropDownGradoEm3Value =
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
                                            '46orqyku' /* Selecciona tu respuesta... */,
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
                                        '6jp4j1c0' /* Escribe aquí tus otras enferme... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    TextFormField(
                                      controller: _model
                                          .textFieldOtrasCovid3TextController,
                                      focusNode:
                                          _model.textFieldOtrasCovid3FocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
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
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .rellenoCampo2,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      maxLines: null,
                                      validator: _model
                                          .textFieldOtrasCovid3TextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 16.0),
                                  child: FFButtonWidget(
                                    onPressed: ((_model.dropDownGeneroValue == null ||
                                                _model.dropDownGeneroValue ==
                                                    '') ||
                                            (_model.dropDownFumadorValue == null ||
                                                _model.dropDownFumadorValue ==
                                                    '') ||
                                            (_model.dropDownAlcoholValue == null ||
                                                _model.dropDownAlcoholValue ==
                                                    '') ||
                                            (_model.dropDownPesoValue ==
                                                null) ||
                                            (_model.dropDownAlturaValue ==
                                                null) ||
                                            (_model.dropDownCriteriosEm3Value == null ||
                                                _model.dropDownCriteriosEm3Value ==
                                                    '') ||
                                            (_model.dropDownTiempoEm3Value ==
                                                    null ||
                                                _model.dropDownTiempoEm3Value ==
                                                    '') ||
                                            (_model.dropDownFamiliarEm3Value ==
                                                    null ||
                                                _model.dropDownFamiliarEm3Value ==
                                                    '') ||
                                            (_model.dropDownEventoEm3Value ==
                                                    null ||
                                                _model.dropDownEventoEm3Value ==
                                                    ''))
                                        ? null
                                        : () async {
                                            _model.enf3 =
                                                await SignUpFinalizaCopyCall
                                                    .call(
                                              userId: FFAppState().xUserId,
                                              genero:
                                                  _model.dropDownGeneroValue,
                                              fumador:
                                                  _model.dropDownFumadorValue,
                                              alcohol:
                                                  _model.dropDownAlcoholValue,
                                              peso: _model.dropDownPesoValue,
                                              altura:
                                                  _model.dropDownAlturaValue,
                                              yearCovid: 'n/a',
                                              vecesCovid: 'n/a',
                                              familiarCovid: 'n/a',
                                              gradoCovid: 'n/a',
                                              otrasEnfermedades: functions
                                                  .formatTextwithLineBreaksToXano(
                                                      functions
                                                          .removeDoubleQuotationMarksFromText(
                                                              _model
                                                                  .textFieldOtrasCovid3TextController
                                                                  .text)),
                                              eventoFibro: 'n/a',
                                              tiempoFibro: 'n/a',
                                              empeoraSintomaFibro: 'n/a',
                                              familiarFibro: 'n/a',
                                              gradoFibro: 'n/a',
                                              tiempoEm:
                                                  _model.dropDownTiempoEm3Value,
                                              criteriosEm:
                                                  _model.dropDownTiempoEm3Value,
                                              familiarEm: _model
                                                  .dropDownFamiliarEm3Value,
                                              gradoEm:
                                                  _model.dropDownGradoEm3Value,
                                              nombreAuto: 'n/a',
                                              tiempoAuto: 'n/a',
                                              familiarAuto: 'n/a',
                                              gradoAuto: 'n/a',
                                              eventoEm:
                                                  _model.dropDownEventoEm3Value,
                                            );

                                            FFAppState().creadoOk = 'si';
                                            FFAppState().tmpPwd = '';

                                            context.pushNamed(
                                              'Home',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                ),
                                              },
                                            );

                                            safeSetState(() {});
                                          },
                                    text: FFLocalizations.of(context).getText(
                                      '6kx0fz68' /* Finalizar */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 300.0,
                                      height: 44.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).azulPerm,
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
                                      disabledColor:
                                          FlutterFlowTheme.of(context)
                                              .botonDesactivado,
                                      disabledTextColor:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      if (FFAppState().enfermedadId == 4)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
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
                                        'n3ycbbb9' /* ¿Qué enfermedad tienes diagnos... */,
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 50.0,
                                                ),
                                              ),
                                            );
                                          }
                                          final dropDownAuto4DespEnfermedadesAutoinmunesResponse =
                                              snapshot.data!;

                                          return FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .dropDownAuto4ValueController ??=
                                                FormFieldController<String>(
                                                    null),
                                            options: FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en'
                                                ? DespEnfermedadesAutoinmunesCall
                                                    .en(
                                                    dropDownAuto4DespEnfermedadesAutoinmunesResponse
                                                        .jsonBody,
                                                  )!
                                                : DespEnfermedadesAutoinmunesCall
                                                    .es(
                                                    dropDownAuto4DespEnfermedadesAutoinmunesResponse
                                                        .jsonBody,
                                                  )!,
                                            onChanged: (val) => safeSetState(
                                                () => _model
                                                    .dropDownAuto4Value = val),
                                            width: 509.0,
                                            height: 50.0,
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'vbvk2t6w' /* Selecciona tu respuesta... */,
                                            ),
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                            isOverButton: true,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                          );
                                        },
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
                                        'ume29hw3' /* ¿Cuánto tiempo llevas diagnost... */,
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
                                                .dropDownTiempoAuto4ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'dv7i5z7e' /* Menos de 1 año */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'u3hbjmog' /* de 1 a 3 años */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '6gsbji7a' /* de 3 a 5 años */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'chy6std3' /* más de 5 años */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownTiempoAuto4Value =
                                                val),
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
                                          'r8w91ivm' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        '1clmpagw' /* ¿Tienes algún familiar directo... */,
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
                                                .dropDownFamiliarAuto4ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            '8dh15ee4' /* Si */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '4xrqsvkn' /* No */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownFamiliarAuto4Value =
                                                val),
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
                                          '0dka0wgi' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                  ],
                                ),
                                if (_model.dropDownFamiliarAuto4Value == 'Si')
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'oefois7m' /* Indica el grado familiar */,
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
                                                  .dropDownGradoAuto4ValueController ??=
                                              FormFieldController<String>(null),
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              'hyrsxg7i' /* Familiar de primer grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'kf4dwhc4' /* Familiar de segundo grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'eg597q4p' /* Familiar de tercer grado */,
                                            )
                                          ],
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropDownGradoAuto4Value =
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
                                            'ot49523d' /* Selecciona tu respuesta... */,
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
                                        'awdei4g6' /* Escribe aquí tus otras enferme... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    TextFormField(
                                      controller: _model
                                          .textFieldOtrasCovid4TextController,
                                      focusNode:
                                          _model.textFieldOtrasCovid4FocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
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
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .rellenoCampo2,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      maxLines: null,
                                      validator: _model
                                          .textFieldOtrasCovid4TextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 16.0),
                                  child: FFButtonWidget(
                                    onPressed: ((_model.dropDownGeneroValue ==
                                                    null ||
                                                _model.dropDownGeneroValue ==
                                                    '') ||
                                            (_model.dropDownFumadorValue ==
                                                    null ||
                                                _model.dropDownFumadorValue ==
                                                    '') ||
                                            (_model.dropDownAlcoholValue ==
                                                    null ||
                                                _model.dropDownAlcoholValue ==
                                                    '') ||
                                            (_model.dropDownPesoValue ==
                                                null) ||
                                            (_model.dropDownAlturaValue ==
                                                null) ||
                                            (_model.dropDownAuto4Value ==
                                                    null ||
                                                _model.dropDownAuto4Value ==
                                                    '') ||
                                            (_model.dropDownTiempoAuto4Value ==
                                                    null ||
                                                _model.dropDownTiempoAuto4Value ==
                                                    '') ||
                                            (_model.dropDownFamiliarAuto4Value ==
                                                    null ||
                                                _model.dropDownFamiliarAuto4Value ==
                                                    ''))
                                        ? null
                                        : () async {
                                            _model.enf4 =
                                                await SignUpFinalizaCopyCall
                                                    .call(
                                              userId: FFAppState().xUserId,
                                              genero:
                                                  _model.dropDownGeneroValue,
                                              fumador:
                                                  _model.dropDownFumadorValue,
                                              alcohol:
                                                  _model.dropDownAlcoholValue,
                                              peso: _model.dropDownPesoValue,
                                              altura:
                                                  _model.dropDownAlturaValue,
                                              yearCovid: 'n/a',
                                              vecesCovid: 'n/a',
                                              familiarCovid: 'n/a',
                                              gradoCovid: 'n/a',
                                              otrasEnfermedades: functions
                                                  .formatTextwithLineBreaksToXano(
                                                      functions
                                                          .removeDoubleQuotationMarksFromText(
                                                              _model
                                                                  .textFieldOtrasCovid4TextController
                                                                  .text)),
                                              eventoFibro: 'n/a',
                                              tiempoFibro: 'n/a',
                                              empeoraSintomaFibro: 'n/a',
                                              familiarFibro: 'n/a',
                                              gradoFibro: 'n/a',
                                              tiempoEm: 'n/a',
                                              criteriosEm: 'n/a',
                                              familiarEm: 'n/a',
                                              gradoEm: 'n/a',
                                              nombreAuto:
                                                  _model.dropDownAuto4Value,
                                              tiempoAuto: _model
                                                  .dropDownTiempoAuto4Value,
                                              familiarAuto: _model
                                                  .dropDownFamiliarAuto4Value,
                                              gradoAuto: _model
                                                  .dropDownGradoAuto4Value,
                                              eventoEm: 'n/a',
                                            );

                                            FFAppState().creadoOk = 'si';
                                            FFAppState().tmpPwd = '';

                                            context.pushNamed(
                                              'Home',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                ),
                                              },
                                            );

                                            safeSetState(() {});
                                          },
                                    text: FFLocalizations.of(context).getText(
                                      'gig2hxkz' /* Finalizar */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 300.0,
                                      height: 44.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).azulPerm,
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
                                      disabledColor:
                                          FlutterFlowTheme.of(context)
                                              .botonDesactivado,
                                      disabledTextColor:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      if (FFAppState().enfermedadId == 5)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
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
                                        '16dii3ny' /* Escribe aquí tus otras enferme... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    TextFormField(
                                      controller: _model
                                          .textFieldOtrasCovid5TextController,
                                      focusNode:
                                          _model.textFieldOtrasCovid5FocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
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
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .rellenoCampo2,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      maxLines: null,
                                      validator: _model
                                          .textFieldOtrasCovid5TextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 16.0),
                                  child: FFButtonWidget(
                                    onPressed: ((_model.dropDownGeneroValue ==
                                                    null ||
                                                _model.dropDownGeneroValue ==
                                                    '') ||
                                            (_model.dropDownFumadorValue ==
                                                    null ||
                                                _model.dropDownFumadorValue ==
                                                    '') ||
                                            (_model.dropDownAlcoholValue ==
                                                    null ||
                                                _model.dropDownAlcoholValue ==
                                                    '') ||
                                            (_model.dropDownPesoValue ==
                                                null) ||
                                            (_model.dropDownAlturaValue ==
                                                null))
                                        ? null
                                        : () async {
                                            _model.enf5 =
                                                await SignUpFinalizaCopyCall
                                                    .call(
                                              userId: FFAppState().xUserId,
                                              genero:
                                                  _model.dropDownGeneroValue,
                                              fumador:
                                                  _model.dropDownFumadorValue,
                                              alcohol:
                                                  _model.dropDownAlcoholValue,
                                              peso: _model.dropDownPesoValue,
                                              altura:
                                                  _model.dropDownAlturaValue,
                                              yearCovid: 'n/a',
                                              vecesCovid: 'n/a',
                                              familiarCovid: 'n/a',
                                              gradoCovid: 'n/a',
                                              otrasEnfermedades: functions
                                                  .formatTextwithLineBreaksToXano(
                                                      functions
                                                          .removeDoubleQuotationMarksFromText(
                                                              _model
                                                                  .textFieldOtrasCovid5TextController
                                                                  .text)),
                                              eventoFibro: 'n/a',
                                              tiempoFibro: 'n/a',
                                              empeoraSintomaFibro: 'n/a',
                                              familiarFibro: 'n/a',
                                              gradoFibro: 'n/a',
                                              tiempoEm: 'n/a',
                                              criteriosEm: 'n/a',
                                              familiarEm: 'n/a',
                                              gradoEm: 'n/a',
                                              nombreAuto: 'n/a',
                                              tiempoAuto: 'n/a',
                                              familiarAuto: 'n/a',
                                              gradoAuto: 'n/a',
                                              eventoEm: 'n/a',
                                            );

                                            FFAppState().creadoOk = 'si';
                                            FFAppState().tmpPwd = '';

                                            context.pushNamed(
                                              'Home',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                ),
                                              },
                                            );

                                            safeSetState(() {});
                                          },
                                    text: FFLocalizations.of(context).getText(
                                      'rp0ekvhi' /* Finalizar */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 300.0,
                                      height: 44.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).azulPerm,
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
                                      disabledColor:
                                          FlutterFlowTheme.of(context)
                                              .botonDesactivado,
                                      disabledTextColor:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      if (FFAppState().enfermedadId == 6)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
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
                                        'fk707no3' /* ¿En qué año te infectaste con ... */,
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
                                                .dropDownYearCovid6ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'kf6zmpit' /* 2020 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'ardt0bvd' /* 2021 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'tyazttsk' /* 2022 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'wg64hyeq' /* 2023 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'j41ijokt' /* 2024 */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownYearCovid6Value =
                                                val),
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
                                          '242j530a' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'vgity7l7' /* ¿Cuántas veces te has contagia... */,
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
                                                .dropDownVecesCovid6ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            '7ruuuj2i' /* 1 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '58q9gt7q' /* 2 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '14nik4up' /* 3 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'sxi9n6id' /* 4 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'gvh28h9m' /* 5 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'jply2wii' /* 6 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '9zbriw37' /* 7 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'ooyx6s2q' /* 8 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'dy4uf99u' /* 9 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'oo4dep8k' /* 10 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'j48dkrjd' /* Más de una vez */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownVecesCovid6Value =
                                                val),
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
                                          'evfpjrcc' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'o670j55h' /* ¿Tienes algún familiar directo... */,
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
                                                .dropDownFamiliarCovid6ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'v37rm1hx' /* Si */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'zdvn7txm' /* No */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownFamiliarCovid6Value =
                                                val),
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
                                          'yvdrjlkd' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                  ],
                                ),
                                if (_model.dropDownFamiliarCovid6Value == 'Si')
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '7cq5c0x7' /* Indica el grado familiar */,
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
                                                  .dropDownGradoCovid6ValueController ??=
                                              FormFieldController<String>(null),
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              'v1ymsk20' /* Familiar de primer grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'vep6ixzk' /* Familiar de segundo grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'x3f7vvgh' /* Familiar de tercer grado */,
                                            )
                                          ],
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropDownGradoCovid6Value =
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
                                            'qhr87loa' /* Selecciona tu respuesta... */,
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
                                        '58d0ty5d' /* ¿Con qué criterios te han diag... */,
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
                                                .dropDownCriteriosEm6ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'd7bf7at1' /* No lo sé pero tengo el diagnós... */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'kkhmhprz' /* Criterios de consenso canadien... */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'n37i0cof' /* Criterios de Fukuda */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '5yt3odal' /* Criterios de consenso internac... */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '3x9570nt' /* Criterios de enfermedad de int... */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownCriteriosEm6Value =
                                                val),
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
                                          'wu6hpq88' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'ysl23onx' /* ¿Cuánto tiempo llevas diagnost... */,
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
                                                .dropDownTiempoEm6ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            '8us3ed50' /* Menos de 1 año */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'jtnp76ek' /* de 1 a 3 años */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'zk8m5ogo' /* de 3 a 5 años */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '8boondpp' /* más de 5 años */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownTiempoEm6Value =
                                                val),
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
                                          'k3do9eas' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        '3fnvud3s' /* ¿Tras qué evento desarrollaste... */,
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
                                                .dropDownEventoEm6ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'tk7zqabw' /* No lo sé */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'lmuwe416' /* Infección viral o resfriado */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '6n0t89gl' /* Tras una cirugía */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'shx013aa' /* Tras un accidente */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'do12xr05' /* Estrés */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'tw7124ry' /* Postparto */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '2ibyhi23' /* Medicación */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownEventoEm6Value =
                                                val),
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
                                          'd6iqbat9' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        '7c60glzf' /* ¿Tienes algún familiar directo... */,
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
                                                .dropDownFamiliarEm6ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'cdj1gjoo' /* Si */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '1a0sbr89' /* No */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownFamiliarEm6Value =
                                                val),
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
                                          '5ucg3i3g' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                  ],
                                ),
                                if (_model.dropDownFamiliarEm6Value == 'Si')
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'dx8fdr67' /* Indica el grado familiar */,
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
                                                  .dropDownGradoEm6ValueController ??=
                                              FormFieldController<String>(null),
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              'dwivpz3i' /* Familiar de primer grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'pheiinzt' /* Familiar de segundo grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              '5sqh8qf9' /* Familiar de tercer grado */,
                                            )
                                          ],
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropDownGradoEm6Value =
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
                                            '2i7n2pw9' /* Selecciona tu respuesta... */,
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
                                        'jd0z2daj' /* Escribe aquí tus otras enferme... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    TextFormField(
                                      controller: _model
                                          .textFieldOtrasCovid6TextController,
                                      focusNode:
                                          _model.textFieldOtrasCovid6FocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
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
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .rellenoCampo2,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      maxLines: null,
                                      validator: _model
                                          .textFieldOtrasCovid6TextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 16.0),
                                  child: FFButtonWidget(
                                    onPressed: ((_model.dropDownGeneroValue == null ||
                                                _model.dropDownGeneroValue ==
                                                    '') ||
                                            (_model.dropDownFumadorValue == null ||
                                                _model.dropDownFumadorValue ==
                                                    '') ||
                                            (_model.dropDownAlcoholValue == null ||
                                                _model.dropDownAlcoholValue ==
                                                    '') ||
                                            (_model.dropDownPesoValue ==
                                                null) ||
                                            (_model.dropDownAlturaValue ==
                                                null) ||
                                            (_model.dropDownYearCovid6Value == null ||
                                                _model.dropDownYearCovid6Value ==
                                                    '') ||
                                            (_model.dropDownVecesCovid6Value ==
                                                    null ||
                                                _model.dropDownVecesCovid6Value ==
                                                    '') ||
                                            (_model.dropDownFamiliarCovid6Value == null ||
                                                _model.dropDownFamiliarCovid6Value ==
                                                    '') ||
                                            (_model.dropDownCriteriosEm6Value == null ||
                                                _model.dropDownCriteriosEm6Value ==
                                                    '') ||
                                            (_model.dropDownTiempoEm6Value == null ||
                                                _model.dropDownTiempoEm6Value ==
                                                    '') ||
                                            (_model.dropDownEventoEm6Value ==
                                                    null ||
                                                _model.dropDownEventoEm6Value ==
                                                    '') ||
                                            (_model.dropDownFamiliarEm6Value ==
                                                    null ||
                                                _model.dropDownFamiliarEm6Value ==
                                                    ''))
                                        ? null
                                        : () async {
                                            _model.enf6 =
                                                await SignUpFinalizaCopyCall
                                                    .call(
                                              userId: FFAppState().xUserId,
                                              genero:
                                                  _model.dropDownGeneroValue,
                                              fumador:
                                                  _model.dropDownFumadorValue,
                                              alcohol:
                                                  _model.dropDownAlcoholValue,
                                              peso: _model.dropDownPesoValue,
                                              altura:
                                                  _model.dropDownAlturaValue,
                                              yearCovid: _model
                                                  .dropDownYearCovid6Value,
                                              vecesCovid: _model
                                                  .dropDownVecesCovid6Value,
                                              familiarCovid: _model
                                                  .dropDownFamiliarCovid6Value,
                                              gradoCovid: _model
                                                  .dropDownGradoCovid6Value,
                                              otrasEnfermedades: functions
                                                  .formatTextwithLineBreaksToXano(
                                                      functions
                                                          .removeDoubleQuotationMarksFromText(
                                                              _model
                                                                  .textFieldOtrasCovid6TextController
                                                                  .text)),
                                              eventoFibro: 'n/a',
                                              tiempoFibro: 'n/a',
                                              empeoraSintomaFibro: 'n/a',
                                              familiarFibro: 'n/a',
                                              gradoFibro: 'n/a',
                                              tiempoEm:
                                                  _model.dropDownTiempoEm6Value,
                                              criteriosEm: _model
                                                  .dropDownCriteriosEm6Value,
                                              familiarEm: _model
                                                  .dropDownFamiliarEm6Value,
                                              gradoEm:
                                                  _model.dropDownGradoEm6Value,
                                              nombreAuto: 'n/a',
                                              tiempoAuto: 'n/a',
                                              familiarAuto: 'n/a',
                                              gradoAuto: 'n/a',
                                              eventoEm:
                                                  _model.dropDownEventoEm6Value,
                                            );

                                            FFAppState().creadoOk = 'si';
                                            FFAppState().tmpPwd = '';

                                            context.pushNamed(
                                              'Home',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                ),
                                              },
                                            );

                                            safeSetState(() {});
                                          },
                                    text: FFLocalizations.of(context).getText(
                                      '9azongu8' /* Finalizar */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 300.0,
                                      height: 44.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).azulPerm,
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
                                      disabledColor:
                                          FlutterFlowTheme.of(context)
                                              .botonDesactivado,
                                      disabledTextColor:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      if (FFAppState().enfermedadId == 7)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
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
                                        'haz3cs2x' /* ¿Tras qué evento desarrollaste... */,
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
                                                .dropDownEventoFibro7ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            '0ho2hjhk' /* No lo sé */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'ahvxzgjr' /* Infección viral o resfriado */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '4gzgi2v1' /* Tras una cirugía */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'zti9u3us' /* Tras un accidente */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '3gr5cxgb' /* Tras estancia hospitalaria */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'jxwsclru' /* Estrés */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'm9bij2ti' /* Postparto */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownEventoFibro7Value =
                                                val),
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
                                          'tbbwa317' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'glz59dry' /* ¿Cuánto tiempo llevas diagnost... */,
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
                                                .dropDownTiempoFibro7ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'd8zm4p7n' /* Menos de 1 año */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '9mcm13oa' /* de 1 a 3 años */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            't80k69dh' /* de 3 a 5 años */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'z3tkgy7l' /* más de 5 años */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownTiempoFibro7Value =
                                                val),
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
                                          'ux3m9pbj' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'h0m069y8' /* ¿Empeoran tus síntomas tras un... */,
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
                                                .dropDownEmpeoraFibro7ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            '4pvgn93t' /* Si */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'ko2k45if' /* No */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownEmpeoraFibro7Value =
                                                val),
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
                                          'arpgq7xz' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'e40t35j2' /* ¿Tienes algún familiar directo... */,
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
                                                .dropDownFamiliarFibro7ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'va3simti' /* Si */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'grm67jnq' /* No */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownFamiliarFibro7Value =
                                                val),
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
                                          '29dd61ot' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                  ],
                                ),
                                if (_model.dropDownFamiliarFibro7Value == 'Si')
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'hiz1gsjy' /* Indica el grado familiar */,
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
                                                  .dropDownGradoFibro7ValueController ??=
                                              FormFieldController<String>(null),
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              'nu76fw0r' /* Familiar de primer grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              '8akuuoqg' /* Familiar de segundo grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              '3j6yhocz' /* Familiar de tercer grado */,
                                            )
                                          ],
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropDownGradoFibro7Value =
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
                                            'fy9e8w3e' /* Selecciona tu respuesta... */,
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
                                        'mqdeqi0d' /* ¿Con qué criterios te han diag... */,
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
                                                .dropDownCriteriosEm7ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            '9wdbuop0' /* No lo sé pero tengo el diagnós... */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '3iule0of' /* Criterios de consenso canadien... */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '0fer5l4z' /* Criterios de Fukuda */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'lch643vz' /* Criterios de consenso internac... */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'bty4brnk' /* Criterios de enfermedad de int... */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownCriteriosEm7Value =
                                                val),
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
                                          'vrtfvf97' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'w532t9xh' /* ¿Cuánto tiempo llevas diagnost... */,
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
                                                .dropDownTiempoEm7ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'j5u7yhsr' /* Menos de 1 año */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'hv1rixq9' /* de 1 a 3 años */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'g7lxte7c' /* de 3 a 5 años */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'qva6ips8' /* más de 5 años */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownTiempoEm7Value =
                                                val),
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
                                          'jgqzhiw5' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'qoqm8f7r' /* ¿Tras qué evento desarrollaste... */,
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
                                                .dropDownEventoEm7ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            '03wzlmhj' /* No lo sé */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'mzq8e3of' /* Infección viral o resfriado */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '8s8yi90m' /* Tras una cirugía */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'duqoy5m4' /* Tras un accidente */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'o49sypfc' /* Estrés */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'wk1fnq7e' /* Postparto */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'l0kswy9e' /* Medicación */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownEventoEm7Value =
                                                val),
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
                                          't3irg48x' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'jctr0ilq' /* ¿Tienes algún familiar directo... */,
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
                                                .dropDownFamiliarEm7ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'q66yp0rz' /* Si */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'gv9ayit9' /* No */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownFamiliarEm7Value =
                                                val),
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
                                          'uj1p0fha' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: false,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                  ],
                                ),
                                if (_model.dropDownFamiliarEm7Value == 'Si')
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '4hk5m9yl' /* Indica el grado familiar */,
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
                                                  .dropDownGradoEm7ValueController ??=
                                              FormFieldController<String>(null),
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              'cd23uhs5' /* Familiar de primer grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'velakxys' /* Familiar de segundo grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'n7dqsmdq' /* Familiar de tercer grado */,
                                            )
                                          ],
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropDownGradoEm7Value =
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
                                            'yq2nfz7v' /* Selecciona tu respuesta... */,
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
                                        '5mls7ju7' /* Escribe aquí tus otras enferme... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    TextFormField(
                                      controller: _model
                                          .textFieldOtrasCovid7TextController,
                                      focusNode:
                                          _model.textFieldOtrasCovid7FocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
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
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .rellenoCampo2,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      maxLines: null,
                                      validator: _model
                                          .textFieldOtrasCovid7TextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 16.0),
                                  child: FFButtonWidget(
                                    onPressed: ((_model.dropDownGeneroValue == null ||
                                                _model.dropDownGeneroValue ==
                                                    '') ||
                                            (_model.dropDownFumadorValue == null ||
                                                _model.dropDownFumadorValue ==
                                                    '') ||
                                            (_model.dropDownAlcoholValue == null ||
                                                _model.dropDownAlcoholValue ==
                                                    '') ||
                                            (_model.dropDownPesoValue ==
                                                null) ||
                                            (_model.dropDownAlturaValue ==
                                                null) ||
                                            (_model.dropDownEventoFibro7Value == null ||
                                                _model.dropDownEventoFibro7Value ==
                                                    '') ||
                                            (_model.dropDownTiempoFibro7Value == null ||
                                                _model.dropDownTiempoFibro7Value ==
                                                    '') ||
                                            (_model.dropDownFamiliarFibro7Value == null ||
                                                _model.dropDownFamiliarFibro7Value ==
                                                    '') ||
                                            (_model.dropDownEmpeoraFibro7Value == null ||
                                                _model.dropDownEmpeoraFibro7Value ==
                                                    '') ||
                                            (_model.dropDownCriteriosEm7Value == null ||
                                                _model.dropDownCriteriosEm7Value ==
                                                    '') ||
                                            (_model.dropDownTiempoEm7Value == null ||
                                                _model.dropDownTiempoEm7Value ==
                                                    '') ||
                                            (_model.dropDownEventoEm7Value == null ||
                                                _model.dropDownEventoEm7Value ==
                                                    '') ||
                                            (_model.dropDownFamiliarEm7Value ==
                                                    null ||
                                                _model.dropDownFamiliarEm7Value ==
                                                    ''))
                                        ? null
                                        : () async {
                                            _model.enf7 =
                                                await SignUpFinalizaCopyCall
                                                    .call(
                                              userId: FFAppState().xUserId,
                                              genero:
                                                  _model.dropDownGeneroValue,
                                              fumador:
                                                  _model.dropDownFumadorValue,
                                              alcohol:
                                                  _model.dropDownAlcoholValue,
                                              peso: _model.dropDownPesoValue,
                                              altura:
                                                  _model.dropDownAlturaValue,
                                              yearCovid: 'n/a',
                                              vecesCovid: 'n/a',
                                              familiarCovid: 'n/a',
                                              gradoCovid: 'n/a',
                                              otrasEnfermedades: functions
                                                  .formatTextwithLineBreaksToXano(
                                                      functions
                                                          .removeDoubleQuotationMarksFromText(
                                                              _model
                                                                  .textFieldOtrasCovid7TextController
                                                                  .text)),
                                              eventoFibro: _model
                                                  .dropDownEventoFibro7Value,
                                              tiempoFibro: _model
                                                  .dropDownTiempoFibro7Value,
                                              empeoraSintomaFibro: _model
                                                  .dropDownEmpeoraFibro7Value,
                                              familiarFibro: _model
                                                  .dropDownFamiliarFibro7Value,
                                              gradoFibro: _model
                                                  .dropDownGradoFibro7Value,
                                              tiempoEm:
                                                  _model.dropDownTiempoEm7Value,
                                              criteriosEm: _model
                                                  .dropDownCriteriosEm7Value,
                                              familiarEm: _model
                                                  .dropDownFamiliarEm7Value,
                                              gradoEm:
                                                  _model.dropDownGradoEm7Value,
                                              nombreAuto: 'n/a',
                                              tiempoAuto: 'n/a',
                                              familiarAuto: 'n/a',
                                              gradoAuto: 'n/a',
                                              eventoEm:
                                                  _model.dropDownEventoEm7Value,
                                            );

                                            FFAppState().creadoOk = 'si';
                                            FFAppState().tmpPwd = '';

                                            context.pushNamed(
                                              'Home',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                ),
                                              },
                                            );

                                            safeSetState(() {});
                                          },
                                    text: FFLocalizations.of(context).getText(
                                      'v4z4o8b8' /* Finalizar */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 300.0,
                                      height: 44.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).azulPerm,
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
                                      disabledColor:
                                          FlutterFlowTheme.of(context)
                                              .botonDesactivado,
                                      disabledTextColor:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      if (FFAppState().enfermedadId == 8)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
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
                                        '9reppoj3' /* ¿En qué año te infectaste con ... */,
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
                                                .dropDownYearCovid8ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'lhxweo8i' /* 2020 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'sn47vlgd' /* 2021 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'rjsc6lpl' /* 2022 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'x5s2wv10' /* 2023 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'c1ycy00w' /* 2024 */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownYearCovid8Value =
                                                val),
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
                                          'cb53z8xa' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'yng0kkls' /* ¿Cuántas veces te has contagia... */,
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
                                                .dropDownVecesCovid8ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            '2vxz0fiw' /* 1 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '79p4i0ny' /* 2 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '7hg2s7d8' /* 3 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'bqpq2zho' /* 4 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'vamc72em' /* 5 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'n5k76xqm' /* 6 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'kf6wm1jg' /* 7 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'kx0ad6gs' /* 8 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'f2uigdww' /* 9 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'k5ifflsv' /* 10 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '4jcamgxn' /* Más de una vez */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownVecesCovid8Value =
                                                val),
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
                                          'r5ga2jd1' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'n9sx2ecr' /* ¿Tienes algún familiar directo... */,
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
                                                .dropDownFamiliarCovid8ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            '3pyk3tbf' /* Si */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            't2gjnb93' /* No */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownFamiliarCovid8Value =
                                                val),
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
                                          'odk2jivy' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                  ],
                                ),
                                if (_model.dropDownFamiliarCovid8Value == 'Si')
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'mbkvrih5' /* Indica el grado familiar */,
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
                                                  .dropDownGradoCovid8ValueController ??=
                                              FormFieldController<String>(null),
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              'rs6shgy5' /* Familiar de primer grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'x6awq1td' /* Familiar de segundo grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              '0k209paz' /* Familiar de tercer grado */,
                                            )
                                          ],
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropDownGradoCovid8Value =
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
                                            '3yvgrvp0' /* Selecciona tu respuesta... */,
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
                                        'qjer1ysa' /* ¿Tras qué evento desarrollaste... */,
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
                                                .dropDownEventoFibro8ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            '0tswkrxa' /* No lo sé */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'e0pwbwpx' /* Infección viral o resfriado */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '4gh8yxo5' /* Tras una cirugía */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'cyrnz9hh' /* Tras un accidente */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'bodhxlvj' /* Tras estancia hospitalaria */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '6kp5l6lb' /* Estrés */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '4wkynwt1' /* Postparto */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownEventoFibro8Value =
                                                val),
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
                                          'xjmcgun6' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'o8q7jneb' /* ¿Cuánto tiempo llevas diagnost... */,
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
                                                .dropDownTiempoFibro8ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'hh4bduvv' /* Menos de 1 año */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '6p6xahwl' /* de 1 a 3 años */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'pjewwr3i' /* de 3 a 5 años */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '7fd4w87h' /* más de 5 años */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownTiempoFibro8Value =
                                                val),
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
                                          'tq1fhg0x' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'w3jcp13j' /* ¿Empeoran tus síntomas tras un... */,
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
                                                .dropDownEmpeoraFibro8ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'py0c03eu' /* Si */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'ooc3j0ak' /* No */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownEmpeoraFibro8Value =
                                                val),
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
                                          'eo3hl3r7' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'ui751wv0' /* ¿Tienes algún familiar directo... */,
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
                                                .dropDownFamiliarFibro8ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            '80vwmqeu' /* Si */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'hnd2j57b' /* No */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownFamiliarFibro8Value =
                                                val),
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
                                          'mf4ly8tl' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                  ],
                                ),
                                if (_model.dropDownFamiliarFibro8Value == 'Si')
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '4xn1a8gc' /* Indica el grado familiar */,
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
                                                  .dropDownGradoFibro8ValueController ??=
                                              FormFieldController<String>(null),
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              '9kacsnu2' /* Familiar de primer grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'p8gx0lk7' /* Familiar de segundo grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              '7uctysdv' /* Familiar de tercer grado */,
                                            )
                                          ],
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropDownGradoFibro8Value =
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
                                            'xw129lgm' /* Selecciona tu respuesta... */,
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
                                        'hcj0ve91' /* Escribe aquí tus otras enferme... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    TextFormField(
                                      controller: _model
                                          .textFieldOtrasCovidTextController,
                                      focusNode:
                                          _model.textFieldOtrasCovidFocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
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
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .rellenoCampo2,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      maxLines: null,
                                      validator: _model
                                          .textFieldOtrasCovidTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 16.0),
                                  child: FFButtonWidget(
                                    onPressed: ((_model.dropDownGeneroValue == null ||
                                                _model.dropDownGeneroValue ==
                                                    '') ||
                                            (_model.dropDownFumadorValue == null ||
                                                _model.dropDownFumadorValue ==
                                                    '') ||
                                            (_model.dropDownAlcoholValue == null ||
                                                _model.dropDownAlcoholValue ==
                                                    '') ||
                                            (_model.dropDownPesoValue ==
                                                null) ||
                                            (_model.dropDownAlturaValue ==
                                                null) ||
                                            (_model.dropDownYearCovid8Value == null ||
                                                _model.dropDownYearCovid8Value ==
                                                    '') ||
                                            (_model.dropDownVecesCovid8Value == null ||
                                                _model.dropDownVecesCovid8Value ==
                                                    '') ||
                                            (_model.dropDownFamiliarCovid8Value == null ||
                                                _model.dropDownFamiliarCovid8Value ==
                                                    '') ||
                                            (_model.dropDownEventoFibro8Value == null ||
                                                _model.dropDownEventoFibro8Value ==
                                                    '') ||
                                            (_model.dropDownTiempoFibro8Value ==
                                                    null ||
                                                _model.dropDownTiempoFibro8Value ==
                                                    '') ||
                                            (_model.dropDownEmpeoraFibro8Value ==
                                                    null ||
                                                _model.dropDownEmpeoraFibro8Value ==
                                                    '') ||
                                            (_model.dropDownFamiliarFibro8Value ==
                                                    null ||
                                                _model.dropDownFamiliarFibro8Value == ''))
                                        ? null
                                        : () async {
                                            _model.enf8 =
                                                await SignUpFinalizaCopyCall
                                                    .call(
                                              userId: FFAppState().xUserId,
                                              genero:
                                                  _model.dropDownGeneroValue,
                                              fumador:
                                                  _model.dropDownFumadorValue,
                                              alcohol:
                                                  _model.dropDownAlcoholValue,
                                              peso: _model.dropDownPesoValue,
                                              altura:
                                                  _model.dropDownAlturaValue,
                                              yearCovid: _model
                                                  .dropDownYearCovid8Value,
                                              vecesCovid: _model
                                                  .dropDownVecesCovid8Value,
                                              familiarCovid: _model
                                                  .dropDownFamiliarCovid8Value,
                                              gradoCovid: _model
                                                  .dropDownGradoCovid8Value,
                                              otrasEnfermedades: functions
                                                  .formatTextwithLineBreaksToXano(
                                                      functions
                                                          .removeDoubleQuotationMarksFromText(
                                                              _model
                                                                  .textFieldOtrasCovidTextController
                                                                  .text)),
                                              eventoFibro: _model
                                                  .dropDownEventoFibro8Value,
                                              tiempoFibro: _model
                                                  .dropDownTiempoFibro8Value,
                                              empeoraSintomaFibro: _model
                                                  .dropDownEmpeoraFibro8Value,
                                              familiarFibro: _model
                                                  .dropDownFamiliarFibro8Value,
                                              gradoFibro: _model
                                                  .dropDownGradoFibro8Value,
                                              tiempoEm: 'n/a',
                                              criteriosEm: 'n/a',
                                              familiarEm: 'n/a',
                                              gradoEm: 'n/a',
                                              nombreAuto: 'n/a',
                                              tiempoAuto: 'n/a',
                                              familiarAuto: 'n/a',
                                              gradoAuto: 'n/a',
                                              eventoEm: 'n/a',
                                            );

                                            FFAppState().creadoOk = 'si';
                                            FFAppState().tmpPwd = '';

                                            context.pushNamed(
                                              'Home',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                ),
                                              },
                                            );

                                            safeSetState(() {});
                                          },
                                    text: FFLocalizations.of(context).getText(
                                      '9y35umyj' /* Finalizar */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 300.0,
                                      height: 44.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).azulPerm,
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
                                      disabledColor:
                                          FlutterFlowTheme.of(context)
                                              .botonDesactivado,
                                      disabledTextColor:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      if (FFAppState().enfermedadId == 9)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
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
                                        'cmmrbjz6' /* ¿En qué año te infectaste con ... */,
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
                                                .dropDownYearCovid9ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            '3o9pi4wc' /* 2020 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '193d1l7e' /* 2021 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'kq4upjki' /* 2022 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '39bm2ib0' /* 2023 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'ww84b81r' /* 2024 */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownYearCovid9Value =
                                                val),
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
                                          'fdi7ifiq' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'xowbxgy9' /* ¿Cuántas veces te has contagia... */,
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
                                                .dropDownVecesCovid9ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'lul5v863' /* 1 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'ej9piqcr' /* 2 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'dpai4u5r' /* 3 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '2kuljw2h' /* 4 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'z48hw6rk' /* 5 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '6u716abt' /* 6 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '3m7su06v' /* 7 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '93z4neop' /* 8 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'cgnslapr' /* 9 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            't71y1no9' /* 10 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'p7vuq2t2' /* Más de una vez */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownVecesCovid9Value =
                                                val),
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
                                          'fxyb8879' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'ifvs9y0f' /* ¿Tienes algún familiar directo... */,
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
                                                .dropDownFamiliarCovid9ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'm0fw9ejy' /* Si */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '55h5sv7r' /* No */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownFamiliarCovid9Value =
                                                val),
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
                                          '582vgqt3' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                  ],
                                ),
                                if (_model.dropDownFamiliarCovid9Value == 'Si')
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'r8m65of8' /* Indica el grado familiar */,
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
                                                  .dropDownGradoCovid9ValueController ??=
                                              FormFieldController<String>(null),
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              'omdj9q50' /* Familiar de primer grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              '6f17au3u' /* Familiar de segundo grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'u0mdqnpm' /* Familiar de tercer grado */,
                                            )
                                          ],
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropDownGradoCovid9Value =
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
                                            'b2k8b9td' /* Selecciona tu respuesta... */,
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
                                        '17mnb83g' /* ¿Tras qué evento desarrollaste... */,
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
                                                .dropDownEventoFibro9ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            '5l7u0yn5' /* No lo sé */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'p8v6de7o' /* Infección viral o resfriado */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'qp7xm509' /* Tras una cirugía */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'acykk0hd' /* Tras un accidente */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'ams05mtu' /* Tras estancia hospitalaria */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'ci8rjvfh' /* Estrés */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'qvlwyjyz' /* Postparto */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownEventoFibro9Value =
                                                val),
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
                                          'o71w9hhf' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'z2rug5q5' /* ¿Cuánto tiempo llevas diagnost... */,
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
                                                .dropDownTiempoFibro9ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'xferqqem' /* Menos de 1 año */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '2u9w8kbp' /* de 1 a 3 años */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'n171jfee' /* de 3 a 5 años */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'fj591oye' /* más de 5 años */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownTiempoFibro9Value =
                                                val),
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
                                          '45cuicge' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        '1lho47m8' /* ¿Empeoran tus síntomas tras un... */,
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
                                                .dropDownEmpeoraFibro9ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'xwdyi2ac' /* Si */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'x2ubaad6' /* No */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownEmpeoraFibro9Value =
                                                val),
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
                                          'xhot6gsq' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        '0kfwfk39' /* ¿Tienes algún familiar directo... */,
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
                                                .dropDownFamiliarFibro9ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'j6kha0n2' /* Si */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '8m8ooh4y' /* No */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownFamiliarFibro9Value =
                                                val),
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
                                          '5hzr0d85' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                  ],
                                ),
                                if (_model.dropDownFamiliarFibro9Value == 'Si')
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'r03ltf9o' /* Indica el grado familiar */,
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
                                                  .dropDownGradoFibro9ValueController ??=
                                              FormFieldController<String>(null),
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              'oktxbq3n' /* Familiar de primer grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'd3ax9cdl' /* Familiar de segundo grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'gd1fyyaz' /* Familiar de tercer grado */,
                                            )
                                          ],
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropDownGradoFibro9Value =
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
                                            'f16ylfom' /* Selecciona tu respuesta... */,
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
                                        'mnzc3k5z' /* ¿Con qué criterios te han diag... */,
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
                                                .dropDownCriteriosEm9ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            '0ibbihrt' /* No lo sé pero tengo el diagnós... */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'sjuw958c' /* Criterios de consenso canadien... */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '5gzigcie' /* Criterios de Fukuda */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'ayjd65lb' /* Criterios de consenso internac... */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'hvsj6k76' /* Criterios de enfermedad de int... */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownCriteriosEm9Value =
                                                val),
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
                                          '8zhc9fzy' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        'dqqj6l3c' /* ¿Cuánto tiempo llevas diagnost... */,
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
                                                .dropDownTiempoEm9ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            '4ful2zb5' /* Menos de 1 año */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'wel9ogyg' /* de 1 a 3 años */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'nfcpd6le' /* de 3 a 5 años */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '007r2vkk' /* más de 5 años */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownTiempoEm9Value =
                                                val),
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
                                          'be8xw81u' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
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
                                        '7xee8y3i' /* ¿Tras qué evento desarrollaste... */,
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
                                                .dropDownEventoEm9ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'tjfxqkmq' /* No lo sé */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'vx85vvbv' /* Infección viral o resfriado */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'm71gn9y2' /* Tras una cirugía */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '0pxt7wrx' /* Tras un accidente */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '2scd5trt' /* Estrés */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '6qf7iz66' /* Postparto */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'yn2me8vk' /* Medicación */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownEventoEm9Value =
                                                val),
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
                                          'o08e0a91' /* Selecciona tu respuesta... */,
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
                                        '0u5wrpt2' /* ¿Tienes algún familiar directo... */,
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
                                                .dropDownFamiliarEm9ValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'st8pmkcc' /* Si */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'ark3gzi4' /* No */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropDownFamiliarEm9Value =
                                                val),
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
                                          '9esrkqn1' /* Selecciona tu respuesta... */,
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
                                            16.0, 0.0, 16.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                  ],
                                ),
                                if (_model.dropDownFamiliarEm9Value == 'Si')
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'sdgthtog' /* Indica el grado familiar */,
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
                                                  .dropDownGradoEm9ValueController ??=
                                              FormFieldController<String>(null),
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              'bum7tgc2' /* Familiar de primer grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'zjz8pttj' /* Familiar de segundo grado */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              '9i0f3dtx' /* Familiar de tercer grado */,
                                            )
                                          ],
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropDownGradoEm9Value =
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
                                            '8d4nbfc7' /* Selecciona tu respuesta... */,
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
                                        'rlnpxn25' /* Escribe aquí tus otras enferme... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    TextFormField(
                                      controller: _model
                                          .textFieldOtrasCovid9TextController,
                                      focusNode:
                                          _model.textFieldOtrasCovid9FocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
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
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .rellenoCampo2,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      maxLines: null,
                                      validator: _model
                                          .textFieldOtrasCovid9TextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 16.0),
                                  child: FFButtonWidget(
                                    onPressed: ((_model.dropDownGeneroValue == null || _model.dropDownGeneroValue == '') ||
                                            (_model.dropDownFumadorValue == null ||
                                                _model.dropDownFumadorValue ==
                                                    '') ||
                                            (_model.dropDownAlcoholValue == null ||
                                                _model.dropDownAlcoholValue ==
                                                    '') ||
                                            (_model.dropDownPesoValue ==
                                                null) ||
                                            (_model.dropDownAlturaValue ==
                                                null) ||
                                            (_model.dropDownYearCovid9Value == null ||
                                                _model.dropDownYearCovid9Value ==
                                                    '') ||
                                            (_model.dropDownVecesCovid9Value == null ||
                                                _model.dropDownVecesCovid9Value ==
                                                    '') ||
                                            (_model.dropDownFamiliarCovid9Value == null ||
                                                _model.dropDownFamiliarCovid9Value ==
                                                    '') ||
                                            (_model.dropDownEventoFibro9Value == null ||
                                                _model.dropDownEventoFibro9Value ==
                                                    '') ||
                                            (_model.dropDownTiempoFibro9Value == null ||
                                                _model.dropDownTiempoFibro9Value ==
                                                    '') ||
                                            (_model.dropDownEmpeoraFibro9Value == null ||
                                                _model.dropDownEmpeoraFibro9Value ==
                                                    '') ||
                                            (_model.dropDownFamiliarFibro9Value == null ||
                                                _model.dropDownFamiliarFibro9Value ==
                                                    '') ||
                                            (_model.dropDownCriteriosEm9Value == null ||
                                                _model.dropDownCriteriosEm9Value ==
                                                    '') ||
                                            (_model.dropDownTiempoEm9Value == null ||
                                                _model.dropDownTiempoEm9Value ==
                                                    '') ||
                                            (_model.dropDownEventoEm9Value == null ||
                                                _model.dropDownEventoEm9Value == '') ||
                                            (_model.dropDownFamiliarEm9Value == null || _model.dropDownFamiliarEm9Value == ''))
                                        ? null
                                        : () async {
                                            _model.enf9 =
                                                await SignUpFinalizaCopyCall
                                                    .call(
                                              userId: FFAppState().xUserId,
                                              genero:
                                                  _model.dropDownGeneroValue,
                                              fumador:
                                                  _model.dropDownFumadorValue,
                                              alcohol:
                                                  _model.dropDownAlcoholValue,
                                              peso: _model.dropDownPesoValue,
                                              altura:
                                                  _model.dropDownAlturaValue,
                                              yearCovid: _model
                                                  .dropDownYearCovid9Value,
                                              vecesCovid: _model
                                                  .dropDownVecesCovid9Value,
                                              familiarCovid: _model
                                                  .dropDownFamiliarCovid9Value,
                                              gradoCovid: _model
                                                  .dropDownGradoCovid9Value,
                                              otrasEnfermedades: functions
                                                  .formatTextwithLineBreaksToXano(
                                                      functions
                                                          .removeDoubleQuotationMarksFromText(
                                                              _model
                                                                  .textFieldOtrasCovid9TextController
                                                                  .text)),
                                              eventoFibro: _model
                                                  .dropDownEventoFibro9Value,
                                              tiempoFibro: _model
                                                  .dropDownTiempoFibro9Value,
                                              empeoraSintomaFibro: _model
                                                  .dropDownEmpeoraFibro9Value,
                                              familiarFibro: _model
                                                  .dropDownFamiliarFibro9Value,
                                              gradoFibro: _model
                                                  .dropDownGradoFibro9Value,
                                              tiempoEm:
                                                  _model.dropDownTiempoEm9Value,
                                              criteriosEm: _model
                                                  .dropDownCriteriosEm9Value,
                                              familiarEm: _model
                                                  .dropDownFamiliarEm9Value,
                                              gradoEm:
                                                  _model.dropDownGradoEm9Value,
                                              nombreAuto: 'n/a',
                                              tiempoAuto: 'n/a',
                                              familiarAuto: 'n/a',
                                              gradoAuto: 'n/a',
                                              eventoEm:
                                                  _model.dropDownEventoEm9Value,
                                            );

                                            FFAppState().creadoOk = 'si';
                                            FFAppState().tmpPwd = '';

                                            context.pushNamed(
                                              'Home',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                ),
                                              },
                                            );

                                            safeSetState(() {});
                                          },
                                    text: FFLocalizations.of(context).getText(
                                      '3ga0q5gp' /* Continuar */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 300.0,
                                      height: 44.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).azulPerm,
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
                                      disabledColor:
                                          FlutterFlowTheme.of(context)
                                              .botonDesactivado,
                                      disabledTextColor:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () => FocusScope.of(context).unfocus(),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: ModalCancelaSignWidget(),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          text: FFLocalizations.of(context).getText(
                            'byr8d2tq' /* Cancelar */,
                          ),
                          options: FFButtonOptions(
                            width: 300.0,
                            height: 44.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0x00FFFFFF),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
