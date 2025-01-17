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
import 'diario_into_edita_plato_model.dart';
export 'diario_into_edita_plato_model.dart';

class DiarioIntoEditaPlatoWidget extends StatefulWidget {
  const DiarioIntoEditaPlatoWidget({
    super.key,
    required this.id,
    required this.nombre,
  });

  final int? id;
  final String? nombre;

  @override
  State<DiarioIntoEditaPlatoWidget> createState() =>
      _DiarioIntoEditaPlatoWidgetState();
}

class _DiarioIntoEditaPlatoWidgetState
    extends State<DiarioIntoEditaPlatoWidget> {
  late DiarioIntoEditaPlatoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiarioIntoEditaPlatoModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiCargaPlato = await IntoleranciaCargaPlatoIndividualCall.call(
        id: widget!.id,
      );

      if ((_model.apiCargaPlato?.succeeded ?? true)) {
        _model.carne1 = IntoleranciaCargaPlatoIndividualCall.carne1(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.carne2 = IntoleranciaCargaPlatoIndividualCall.carne2(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.carne3 = IntoleranciaCargaPlatoIndividualCall.carne3(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.carne4 = IntoleranciaCargaPlatoIndividualCall.carne4(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.carne5 = IntoleranciaCargaPlatoIndividualCall.carne5(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.carne6 = IntoleranciaCargaPlatoIndividualCall.carne6(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.carne7 = IntoleranciaCargaPlatoIndividualCall.carne7(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.mostrarCarne = IntoleranciaCargaPlatoIndividualCall.carne(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        )!;
        _model.pescado1 = IntoleranciaCargaPlatoIndividualCall.pescado1(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.pescado2 = IntoleranciaCargaPlatoIndividualCall.pescado2(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.pescado3 = IntoleranciaCargaPlatoIndividualCall.pescado3(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.pescado4 = IntoleranciaCargaPlatoIndividualCall.pescado4(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.pescado5 = IntoleranciaCargaPlatoIndividualCall.pescado5(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.pescado6 = IntoleranciaCargaPlatoIndividualCall.pescado6(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.pescado7 = IntoleranciaCargaPlatoIndividualCall.pescado7(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.mostrarPescado = IntoleranciaCargaPlatoIndividualCall.pescado(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        )!;
        _model.marisco1 = IntoleranciaCargaPlatoIndividualCall.mariscos1(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.marisco2 = IntoleranciaCargaPlatoIndividualCall.mariscos2(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.marisco3 = IntoleranciaCargaPlatoIndividualCall.mariscos3(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.marisco4 = IntoleranciaCargaPlatoIndividualCall.mariscos4(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.marisco5 = IntoleranciaCargaPlatoIndividualCall.mariscos5(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.marisco6 = IntoleranciaCargaPlatoIndividualCall.mariscos6(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.marisco7 = IntoleranciaCargaPlatoIndividualCall.mariscos7(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.mostrarMarisco = IntoleranciaCargaPlatoIndividualCall.mariscos(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        )!;
        _model.lacteos1 = IntoleranciaCargaPlatoIndividualCall.lacteos1(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.lacteos2 = IntoleranciaCargaPlatoIndividualCall.lacteos2(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.lacteos3 = IntoleranciaCargaPlatoIndividualCall.lacteos3(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.lacteos4 = IntoleranciaCargaPlatoIndividualCall.lacteos4(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.lacteos5 = IntoleranciaCargaPlatoIndividualCall.lacteos5(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.lacteos6 = IntoleranciaCargaPlatoIndividualCall.lacteos6(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.lacteos7 = IntoleranciaCargaPlatoIndividualCall.lacteos7(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.mostrarLacteos = IntoleranciaCargaPlatoIndividualCall.lacteos(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        )!;
        _model.huevos1 = IntoleranciaCargaPlatoIndividualCall.huevos1(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.mostrarHuevos = IntoleranciaCargaPlatoIndividualCall.huevos(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        )!;
        _model.cereales1 = IntoleranciaCargaPlatoIndividualCall.cereales1(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.cereales2 = IntoleranciaCargaPlatoIndividualCall.cereales2(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.cereales3 = IntoleranciaCargaPlatoIndividualCall.cereales3(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.cereales4 = IntoleranciaCargaPlatoIndividualCall.cereales4(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.cereales5 = IntoleranciaCargaPlatoIndividualCall.cereales5(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.cereales6 = IntoleranciaCargaPlatoIndividualCall.cereales6(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.cereales7 = IntoleranciaCargaPlatoIndividualCall.cereales7(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.mostrarCereales = IntoleranciaCargaPlatoIndividualCall.cereales(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        )!;
        _model.frutas1 = IntoleranciaCargaPlatoIndividualCall.frutas1(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.frutas2 = IntoleranciaCargaPlatoIndividualCall.frutas2(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.frutas3 = IntoleranciaCargaPlatoIndividualCall.frutas3(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.frutas4 = IntoleranciaCargaPlatoIndividualCall.frutas4(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.frutas5 = IntoleranciaCargaPlatoIndividualCall.frutas5(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.frutas6 = IntoleranciaCargaPlatoIndividualCall.frutas6(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.frutas7 = IntoleranciaCargaPlatoIndividualCall.frutas7(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.mostrarFrutas = IntoleranciaCargaPlatoIndividualCall.frutas(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        )!;
        _model.verduras1 = IntoleranciaCargaPlatoIndividualCall.verduras1(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.verduras2 = IntoleranciaCargaPlatoIndividualCall.verduras2(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.verduras3 = IntoleranciaCargaPlatoIndividualCall.verduras3(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.verduras4 = IntoleranciaCargaPlatoIndividualCall.verduras4(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.verduras5 = IntoleranciaCargaPlatoIndividualCall.verduras5(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.verduras6 = IntoleranciaCargaPlatoIndividualCall.verduras6(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.verduras7 = IntoleranciaCargaPlatoIndividualCall.verduras7(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.mostrarVerduras = IntoleranciaCargaPlatoIndividualCall.verduras(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        )!;
        _model.legumbres1 = IntoleranciaCargaPlatoIndividualCall.legumbres1(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.legumbres2 = IntoleranciaCargaPlatoIndividualCall.legumbres2(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.legumbres3 = IntoleranciaCargaPlatoIndividualCall.legumbres3(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.legumbres4 = IntoleranciaCargaPlatoIndividualCall.legumbres4(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.legumbres5 = IntoleranciaCargaPlatoIndividualCall.legumbres5(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.legumbres6 = IntoleranciaCargaPlatoIndividualCall.legumbres6(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.legumbres7 = IntoleranciaCargaPlatoIndividualCall.legumbres7(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.mostrarLegumbres =
            IntoleranciaCargaPlatoIndividualCall.legumbres(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        )!;
        _model.secos1 = IntoleranciaCargaPlatoIndividualCall.secos1(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.secos2 = IntoleranciaCargaPlatoIndividualCall.secos2(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.secos3 = IntoleranciaCargaPlatoIndividualCall.secos3(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.secos4 = IntoleranciaCargaPlatoIndividualCall.secos4(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.secos5 = IntoleranciaCargaPlatoIndividualCall.secos5(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.secos6 = IntoleranciaCargaPlatoIndividualCall.secos6(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.secos7 = IntoleranciaCargaPlatoIndividualCall.secos7(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.mostrarSecos = IntoleranciaCargaPlatoIndividualCall.secos(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        )!;
        _model.salsas1 = IntoleranciaCargaPlatoIndividualCall.salsas1(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.salsas2 = IntoleranciaCargaPlatoIndividualCall.salsas2(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.salsas3 = IntoleranciaCargaPlatoIndividualCall.salsas3(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.salsas4 = IntoleranciaCargaPlatoIndividualCall.salsas4(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.salsas5 = IntoleranciaCargaPlatoIndividualCall.salsas5(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.salsas6 = IntoleranciaCargaPlatoIndividualCall.salsas6(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.salsas7 = IntoleranciaCargaPlatoIndividualCall.salsas7(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.mostrarSalsas = IntoleranciaCargaPlatoIndividualCall.salsas(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        )!;
        _model.bebida1 = IntoleranciaCargaPlatoIndividualCall.bebidas1(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.bebida2 = IntoleranciaCargaPlatoIndividualCall.bebidas2(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.bebida3 = IntoleranciaCargaPlatoIndividualCall.bebidas3(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.bebida4 = IntoleranciaCargaPlatoIndividualCall.bebidas4(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.bebida5 = IntoleranciaCargaPlatoIndividualCall.bebidas5(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.bebida6 = IntoleranciaCargaPlatoIndividualCall.bebidas6(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.bebida7 = IntoleranciaCargaPlatoIndividualCall.bebidas7(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        );
        _model.mostrarBebidas = IntoleranciaCargaPlatoIndividualCall.bebidas(
          (_model.apiCargaPlato?.jsonBody ?? ''),
        )!;
        _model.nombrePlato = IntoleranciaCargaPlatoIndividualCall.nombre(
          (_model.apiCargaPlato?.jsonBody ?? ''),
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
            backgroundColor: FlutterFlowTheme.of(context).secondary,
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
                  'ui605a40' /* Diario de Intolerancias */,
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
                                    FFLocalizations.of(context).getText(
                                      'e5zh9rho' /* Editar Plato */,
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
                                            'rzszlzlv' /* Nombre del plato */,
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
                                            '81sv1md7' /* Indica un nombre para el plato... */,
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
                                      '4xtxh8pv' /* Selecciona los alimentos que l... */,
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
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 0.0),
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
                                        0.0, 5.0, 0.0, 0.0),
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
                                                if (_model.mostrarCarne ==
                                                    'no') {
                                                  _model.mostrarCarne = 'si';
                                                  safeSetState(() {});
                                                  _model.mostrarPescado = 'no';
                                                  _model.mostrarMarisco = 'no';
                                                  _model.mostrarLacteos = 'no';
                                                  _model.mostrarHuevos = 'no';
                                                  _model.mostrarCereales = 'no';
                                                  _model.mostrarFrutas = 'no';
                                                  _model.mostrarVerduras = 'no';
                                                  _model.mostrarLegumbres =
                                                      'no';
                                                  _model.mostrarSecos = 'no';
                                                  _model.mostrarSalsas = 'no';
                                                  _model.mostrarBebidas = 'no';
                                                  safeSetState(() {});
                                                } else {
                                                  _model.mostrarCarne = 'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  're3zmqi3' /* Carnes */,
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
                                                                    .mostrarCarne ==
                                                                'no') {
                                                              _model.mostrarCarne =
                                                                  'si';
                                                              safeSetState(
                                                                  () {});
                                                              _model.mostrarPescado =
                                                                  'no';
                                                              _model.mostrarMarisco =
                                                                  'no';
                                                              _model.mostrarLacteos =
                                                                  'no';
                                                              _model.mostrarHuevos =
                                                                  'no';
                                                              _model.mostrarCereales =
                                                                  'no';
                                                              _model.mostrarFrutas =
                                                                  'no';
                                                              _model.mostrarVerduras =
                                                                  'no';
                                                              _model.mostrarLegumbres =
                                                                  'no';
                                                              _model.mostrarSecos =
                                                                  'no';
                                                              _model.mostrarSalsas =
                                                                  'no';
                                                              _model.mostrarBebidas =
                                                                  'no';
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
                                                                    .mostrarCarne ==
                                                                'no') {
                                                              _model.mostrarCarne =
                                                                  'si';
                                                              safeSetState(
                                                                  () {});
                                                              _model.mostrarPescado =
                                                                  'no';
                                                              _model.mostrarMarisco =
                                                                  'no';
                                                              _model.mostrarLacteos =
                                                                  'no';
                                                              _model.mostrarHuevos =
                                                                  'no';
                                                              _model.mostrarCereales =
                                                                  'no';
                                                              _model.mostrarFrutas =
                                                                  'no';
                                                              _model.mostrarVerduras =
                                                                  'no';
                                                              _model.mostrarLegumbres =
                                                                  'no';
                                                              _model.mostrarSecos =
                                                                  'no';
                                                              _model.mostrarSalsas =
                                                                  'no';
                                                              _model.mostrarBebidas =
                                                                  'no';
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
                                  ),
                                  if (_model.mostrarCarne == 'si')
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
                                                            .dropCarne1ValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropCarne1Value ??=
                                                          _model.carne1,
                                                    ),
                                                    options: FFLocalizations.of(
                                                                    context)
                                                                .languageCode ==
                                                            'es'
                                                        ? FFAppState()
                                                            .despCarne
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
                                                            .despCarne
                                                            .map((e) =>
                                                                getJsonField(
                                                                  e,
                                                                  r'''$.comida_en''',
                                                                ))
                                                            .toList()
                                                            .map((e) =>
                                                                e.toString())
                                                            .toList(),
                                                    onChanged: (val) async {
                                                      safeSetState(() => _model
                                                              .dropCarne1Value =
                                                          val);
                                                      _model.carne1 = _model
                                                          .dropCarne1Value;
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
                                                      'pm8d3o2n' /* Selecciona tu respuesta */,
                                                    ),
                                                    searchHintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'onqrgvvu' /* Buscador... */,
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
                                                if ((_model.carne1 != 'null') &&
                                                    (_model.carne1 !=
                                                        'No he comido más carne') &&
                                                    (_model.carne1 !=
                                                        'I have not eaten any more meat'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropCarne2ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropCarne2Value ??=
                                                            _model.carne2,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despCarne
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
                                                              .despCarne
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.comida_en''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList(),
                                                      onChanged: (val) async {
                                                        safeSetState(() => _model
                                                                .dropCarne2Value =
                                                            val);
                                                        _model.carne2 = _model
                                                            .dropCarne2Value;
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
                                                        'z0xi3s52' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'lh9k4hn4' /* Buscador... */,
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
                                                if ((_model.carne2 != 'null') &&
                                                    (_model.carne2 !=
                                                        'No he comido más carne') &&
                                                    (_model.carne2 !=
                                                        'I have not eaten any more meat'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropCarne3ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropCarne3Value ??=
                                                            _model.carne3,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despCarne
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
                                                              .despCarne
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.comida_en''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList(),
                                                      onChanged: (val) async {
                                                        safeSetState(() => _model
                                                                .dropCarne3Value =
                                                            val);
                                                        _model.carne3 = _model
                                                            .dropCarne3Value;
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
                                                        '6hnyto4i' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'vhafffns' /* Buscador... */,
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
                                                if ((_model.carne3 != 'null') &&
                                                    (_model.carne3 !=
                                                        'No he comido más carne') &&
                                                    (_model.carne3 !=
                                                        'I have not eaten any more meat'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropCarne4ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropCarne4Value ??=
                                                            _model.carne4,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despCarne
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
                                                              .despCarne
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.comida_en''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList(),
                                                      onChanged: (val) async {
                                                        safeSetState(() => _model
                                                                .dropCarne4Value =
                                                            val);
                                                        _model.carne4 = _model
                                                            .dropCarne4Value;
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
                                                        'zhmght17' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '5qj93b5h' /* Buscador... */,
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
                                                if ((_model.carne4 != 'null') &&
                                                    (_model.carne4 !=
                                                        'No he comido más carne') &&
                                                    (_model.carne4 !=
                                                        'I have not eaten any more meat'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropCarne5ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropCarne5Value ??=
                                                            _model.carne5,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despCarne
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
                                                              .despCarne
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.comida_en''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList(),
                                                      onChanged: (val) async {
                                                        safeSetState(() => _model
                                                                .dropCarne5Value =
                                                            val);
                                                        _model.carne5 = _model
                                                            .dropCarne5Value;
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
                                                        'a79cnmir' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'c4jrar15' /* Buscador... */,
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
                                                if ((_model.carne5 != 'null') &&
                                                    (_model.carne5 !=
                                                        'No he comido más carne') &&
                                                    (_model.carne5 !=
                                                        'I have not eaten any more meat'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropCarne6ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropCarne6Value ??=
                                                            _model.carne6,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despCarne
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
                                                              .despCarne
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.comida_en''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList(),
                                                      onChanged: (val) async {
                                                        safeSetState(() => _model
                                                                .dropCarne6Value =
                                                            val);
                                                        _model.carne6 = _model
                                                            .dropCarne6Value;
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
                                                        'dxhuwqwr' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'ph7inu6a' /* Buscador... */,
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
                                                if ((_model.carne6 != 'null') &&
                                                    (_model.carne6 !=
                                                        'No he comido más carne') &&
                                                    (_model.carne6 !=
                                                        'I have not eaten any more meat'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropCarne7ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropCarne7Value ??=
                                                            _model.carne7,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despCarne
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
                                                              .despCarne
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.comida_en''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList(),
                                                      onChanged: (val) async {
                                                        safeSetState(() => _model
                                                                .dropCarne7Value =
                                                            val);
                                                        _model.carne7 = _model
                                                            .dropCarne7Value;
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
                                                        '0lx3sfp1' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'c4484zlt' /* Buscador... */,
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
                                                if (_model.mostrarPescado ==
                                                    'no') {
                                                  _model.mostrarPescado = 'si';
                                                  safeSetState(() {});
                                                  _model.mostrarMarisco = 'no';
                                                  _model.mostrarLacteos = 'no';
                                                  _model.mostrarHuevos = 'no';
                                                  _model.mostrarCereales = 'no';
                                                  _model.mostrarFrutas = 'no';
                                                  _model.mostrarVerduras = 'no';
                                                  _model.mostrarLegumbres =
                                                      'no';
                                                  _model.mostrarSecos = 'no';
                                                  _model.mostrarSalsas = 'no';
                                                  _model.mostrarBebidas = 'no';
                                                  _model.mostrarCarne = 'no';
                                                  safeSetState(() {});
                                                } else {
                                                  _model.mostrarPescado = 'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'gxfxyxb8' /* Pescados */,
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
                                                              .mostrarPescado ==
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
                                                                    .mostrarPescado ==
                                                                'no') {
                                                              _model.mostrarPescado =
                                                                  'si';
                                                              safeSetState(
                                                                  () {});
                                                              _model.mostrarMarisco =
                                                                  'no';
                                                              _model.mostrarLacteos =
                                                                  'no';
                                                              _model.mostrarHuevos =
                                                                  'no';
                                                              _model.mostrarCereales =
                                                                  'no';
                                                              _model.mostrarFrutas =
                                                                  'no';
                                                              _model.mostrarVerduras =
                                                                  'no';
                                                              _model.mostrarLegumbres =
                                                                  'no';
                                                              _model.mostrarSecos =
                                                                  'no';
                                                              _model.mostrarSalsas =
                                                                  'no';
                                                              _model.mostrarBebidas =
                                                                  'no';
                                                              _model.mostrarCarne =
                                                                  'no';
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
                                  ),
                                  if (_model.mostrarPescado == 'si')
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
                                                            .dropPescado1ValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropPescado1Value ??=
                                                          _model.pescado1,
                                                    ),
                                                    options: FFLocalizations.of(
                                                                    context)
                                                                .languageCode ==
                                                            'es'
                                                        ? FFAppState()
                                                            .despPescado
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
                                                            .despPescado
                                                            .map((e) =>
                                                                getJsonField(
                                                                  e,
                                                                  r'''$.comida_en''',
                                                                ))
                                                            .toList()
                                                            .map((e) =>
                                                                e.toString())
                                                            .toList(),
                                                    onChanged: (val) async {
                                                      safeSetState(() => _model
                                                              .dropPescado1Value =
                                                          val);
                                                      _model.pescado1 = _model
                                                          .dropPescado1Value;
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
                                                      'i42oido9' /* Selecciona tu respuesta */,
                                                    ),
                                                    searchHintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '1gn5suag' /* Buscador... */,
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
                                                if ((_model.dropPescado1Value !=
                                                            null &&
                                                        _model.dropPescado1Value !=
                                                            '') &&
                                                    (_model.dropPescado1Value !=
                                                        'No he comido más pescado') &&
                                                    (_model.dropPescado1Value !=
                                                        'I have not eaten any more fish'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropPescado2ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropPescado2Value ??=
                                                            _model.pescado2,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despPescado
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
                                                              .despPescado
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.comida_en''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList(),
                                                      onChanged: (val) async {
                                                        safeSetState(() => _model
                                                                .dropPescado2Value =
                                                            val);
                                                        _model.pescado2 = _model
                                                            .dropPescado2Value;
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
                                                        'j56itxt4' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'dsp0pztq' /* Buscador... */,
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
                                                if ((_model.dropPescado2Value !=
                                                            null &&
                                                        _model.dropPescado2Value !=
                                                            '') &&
                                                    (_model.dropPescado2Value !=
                                                        'No he comido más pescado') &&
                                                    (_model.dropPescado2Value !=
                                                        'I have not eaten any more fish'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropPescado3ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropPescado3Value ??=
                                                            _model.pescado3,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despPescado
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
                                                              .despPescado
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.comida_en''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList(),
                                                      onChanged: (val) async {
                                                        safeSetState(() => _model
                                                                .dropPescado3Value =
                                                            val);
                                                        _model.pescado3 = _model
                                                            .dropPescado3Value;
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
                                                        'as6347bs' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '92pketph' /* Buscador... */,
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
                                                if ((_model.dropPescado3Value !=
                                                            null &&
                                                        _model.dropPescado3Value !=
                                                            '') &&
                                                    (_model.dropPescado3Value !=
                                                        'No he comido más pescado') &&
                                                    (_model.dropPescado3Value !=
                                                        'I have not eaten any more fish'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropPescado4ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropPescado4Value ??=
                                                            _model.pescado4,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despPescado
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
                                                              .despPescado
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.comida_en''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList(),
                                                      onChanged: (val) async {
                                                        safeSetState(() => _model
                                                                .dropPescado4Value =
                                                            val);
                                                        _model.pescado4 = _model
                                                            .dropPescado4Value;
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
                                                        '48l296rd' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'bfzerl1f' /* Buscador... */,
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
                                                if ((_model.dropPescado4Value !=
                                                            null &&
                                                        _model.dropPescado4Value !=
                                                            '') &&
                                                    (_model.dropPescado4Value !=
                                                        'No he comido más pescado') &&
                                                    (_model.dropPescado4Value !=
                                                        'I have not eaten any more fish'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropPescado5ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropPescado5Value ??=
                                                            _model.pescado5,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despPescado
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
                                                              .despPescado
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.comida_en''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList(),
                                                      onChanged: (val) async {
                                                        safeSetState(() => _model
                                                                .dropPescado5Value =
                                                            val);
                                                        _model.pescado5 = _model
                                                            .dropPescado5Value;
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
                                                        'p51x8tb7' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'p3e9mc91' /* Buscador... */,
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
                                                if ((_model.dropPescado5Value !=
                                                            null &&
                                                        _model.dropPescado5Value !=
                                                            '') &&
                                                    (_model.dropPescado5Value !=
                                                        'No he comido más pescado') &&
                                                    (_model.dropPescado5Value !=
                                                        'I have not eaten any more fish'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropPescado6ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropPescado6Value ??=
                                                            _model.pescado6,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despPescado
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
                                                              .despPescado
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.comida_en''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList(),
                                                      onChanged: (val) async {
                                                        safeSetState(() => _model
                                                                .dropPescado6Value =
                                                            val);
                                                        _model.pescado6 = _model
                                                            .dropPescado6Value;
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
                                                        'joax6fqo' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '4wqca6cx' /* Buscador... */,
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
                                                if ((_model.dropPescado6Value !=
                                                            null &&
                                                        _model.dropPescado6Value !=
                                                            '') &&
                                                    (_model.dropPescado6Value !=
                                                        'No he comido más pescado') &&
                                                    (_model.dropPescado6Value !=
                                                        'I have not eaten any more fish'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropPescado7ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropPescado7Value ??=
                                                            _model.pescado7,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despPescado
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
                                                              .despPescado
                                                              .map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$.comida_en''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList(),
                                                      onChanged: (val) async {
                                                        safeSetState(() => _model
                                                                .dropPescado7Value =
                                                            val);
                                                        _model.pescado7 = _model
                                                            .dropPescado7Value;
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
                                                        '2pml5c92' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'xmwu0j2x' /* Buscador... */,
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
                                                if (_model.mostrarMarisco ==
                                                    'no') {
                                                  _model.mostrarMarisco = 'si';
                                                  safeSetState(() {});
                                                  _model.mostrarLacteos = 'no';
                                                  _model.mostrarHuevos = 'no';
                                                  _model.mostrarCereales = 'no';
                                                  _model.mostrarFrutas = 'no';
                                                  _model.mostrarVerduras = 'no';
                                                  _model.mostrarLegumbres =
                                                      'no';
                                                  _model.mostrarSecos = 'no';
                                                  _model.mostrarSalsas = 'no';
                                                  _model.mostrarBebidas = 'no';
                                                  _model.mostrarCarne = 'no';
                                                  _model.mostrarPescado = 'no';
                                                  safeSetState(() {});
                                                } else {
                                                  _model.mostrarMarisco = 'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'rf8fwh4y' /* Mariscos */,
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
                                                              .mostrarMarisco ==
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
                                                                    .mostrarMarisco ==
                                                                'no') {
                                                              _model.mostrarMarisco =
                                                                  'si';
                                                              safeSetState(
                                                                  () {});
                                                              _model.mostrarLacteos =
                                                                  'no';
                                                              _model.mostrarHuevos =
                                                                  'no';
                                                              _model.mostrarCereales =
                                                                  'no';
                                                              _model.mostrarFrutas =
                                                                  'no';
                                                              _model.mostrarVerduras =
                                                                  'no';
                                                              _model.mostrarLegumbres =
                                                                  'no';
                                                              _model.mostrarSecos =
                                                                  'no';
                                                              _model.mostrarSalsas =
                                                                  'no';
                                                              _model.mostrarBebidas =
                                                                  'no';
                                                              _model.mostrarCarne =
                                                                  'no';
                                                              _model.mostrarPescado =
                                                                  'no';
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
                                  ),
                                  if (_model.mostrarMarisco == 'si')
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
                                                            .dropMarisco1ValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropMarisco1Value ??=
                                                          _model.marisco1,
                                                    ),
                                                    options: FFLocalizations.of(
                                                                    context)
                                                                .languageCode ==
                                                            'es'
                                                        ? FFAppState()
                                                            .despMariscos
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
                                                            .despMariscos
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
                                                              .dropMarisco1Value =
                                                          val);
                                                      _model.marisco1 = _model
                                                          .dropMarisco1Value;
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
                                                      '11hlpqb8' /* Selecciona tu respuesta */,
                                                    ),
                                                    searchHintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '7bjfs7sa' /* Buscador... */,
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
                                                if ((_model.dropMarisco1Value !=
                                                            null &&
                                                        _model.dropMarisco1Value !=
                                                            '') &&
                                                    (_model.dropMarisco1Value !=
                                                        'No he comido más mariscos') &&
                                                    (_model.dropMarisco1Value !=
                                                        'I have not eaten any more seafood'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropMarisco2ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropMarisco2Value ??=
                                                            _model.marisco2,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despMariscos
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
                                                              .despMariscos
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
                                                                .dropMarisco2Value =
                                                            val);
                                                        _model.marisco2 = _model
                                                            .dropMarisco2Value;
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
                                                        'hg4h6nlx' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '9yqoycxe' /* Buscador... */,
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
                                                if ((_model.dropMarisco2Value !=
                                                            null &&
                                                        _model.dropMarisco2Value !=
                                                            '') &&
                                                    (_model.dropMarisco2Value !=
                                                        'No he comido más mariscos') &&
                                                    (_model.dropMarisco2Value !=
                                                        'I have not eaten any more seafood'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropMarisco3ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropMarisco3Value ??=
                                                            _model.marisco3,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despMariscos
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
                                                              .despMariscos
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
                                                                .dropMarisco3Value =
                                                            val);
                                                        _model.marisco3 = _model
                                                            .dropMarisco3Value;
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
                                                        'rvzj6s5v' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'gfco24qy' /* Buscador... */,
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
                                                if ((_model.dropMarisco3Value !=
                                                            null &&
                                                        _model.dropMarisco3Value !=
                                                            '') &&
                                                    (_model.dropMarisco3Value !=
                                                        'No he comido más mariscos') &&
                                                    (_model.dropMarisco3Value !=
                                                        'I have not eaten any more seafood'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropMarisco4ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropMarisco4Value ??=
                                                            _model.marisco4,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despMariscos
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
                                                              .despMariscos
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
                                                                .dropMarisco4Value =
                                                            val);
                                                        _model.marisco4 = _model
                                                            .dropMarisco4Value;
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
                                                        'fupmv1dq' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'q65ybyge' /* Buscador... */,
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
                                                if ((_model.dropMarisco4Value !=
                                                            null &&
                                                        _model.dropMarisco4Value !=
                                                            '') &&
                                                    (_model.dropMarisco4Value !=
                                                        'No he comido más mariscos') &&
                                                    (_model.dropMarisco4Value !=
                                                        'I have not eaten any more seafood'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropMarisco5ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropMarisco5Value ??=
                                                            _model.marisco5,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despMariscos
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
                                                              .despMariscos
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
                                                                .dropMarisco5Value =
                                                            val);
                                                        _model.marisco5 = _model
                                                            .dropMarisco5Value;
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
                                                        '3kezk8o8' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'mpfhj5qd' /* Buscador... */,
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
                                                if ((_model.dropMarisco5Value !=
                                                            null &&
                                                        _model.dropMarisco5Value !=
                                                            '') &&
                                                    (_model.dropMarisco5Value !=
                                                        'No he comido más mariscos') &&
                                                    (_model.dropMarisco5Value !=
                                                        'I have not eaten any more seafood'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropMarisco6ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropMarisco6Value ??=
                                                            _model.marisco6,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despMariscos
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
                                                              .despMariscos
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
                                                                .dropMarisco6Value =
                                                            val);
                                                        _model.marisco6 = _model
                                                            .dropMarisco6Value;
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
                                                        '9v2u7stw' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'zxh0fnht' /* Buscador... */,
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
                                                if ((_model.dropMarisco6Value !=
                                                            null &&
                                                        _model.dropMarisco6Value !=
                                                            '') &&
                                                    (_model.dropMarisco6Value !=
                                                        'No he comido más mariscos') &&
                                                    (_model.dropMarisco6Value !=
                                                        'I have not eaten any more seafood'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropMarisco7ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropMarisco7Value ??=
                                                            _model.marisco7,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despMariscos
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
                                                              .despMariscos
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
                                                                .dropMarisco7Value =
                                                            val);
                                                        _model.marisco7 = _model
                                                            .dropMarisco7Value;
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
                                                        'nl5ieu5e' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '2oh8suqc' /* Buscador... */,
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
                                                if (_model.mostrarLacteos ==
                                                    'no') {
                                                  _model.mostrarLacteos = 'si';
                                                  safeSetState(() {});
                                                  _model.mostrarHuevos = 'no';
                                                  _model.mostrarCereales = 'no';
                                                  _model.mostrarFrutas = 'no';
                                                  _model.mostrarVerduras = 'no';
                                                  _model.mostrarLegumbres =
                                                      'no';
                                                  _model.mostrarSecos = 'no';
                                                  _model.mostrarSalsas = 'no';
                                                  _model.mostrarBebidas = 'no';
                                                  _model.mostrarCarne = 'no';
                                                  _model.mostrarPescado = 'no';
                                                  _model.mostrarMarisco = 'no';
                                                  safeSetState(() {});
                                                } else {
                                                  _model.mostrarLacteos = 'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'e4axavtq' /* Lácteos */,
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
                                                              .mostrarLacteos ==
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
                                                                    .mostrarLacteos ==
                                                                'no') {
                                                              _model.mostrarLacteos =
                                                                  'si';
                                                              safeSetState(
                                                                  () {});
                                                              _model.mostrarHuevos =
                                                                  'no';
                                                              _model.mostrarCereales =
                                                                  'no';
                                                              _model.mostrarFrutas =
                                                                  'no';
                                                              _model.mostrarVerduras =
                                                                  'no';
                                                              _model.mostrarLegumbres =
                                                                  'no';
                                                              _model.mostrarSecos =
                                                                  'no';
                                                              _model.mostrarSalsas =
                                                                  'no';
                                                              _model.mostrarBebidas =
                                                                  'no';
                                                              _model.mostrarCarne =
                                                                  'no';
                                                              _model.mostrarPescado =
                                                                  'no';
                                                              _model.mostrarMarisco =
                                                                  'no';
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
                                  ),
                                  if (_model.mostrarLacteos == 'si')
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
                                                            .dropLacteos1pValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropLacteos1pValue ??=
                                                          _model.lacteos1,
                                                    ),
                                                    options: FFLocalizations.of(
                                                                    context)
                                                                .languageCode ==
                                                            'es'
                                                        ? FFAppState()
                                                            .despLacteos
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
                                                            .despLacteos
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
                                                              .dropLacteos1pValue =
                                                          val);
                                                      _model.lacteos1 = _model
                                                          .dropLacteos1pValue;
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
                                                      'q736v5gv' /* Selecciona tu respuesta */,
                                                    ),
                                                    searchHintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'tfhahqie' /* Buscador... */,
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
                                                if ((_model.lacteos1 != null &&
                                                        _model.lacteos1 !=
                                                            '') &&
                                                    (_model.lacteos1 !=
                                                        'No he comido más lácteos') &&
                                                    (_model.lacteos1 !=
                                                        'I have not eaten any more dairy'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropLacteos2ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropLacteos2Value ??=
                                                            _model.lacteos2,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despLacteos
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
                                                              .despLacteos
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
                                                                .dropLacteos2Value =
                                                            val);
                                                        _model.lacteos2 = _model
                                                            .dropLacteos2Value;
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
                                                        'onhwb3ke' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'l7syhddm' /* Buscador... */,
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
                                                if ((_model.lacteos2 != null &&
                                                        _model.lacteos2 !=
                                                            '') &&
                                                    (_model.lacteos2 !=
                                                        'No he comido más lácteos') &&
                                                    (_model.lacteos2 !=
                                                        'I have not eaten any more dairy'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropLacteos3ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropLacteos3Value ??=
                                                            _model.lacteos3,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despLacteos
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
                                                              .despLacteos
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
                                                                .dropLacteos3Value =
                                                            val);
                                                        _model.lacteos3 = _model
                                                            .dropLacteos3Value;
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
                                                        '5jkxiiiu' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '3i4yvc1i' /* Buscador... */,
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
                                                if ((_model.lacteos3 != null &&
                                                        _model.lacteos3 !=
                                                            '') &&
                                                    (_model.lacteos3 !=
                                                        'No he comido más lácteos') &&
                                                    (_model.lacteos3 !=
                                                        'I have not eaten any more dairy'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropLacteos4ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropLacteos4Value ??=
                                                            _model.lacteos4,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despLacteos
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
                                                              .despLacteos
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
                                                                .dropLacteos4Value =
                                                            val);
                                                        _model.lacteos4 = _model
                                                            .dropLacteos4Value;
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
                                                        'lq2fo675' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'flz8i6a5' /* Buscador... */,
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
                                                if ((_model.lacteos4 != null &&
                                                        _model.lacteos4 !=
                                                            '') &&
                                                    (_model.lacteos4 !=
                                                        'No he comido más lácteos') &&
                                                    (_model.lacteos4 !=
                                                        'I have not eaten any more dairy'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropLacteos5ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropLacteos5Value ??=
                                                            _model.lacteos5,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despLacteos
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
                                                              .despLacteos
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
                                                                .dropLacteos5Value =
                                                            val);
                                                        _model.lacteos5 = _model
                                                            .dropLacteos5Value;
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
                                                        'tny1u2hy' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'p4elhwww' /* Buscador... */,
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
                                                if ((_model.lacteos5 != null &&
                                                        _model.lacteos5 !=
                                                            '') &&
                                                    (_model.lacteos5 !=
                                                        'No he comido más lácteos') &&
                                                    (_model.lacteos5 !=
                                                        'I have not eaten any more dairy'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropLacteos6ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropLacteos6Value ??=
                                                            _model.lacteos6,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despLacteos
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
                                                              .despLacteos
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
                                                                .dropLacteos6Value =
                                                            val);
                                                        _model.lacteos6 = _model
                                                            .dropLacteos6Value;
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
                                                        'szwrf6zw' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'uwbyao6b' /* Buscador... */,
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
                                                if ((_model.lacteos6 != null &&
                                                        _model.lacteos6 !=
                                                            '') &&
                                                    (_model.lacteos6 !=
                                                        'No he comido más lácteos') &&
                                                    (_model.lacteos6 !=
                                                        'I have not eaten any more dairy'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropLacteos7ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropLacteos7Value ??=
                                                            _model.lacteos7,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despLacteos
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
                                                              .despLacteos
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
                                                                .dropLacteos7Value =
                                                            val);
                                                        _model.lacteos7 = _model
                                                            .dropLacteos7Value;
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
                                                        'qn8cuyy3' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'z4529ge8' /* Buscador... */,
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
                                                if (_model.mostrarHuevos ==
                                                    'no') {
                                                  _model.mostrarHuevos = 'si';
                                                  safeSetState(() {});
                                                  _model.mostrarCereales = 'no';
                                                  _model.mostrarFrutas = 'no';
                                                  _model.mostrarVerduras = 'no';
                                                  _model.mostrarLegumbres =
                                                      'no';
                                                  _model.mostrarSecos = 'no';
                                                  _model.mostrarSalsas = 'no';
                                                  _model.mostrarBebidas = 'no';
                                                  _model.mostrarCarne = 'no';
                                                  _model.mostrarPescado = 'no';
                                                  _model.mostrarMarisco = 'no';
                                                  _model.mostrarLacteos = 'no';
                                                  safeSetState(() {});
                                                } else {
                                                  _model.mostrarHuevos = 'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '5ybmwweo' /* Huevos */,
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
                                                              .mostrarHuevos ==
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
                                                                    .mostrarHuevos ==
                                                                'no') {
                                                              _model.mostrarHuevos =
                                                                  'si';
                                                              safeSetState(
                                                                  () {});
                                                              _model.mostrarCereales =
                                                                  'no';
                                                              _model.mostrarFrutas =
                                                                  'no';
                                                              _model.mostrarVerduras =
                                                                  'no';
                                                              _model.mostrarLegumbres =
                                                                  'no';
                                                              _model.mostrarSecos =
                                                                  'no';
                                                              _model.mostrarSalsas =
                                                                  'no';
                                                              _model.mostrarBebidas =
                                                                  'no';
                                                              _model.mostrarCarne =
                                                                  'no';
                                                              _model.mostrarPescado =
                                                                  'no';
                                                              _model.mostrarMarisco =
                                                                  'no';
                                                              _model.mostrarLacteos =
                                                                  'no';
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
                                  ),
                                  if (_model.mostrarHuevos == 'si')
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
                                                            .dropHuevos1ValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropHuevos1Value ??=
                                                          _model.huevos1,
                                                    ),
                                                    options: FFLocalizations.of(
                                                                    context)
                                                                .languageCode ==
                                                            'es'
                                                        ? FFAppState()
                                                            .despHuevos
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
                                                            .despHuevos
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
                                                              .dropHuevos1Value =
                                                          val);
                                                      _model.huevos1 = _model
                                                          .dropHuevos1Value;
                                                      _model.contador =
                                                          _model.contador + 1;
                                                      safeSetState(() {});
                                                    },
                                                    width: 350.0,
                                                    height: 50.0,
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
                                                      'xteh8ew3' /* Selecciona tu respuesta */,
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
                                                    isSearchable: false,
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
                                                if (_model.mostrarCereales ==
                                                    'no') {
                                                  _model.mostrarCereales = 'si';
                                                  safeSetState(() {});
                                                  _model.mostrarFrutas = 'no';
                                                  _model.mostrarVerduras = 'no';
                                                  _model.mostrarLegumbres =
                                                      'no';
                                                  _model.mostrarSecos = 'no';
                                                  _model.mostrarSalsas = 'no';
                                                  _model.mostrarBebidas = 'no';
                                                  _model.mostrarCarne = 'no';
                                                  _model.mostrarPescado = 'no';
                                                  _model.mostrarMarisco = 'no';
                                                  _model.mostrarLacteos = 'no';
                                                  _model.mostrarHuevos = 'no';
                                                  safeSetState(() {});
                                                } else {
                                                  _model.mostrarCereales = 'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'cj74bnf9' /* Panes y Cereales */,
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
                                                              .mostrarCereales ==
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
                                                                    .mostrarCereales ==
                                                                'no') {
                                                              _model.mostrarCereales =
                                                                  'si';
                                                              safeSetState(
                                                                  () {});
                                                            } else {
                                                              _model.mostrarCereales =
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
                                                              .mostrarCereales ==
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
                                                                    .mostrarCereales ==
                                                                'no') {
                                                              _model.mostrarCereales =
                                                                  'si';
                                                              safeSetState(
                                                                  () {});
                                                              _model.mostrarFrutas =
                                                                  'no';
                                                              _model.mostrarVerduras =
                                                                  'no';
                                                              _model.mostrarLegumbres =
                                                                  'no';
                                                              _model.mostrarSecos =
                                                                  'no';
                                                              _model.mostrarSalsas =
                                                                  'no';
                                                              _model.mostrarBebidas =
                                                                  'no';
                                                              _model.mostrarCarne =
                                                                  'no';
                                                              _model.mostrarPescado =
                                                                  'no';
                                                              _model.mostrarMarisco =
                                                                  'no';
                                                              _model.mostrarLacteos =
                                                                  'no';
                                                              _model.mostrarHuevos =
                                                                  'no';
                                                              safeSetState(
                                                                  () {});
                                                            } else {
                                                              _model.mostrarCereales =
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
                                  ),
                                  if (_model.mostrarCereales == 'si')
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
                                                            .dropCereales1ValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropCereales1Value ??=
                                                          _model.cereales1,
                                                    ),
                                                    options: FFLocalizations.of(
                                                                    context)
                                                                .languageCode ==
                                                            'es'
                                                        ? FFAppState()
                                                            .despCereales
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
                                                            .despCereales
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
                                                              .dropCereales1Value =
                                                          val);
                                                      _model.cereales1 = _model
                                                          .dropCereales1Value;
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
                                                      'mvvrsnxa' /* Selecciona tu respuesta */,
                                                    ),
                                                    searchHintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '7kjpbp8p' /* Buscador... */,
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
                                                if ((_model.dropCereales1Value !=
                                                            null &&
                                                        _model.dropCereales1Value !=
                                                            '') &&
                                                    (_model.dropCereales1Value !=
                                                        'No he comido más cereales o pan') &&
                                                    (_model.dropCereales1Value !=
                                                        'I have not eaten any more cereals or bread'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropCereales2ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropCereales2Value ??=
                                                            _model.cereales2,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despCereales
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
                                                              .despCereales
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
                                                                .dropCereales2Value =
                                                            val);
                                                        _model.cereales2 = _model
                                                            .dropCereales2Value;
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
                                                        '7mps3y5b' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'ek9on5g9' /* Buscador... */,
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
                                                if ((_model.dropCereales2Value !=
                                                            null &&
                                                        _model.dropCereales2Value !=
                                                            '') &&
                                                    (_model.dropCereales2Value !=
                                                        'No he comido más cereales o pan') &&
                                                    (_model.dropCereales2Value !=
                                                        'I have not eaten any more cereals or bread'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropCereales3ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropCereales3Value ??=
                                                            _model.cereales3,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despCereales
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
                                                              .despCereales
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
                                                                .dropCereales3Value =
                                                            val);
                                                        _model.cereales3 = _model
                                                            .dropCereales3Value;
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
                                                        '4gx0o3j7' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'r5mtc1x3' /* Buscador... */,
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
                                                if ((_model.dropCereales3Value !=
                                                            null &&
                                                        _model.dropCereales3Value !=
                                                            '') &&
                                                    (_model.dropCereales3Value !=
                                                        'No he comido más cereales o pan') &&
                                                    (_model.dropCereales3Value !=
                                                        'I have not eaten any more cereals or bread'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropCereales4ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropCereales4Value ??=
                                                            _model.cereales4,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despCereales
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
                                                              .despCereales
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
                                                                .dropCereales4Value =
                                                            val);
                                                        _model.cereales4 = _model
                                                            .dropCereales4Value;
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
                                                        'yfxqaryt' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'ro9k1ji2' /* Buscador... */,
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
                                                if ((_model.dropCereales4Value !=
                                                            null &&
                                                        _model.dropCereales4Value !=
                                                            '') &&
                                                    (_model.dropCereales4Value !=
                                                        'No he comido más cereales o pan') &&
                                                    (_model.dropCereales4Value !=
                                                        'I have not eaten any more cereals or bread'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropCereales5ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropCereales5Value ??=
                                                            _model.cereales5,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despCereales
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
                                                              .despCereales
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
                                                                .dropCereales5Value =
                                                            val);
                                                        _model.cereales5 = _model
                                                            .dropCereales5Value;
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
                                                        'pj0hj8zp' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'gqc2ibix' /* Buscador... */,
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
                                                if ((_model.dropCereales5Value !=
                                                            null &&
                                                        _model.dropCereales5Value !=
                                                            '') &&
                                                    (_model.dropCereales5Value !=
                                                        'No he comido más cereales o pan') &&
                                                    (_model.dropCereales5Value !=
                                                        'I have not eaten any more cereals or bread'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropCereales6ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropCereales6Value ??=
                                                            _model.cereales6,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despCereales
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
                                                              .despCereales
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
                                                                .dropCereales6Value =
                                                            val);
                                                        _model.cereales6 = _model
                                                            .dropCereales6Value;
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
                                                        '57s8cclg' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'pa48vgp8' /* Buscador... */,
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
                                                if ((_model.dropCereales6Value !=
                                                            null &&
                                                        _model.dropCereales6Value !=
                                                            '') &&
                                                    (_model.dropCereales6Value !=
                                                        'No he comido más cereales o pan') &&
                                                    (_model.dropCereales6Value !=
                                                        'I have not eaten any more cereals or bread'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropCereales7ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropCereales7Value ??=
                                                            _model.cereales7,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despCereales
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
                                                              .despCereales
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
                                                                .dropCereales7Value =
                                                            val);
                                                        _model.cereales7 = _model
                                                            .dropCereales7Value;
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
                                                        'lw8fzh0r' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'b5pnjps7' /* Buscador... */,
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
                                                if (_model.mostrarFrutas ==
                                                    'no') {
                                                  _model.mostrarFrutas = 'si';
                                                  safeSetState(() {});
                                                  _model.mostrarVerduras = 'no';
                                                  _model.mostrarLegumbres =
                                                      'no';
                                                  _model.mostrarSecos = 'no';
                                                  _model.mostrarSalsas = 'no';
                                                  _model.mostrarBebidas = 'no';
                                                  _model.mostrarCarne = 'no';
                                                  _model.mostrarPescado = 'no';
                                                  _model.mostrarMarisco = 'no';
                                                  _model.mostrarLacteos = 'no';
                                                  _model.mostrarHuevos = 'no';
                                                  _model.mostrarCereales = 'no';
                                                  safeSetState(() {});
                                                } else {
                                                  _model.mostrarFrutas = 'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'susx56sp' /* Frutas */,
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
                                                              .mostrarFrutas ==
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
                                                                    .mostrarFrutas ==
                                                                'no') {
                                                              _model.mostrarFrutas =
                                                                  'si';
                                                              safeSetState(
                                                                  () {});
                                                              _model.mostrarVerduras =
                                                                  'no';
                                                              _model.mostrarLegumbres =
                                                                  'no';
                                                              _model.mostrarSecos =
                                                                  'no';
                                                              _model.mostrarSalsas =
                                                                  'no';
                                                              _model.mostrarBebidas =
                                                                  'no';
                                                              _model.mostrarCarne =
                                                                  'no';
                                                              _model.mostrarPescado =
                                                                  'no';
                                                              _model.mostrarMarisco =
                                                                  'no';
                                                              _model.mostrarLacteos =
                                                                  'no';
                                                              _model.mostrarHuevos =
                                                                  'no';
                                                              _model.mostrarCereales =
                                                                  'no';
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
                                  ),
                                  if (_model.mostrarFrutas == 'si')
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
                                                            .dropFrutas1ValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropFrutas1Value ??=
                                                          _model.frutas1,
                                                    ),
                                                    options: FFLocalizations.of(
                                                                    context)
                                                                .languageCode ==
                                                            'es'
                                                        ? FFAppState()
                                                            .despFrutas
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
                                                            .despFrutas
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
                                                              .dropFrutas1Value =
                                                          val);
                                                      _model.frutas1 = _model
                                                          .dropFrutas1Value;
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
                                                      '5oha8l2w' /* Selecciona tu respuesta */,
                                                    ),
                                                    searchHintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'yiuno16f' /* Buscador... */,
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
                                                if ((_model.dropFrutas1Value !=
                                                            null &&
                                                        _model.dropFrutas1Value !=
                                                            '') &&
                                                    (_model.dropFrutas1Value !=
                                                        'No he comido más frutas') &&
                                                    (_model.dropFrutas1Value !=
                                                        'I have not eaten any more fruit'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropFrutas2ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropFrutas2Value ??=
                                                            _model.frutas2,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despFrutas
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
                                                              .despFrutas
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
                                                                .dropFrutas2Value =
                                                            val);
                                                        _model.frutas2 = _model
                                                            .dropFrutas2Value;
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
                                                        'orv0qdjt' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'loqhyux1' /* Buscador... */,
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
                                                if ((_model.dropFrutas2Value !=
                                                            null &&
                                                        _model.dropFrutas2Value !=
                                                            '') &&
                                                    (_model.dropFrutas2Value !=
                                                        'No he comido más frutas') &&
                                                    (_model.dropFrutas2Value !=
                                                        'I have not eaten any more fruit'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropFrutas3ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropFrutas3Value ??=
                                                            _model.frutas3,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despFrutas
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
                                                              .despFrutas
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
                                                                .dropFrutas3Value =
                                                            val);
                                                        _model.frutas3 = _model
                                                            .dropFrutas3Value;
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
                                                        'd2wu0ao3' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '3u2mmoik' /* Buscador... */,
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
                                                if ((_model.dropFrutas3Value !=
                                                            null &&
                                                        _model.dropFrutas3Value !=
                                                            '') &&
                                                    (_model.dropFrutas3Value !=
                                                        'No he comido más frutas') &&
                                                    (_model.dropFrutas3Value !=
                                                        'I have not eaten any more fruit'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropFrutas4ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropFrutas4Value ??=
                                                            _model.frutas4,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despFrutas
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
                                                              .despFrutas
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
                                                                .dropFrutas4Value =
                                                            val);
                                                        _model.frutas4 = _model
                                                            .dropFrutas4Value;
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
                                                        'awfq1b6y' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'ts0fsv5c' /* Buscador... */,
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
                                                if ((_model.dropFrutas4Value !=
                                                            null &&
                                                        _model.dropFrutas4Value !=
                                                            '') &&
                                                    (_model.dropFrutas4Value !=
                                                        'No he comido más frutas') &&
                                                    (_model.dropFrutas4Value !=
                                                        'I have not eaten any more fruit'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropFrutas5ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropFrutas5Value ??=
                                                            _model.frutas5,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despFrutas
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
                                                              .despFrutas
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
                                                                .dropFrutas5Value =
                                                            val);
                                                        _model.frutas5 = _model
                                                            .dropFrutas5Value;
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
                                                        'p7i4r7b6' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'jgxc4nex' /* Buscador... */,
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
                                                if ((_model.dropFrutas5Value !=
                                                            null &&
                                                        _model.dropFrutas5Value !=
                                                            '') &&
                                                    (_model.dropFrutas5Value !=
                                                        'No he comido más frutas') &&
                                                    (_model.dropFrutas5Value !=
                                                        'I have not eaten any more fruit'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropFrutas6ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropFrutas6Value ??=
                                                            _model.frutas6,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despFrutas
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
                                                              .despFrutas
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
                                                                .dropFrutas6Value =
                                                            val);
                                                        _model.frutas6 = _model
                                                            .dropFrutas6Value;
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
                                                        '3cnsd0rz' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '1u0010vn' /* Buscador... */,
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
                                                if ((_model.dropFrutas6Value !=
                                                            null &&
                                                        _model.dropFrutas6Value !=
                                                            '') &&
                                                    (_model.dropFrutas6Value !=
                                                        'No he comido más frutas') &&
                                                    (_model.dropFrutas6Value !=
                                                        'I have not eaten any more fruit'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropFrutas7ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropFrutas7Value ??=
                                                            _model.frutas7,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despFrutas
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
                                                              .despFrutas
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
                                                                .dropFrutas7Value =
                                                            val);
                                                        _model.frutas7 = _model
                                                            .dropFrutas7Value;
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
                                                        'rht66kkn' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'neyu3r2y' /* Buscador... */,
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
                                                if (_model.mostrarVerduras ==
                                                    'no') {
                                                  _model.mostrarVerduras = 'si';
                                                  safeSetState(() {});
                                                  _model.mostrarLegumbres =
                                                      'no';
                                                  _model.mostrarSecos = 'no';
                                                  _model.mostrarSalsas = 'no';
                                                  _model.mostrarBebidas = 'no';
                                                  _model.mostrarCarne = 'no';
                                                  _model.mostrarPescado = 'no';
                                                  _model.mostrarMarisco = 'no';
                                                  _model.mostrarLacteos = 'no';
                                                  _model.mostrarHuevos = 'no';
                                                  _model.mostrarCereales = 'no';
                                                  _model.mostrarFrutas = 'no';
                                                  safeSetState(() {});
                                                } else {
                                                  _model.mostrarVerduras = 'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'g9z0nfzy' /* Verduras y hortalizas */,
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
                                                              .mostrarVerduras ==
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
                                                      if (_model
                                                              .mostrarVerduras ==
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
                                                                    .mostrarVerduras ==
                                                                'no') {
                                                              _model.mostrarVerduras =
                                                                  'si';
                                                              safeSetState(
                                                                  () {});
                                                              _model.mostrarLegumbres =
                                                                  'no';
                                                              _model.mostrarSecos =
                                                                  'no';
                                                              _model.mostrarSalsas =
                                                                  'no';
                                                              _model.mostrarBebidas =
                                                                  'no';
                                                              _model.mostrarCarne =
                                                                  'no';
                                                              _model.mostrarPescado =
                                                                  'no';
                                                              _model.mostrarMarisco =
                                                                  'no';
                                                              _model.mostrarLacteos =
                                                                  'no';
                                                              _model.mostrarHuevos =
                                                                  'no';
                                                              _model.mostrarCereales =
                                                                  'no';
                                                              _model.mostrarFrutas =
                                                                  'no';
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
                                  ),
                                  if (_model.mostrarVerduras == 'si')
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
                                                            .dropVerduras1ValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropVerduras1Value ??=
                                                          _model.verduras1,
                                                    ),
                                                    options: FFLocalizations.of(
                                                                    context)
                                                                .languageCode ==
                                                            'es'
                                                        ? FFAppState()
                                                            .despVerduras
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
                                                            .despVerduras
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
                                                              .dropVerduras1Value =
                                                          val);
                                                      _model.verduras1 = _model
                                                          .dropVerduras1Value;
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
                                                      'rx813wwh' /* Selecciona tu respuesta */,
                                                    ),
                                                    searchHintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'yjqcarm2' /* Buscador... */,
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
                                                if ((_model.dropVerduras1Value !=
                                                            null &&
                                                        _model.dropVerduras1Value !=
                                                            '') &&
                                                    (_model.dropVerduras1Value !=
                                                        'No he comido más verduras') &&
                                                    (_model.dropVerduras1Value !=
                                                        'I have not eaten any more vegetables'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropVerduras2ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropVerduras2Value ??=
                                                            _model.verduras2,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despVerduras
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
                                                              .despVerduras
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
                                                                .dropVerduras2Value =
                                                            val);
                                                        _model.verduras2 = _model
                                                            .dropVerduras2Value;
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
                                                        '52c16soa' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'i7k2uh63' /* Buscador... */,
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
                                                if ((_model.dropVerduras2Value !=
                                                            null &&
                                                        _model.dropVerduras2Value !=
                                                            '') &&
                                                    (_model.dropVerduras2Value !=
                                                        'No he comido más verduras') &&
                                                    (_model.dropVerduras2Value !=
                                                        'I have not eaten any more vegetables'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropVerduras3ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropVerduras3Value ??=
                                                            _model.verduras3,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despVerduras
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
                                                              .despVerduras
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
                                                                .dropVerduras3Value =
                                                            val);
                                                        _model.verduras3 = _model
                                                            .dropVerduras3Value;
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
                                                        'g9m4fob0' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '0ohb8rgk' /* Buscador... */,
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
                                                if ((_model.dropVerduras3Value !=
                                                            null &&
                                                        _model.dropVerduras3Value !=
                                                            '') &&
                                                    (_model.dropVerduras3Value !=
                                                        'No he comido más verduras') &&
                                                    (_model.dropVerduras3Value !=
                                                        'I have not eaten any more vegetables'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropVerduras4ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropVerduras4Value ??=
                                                            _model.verduras4,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despVerduras
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
                                                              .despVerduras
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
                                                                .dropVerduras4Value =
                                                            val);
                                                        _model.verduras4 = _model
                                                            .dropVerduras4Value;
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
                                                        'fsi1jk2v' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '8sgnlhdf' /* Buscador... */,
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
                                                if ((_model.dropVerduras4Value !=
                                                            null &&
                                                        _model.dropVerduras4Value !=
                                                            '') &&
                                                    (_model.dropVerduras4Value !=
                                                        'No he comido más verduras') &&
                                                    (_model.dropVerduras4Value !=
                                                        'I have not eaten any more vegetables'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropVerduras5ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropVerduras5Value ??=
                                                            _model.verduras5,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despVerduras
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
                                                              .despVerduras
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
                                                                .dropVerduras5Value =
                                                            val);
                                                        _model.verduras5 = _model
                                                            .dropVerduras5Value;
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
                                                        'nkoltv1a' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'dxw19zpm' /* Buscador... */,
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
                                                if ((_model.dropVerduras5Value !=
                                                            null &&
                                                        _model.dropVerduras5Value !=
                                                            '') &&
                                                    (_model.dropVerduras5Value !=
                                                        'No he comido más verduras') &&
                                                    (_model.dropVerduras5Value !=
                                                        'I have not eaten any more vegetables'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropVerduras6ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropVerduras6Value ??=
                                                            _model.verduras6,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despVerduras
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
                                                              .despVerduras
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
                                                                .dropVerduras6Value =
                                                            val);
                                                        _model.verduras6 = _model
                                                            .dropVerduras6Value;
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
                                                        '1g07153i' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'cl0k3jip' /* Buscador... */,
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
                                                if ((_model.dropVerduras6Value !=
                                                            null &&
                                                        _model.dropVerduras6Value !=
                                                            '') &&
                                                    (_model.dropVerduras6Value !=
                                                        'No he comido más verduras') &&
                                                    (_model.dropVerduras6Value !=
                                                        'I have not eaten any more vegetables'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropVerduras7ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropVerduras7Value ??=
                                                            _model.verduras7,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despVerduras
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
                                                              .despVerduras
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
                                                                .dropVerduras7Value =
                                                            val);
                                                        _model.verduras7 = _model
                                                            .dropVerduras7Value;
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
                                                        'p4c922cx' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '2cmy9uos' /* Buscador... */,
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
                                                if (_model.mostrarLegumbres ==
                                                    'no') {
                                                  _model.mostrarLegumbres =
                                                      'si';
                                                  safeSetState(() {});
                                                  _model.mostrarSecos = 'no';
                                                  _model.mostrarSalsas = 'no';
                                                  _model.mostrarBebidas = 'no';
                                                  _model.mostrarCarne = 'no';
                                                  _model.mostrarPescado = 'no';
                                                  _model.mostrarMarisco = 'no';
                                                  _model.mostrarLacteos = 'no';
                                                  _model.mostrarHuevos = 'no';
                                                  _model.mostrarCereales = 'no';
                                                  _model.mostrarFrutas = 'no';
                                                  _model.mostrarVerduras = 'no';
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
                                                  'sl39ak2u' /* Legumbres */,
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
                                                              .mostrarLegumbres ==
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
                                                                    .mostrarLegumbres ==
                                                                'no') {
                                                              _model.mostrarLegumbres =
                                                                  'si';
                                                              safeSetState(
                                                                  () {});
                                                              _model.mostrarSecos =
                                                                  'no';
                                                              _model.mostrarSalsas =
                                                                  'no';
                                                              _model.mostrarBebidas =
                                                                  'no';
                                                              _model.mostrarCarne =
                                                                  'no';
                                                              _model.mostrarPescado =
                                                                  'no';
                                                              _model.mostrarMarisco =
                                                                  'no';
                                                              _model.mostrarLacteos =
                                                                  'no';
                                                              _model.mostrarHuevos =
                                                                  'no';
                                                              _model.mostrarCereales =
                                                                  'no';
                                                              _model.mostrarFrutas =
                                                                  'no';
                                                              _model.mostrarVerduras =
                                                                  'no';
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
                                  ),
                                  if (_model.mostrarLegumbres == 'si')
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
                                                            .dropLegumbres1ValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropLegumbres1Value ??=
                                                          _model.legumbres1,
                                                    ),
                                                    options: FFLocalizations.of(
                                                                    context)
                                                                .languageCode ==
                                                            'es'
                                                        ? FFAppState()
                                                            .despLegumbres
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
                                                            .despLegumbres
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
                                                              .dropLegumbres1Value =
                                                          val);
                                                      _model.legumbres1 = _model
                                                          .dropLegumbres1Value;
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
                                                      'fmtyhv65' /* Selecciona tu respuesta */,
                                                    ),
                                                    searchHintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'pykj87p3' /* Buscador... */,
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
                                                if ((_model.dropLegumbres1Value !=
                                                            null &&
                                                        _model.dropLegumbres1Value !=
                                                            '') &&
                                                    (_model.dropLegumbres1Value !=
                                                        'No he comido más legumbres') &&
                                                    (_model.dropLegumbres1Value !=
                                                        'I have not eaten any more legumes'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropLegumbres2ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropLegumbres2Value ??=
                                                            _model.legumbres2,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despLegumbres
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
                                                              .despLegumbres
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
                                                                .dropLegumbres2Value =
                                                            val);
                                                        _model.legumbres2 = _model
                                                            .dropLegumbres2Value;
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
                                                        'fhkc7g7r' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'fddav3r2' /* Buscador... */,
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
                                                if ((_model.dropLegumbres2Value !=
                                                            null &&
                                                        _model.dropLegumbres2Value !=
                                                            '') &&
                                                    (_model.dropLegumbres2Value !=
                                                        'No he comido más legumbres') &&
                                                    (_model.dropLegumbres2Value !=
                                                        'I have not eaten any more legumes'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropLegumbres3ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropLegumbres3Value ??=
                                                            _model.legumbres3,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despLegumbres
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
                                                              .despLegumbres
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
                                                                .dropLegumbres3Value =
                                                            val);
                                                        _model.legumbres3 = _model
                                                            .dropLegumbres3Value;
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
                                                        '8wwrcqor' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'pufglray' /* Buscador... */,
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
                                                if ((_model.dropLegumbres3Value !=
                                                            null &&
                                                        _model.dropLegumbres3Value !=
                                                            '') &&
                                                    (_model.dropLegumbres3Value !=
                                                        'No he comido más legumbres') &&
                                                    (_model.dropLegumbres3Value !=
                                                        'I have not eaten any more legumes'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropLegumbres4ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropLegumbres4Value ??=
                                                            _model.legumbres4,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despLegumbres
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
                                                              .despLegumbres
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
                                                                .dropLegumbres4Value =
                                                            val);
                                                        _model.legumbres4 = _model
                                                            .dropLegumbres4Value;
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
                                                        'wfe4hg5h' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'hjghkpev' /* Buscador... */,
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
                                                if ((_model.dropLegumbres4Value !=
                                                            null &&
                                                        _model.dropLegumbres4Value !=
                                                            '') &&
                                                    (_model.dropLegumbres4Value !=
                                                        'No he comido más legumbres') &&
                                                    (_model.dropLegumbres4Value !=
                                                        'I have not eaten any more legumes'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropLegumbres5ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropLegumbres5Value ??=
                                                            _model.legumbres5,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despLegumbres
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
                                                              .despLegumbres
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
                                                                .dropLegumbres5Value =
                                                            val);
                                                        _model.legumbres5 = _model
                                                            .dropLegumbres5Value;
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
                                                        '39o7qg0k' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'z2uz3mys' /* Buscador... */,
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
                                                if ((_model.dropLegumbres5Value !=
                                                            null &&
                                                        _model.dropLegumbres5Value !=
                                                            '') &&
                                                    (_model.dropLegumbres5Value !=
                                                        'No he comido más legumbres') &&
                                                    (_model.dropLegumbres5Value !=
                                                        'I have not eaten any more legumes'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropLegumbres6ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropLegumbres6Value ??=
                                                            _model.legumbres6,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despLegumbres
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
                                                              .despLegumbres
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
                                                                .dropLegumbres6Value =
                                                            val);
                                                        _model.legumbres6 = _model
                                                            .dropLegumbres6Value;
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
                                                        'w9ega1kn' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'fjhe2qkk' /* Buscador... */,
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
                                                if ((_model.dropLegumbres6Value !=
                                                            null &&
                                                        _model.dropLegumbres6Value !=
                                                            '') &&
                                                    (_model.dropLegumbres6Value !=
                                                        'No he comido más legumbres') &&
                                                    (_model.dropLegumbres6Value !=
                                                        'I have not eaten any more legumes'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropLegumbres7ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropLegumbres7Value ??=
                                                            _model.legumbres7,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despLegumbres
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
                                                              .despLegumbres
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
                                                                .dropLegumbres7Value =
                                                            val);
                                                        _model.legumbres7 = _model
                                                            .dropLegumbres7Value;
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
                                                        '954b8lbw' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'ygjc6z6r' /* Buscador... */,
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
                                                if (_model.mostrarSecos ==
                                                    'no') {
                                                  _model.mostrarSecos = 'si';
                                                  safeSetState(() {});
                                                  _model.mostrarSalsas = 'no';
                                                  _model.mostrarBebidas = 'no';
                                                  _model.mostrarCarne = 'no';
                                                  _model.mostrarPescado = 'no';
                                                  _model.mostrarMarisco = 'no';
                                                  _model.mostrarLacteos = 'no';
                                                  _model.mostrarHuevos = 'no';
                                                  _model.mostrarCereales = 'no';
                                                  _model.mostrarFrutas = 'no';
                                                  _model.mostrarVerduras = 'no';
                                                  _model.mostrarLegumbres =
                                                      'no';
                                                  safeSetState(() {});
                                                } else {
                                                  _model.mostrarSecos = 'si';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '4a1dm3f1' /* Frutos Secos */,
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
                                                      if (_model.mostrarSecos ==
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
                                                                    .mostrarSecos ==
                                                                'no') {
                                                              _model.mostrarSecos =
                                                                  'si';
                                                              safeSetState(
                                                                  () {});
                                                            } else {
                                                              _model.mostrarSecos =
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
                                                      if (_model.mostrarSecos ==
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
                                                                    .mostrarSecos ==
                                                                'no') {
                                                              _model.mostrarSecos =
                                                                  'si';
                                                              safeSetState(
                                                                  () {});
                                                              _model.mostrarSalsas =
                                                                  'no';
                                                              _model.mostrarBebidas =
                                                                  'no';
                                                              _model.mostrarCarne =
                                                                  'no';
                                                              _model.mostrarPescado =
                                                                  'no';
                                                              _model.mostrarMarisco =
                                                                  'no';
                                                              _model.mostrarLacteos =
                                                                  'no';
                                                              _model.mostrarHuevos =
                                                                  'no';
                                                              _model.mostrarCereales =
                                                                  'no';
                                                              _model.mostrarFrutas =
                                                                  'no';
                                                              _model.mostrarVerduras =
                                                                  'no';
                                                              _model.mostrarLegumbres =
                                                                  'no';
                                                              safeSetState(
                                                                  () {});
                                                            } else {
                                                              _model.mostrarSecos =
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
                                  ),
                                  if (_model.mostrarSecos == 'si')
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
                                                            .dropSecos1ValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropSecos1Value ??=
                                                          _model.secos1,
                                                    ),
                                                    options: FFLocalizations.of(
                                                                    context)
                                                                .languageCode ==
                                                            'es'
                                                        ? FFAppState()
                                                            .despSecos
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
                                                            .despSecos
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
                                                              .dropSecos1Value =
                                                          val);
                                                      _model.secos1 = _model
                                                          .dropSecos1Value;
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
                                                      'fwm03oei' /* Selecciona tu respuesta */,
                                                    ),
                                                    searchHintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'nojz5e7e' /* Buscador... */,
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
                                                if ((_model.dropSecos1Value !=
                                                            null &&
                                                        _model.dropSecos1Value !=
                                                            '') &&
                                                    (_model.dropSecos1Value !=
                                                        'No he comido más frutos secos') &&
                                                    (_model.dropSecos1Value !=
                                                        'I have not eaten any more nuts'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropSecos2ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropSecos2Value ??=
                                                            _model.secos2,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despSecos
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
                                                              .despSecos
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
                                                                .dropSecos2Value =
                                                            val);
                                                        _model.secos2 = _model
                                                            .dropSecos2Value;
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
                                                        '033ikeyv' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '45jbnrjg' /* Buscador... */,
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
                                                if ((_model.dropSecos2Value !=
                                                            null &&
                                                        _model.dropSecos2Value !=
                                                            '') &&
                                                    (_model.dropSecos2Value !=
                                                        'No he comido más frutos secos') &&
                                                    (_model.dropSecos2Value !=
                                                        'I have not eaten any more nuts'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropSecos3ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropSecos3Value ??=
                                                            _model.secos3,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despSecos
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
                                                              .despSecos
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
                                                                .dropSecos3Value =
                                                            val);
                                                        _model.secos3 = _model
                                                            .dropSecos3Value;
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
                                                        'x4il112h' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'qxpakvl3' /* Buscador... */,
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
                                                if ((_model.dropSecos3Value !=
                                                            null &&
                                                        _model.dropSecos3Value !=
                                                            '') &&
                                                    (_model.dropSecos3Value !=
                                                        'No he comido más frutos secos') &&
                                                    (_model.dropSecos3Value !=
                                                        'I have not eaten any more nuts'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropSecos4ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropSecos4Value ??=
                                                            _model.secos4,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despSecos
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
                                                              .despSecos
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
                                                                .dropSecos4Value =
                                                            val);
                                                        _model.secos4 = _model
                                                            .dropSecos4Value;
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
                                                        '6jrws0s0' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'mghqot24' /* Buscador... */,
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
                                                if ((_model.dropSecos4Value !=
                                                            null &&
                                                        _model.dropSecos4Value !=
                                                            '') &&
                                                    (_model.dropSecos4Value !=
                                                        'No he comido más frutos secos') &&
                                                    (_model.dropSecos4Value !=
                                                        'I have not eaten any more nuts'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropSecos5ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropSecos5Value ??=
                                                            _model.secos5,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despSecos
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
                                                              .despSecos
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
                                                                .dropSecos5Value =
                                                            val);
                                                        _model.secos5 = _model
                                                            .dropSecos5Value;
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
                                                        'pmh9uj7i' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'juuzcjbl' /* Buscador... */,
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
                                                if ((_model.dropSecos5Value !=
                                                            null &&
                                                        _model.dropSecos5Value !=
                                                            '') &&
                                                    (_model.dropSecos5Value !=
                                                        'No he comido más frutos secos') &&
                                                    (_model.dropSecos5Value !=
                                                        'I have not eaten any more nuts'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropSecos6ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropSecos6Value ??=
                                                            _model.secos6,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despSecos
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
                                                              .despSecos
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
                                                                .dropSecos6Value =
                                                            val);
                                                        _model.secos6 = _model
                                                            .dropSecos6Value;
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
                                                        '64fmpg2w' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '2befhaxj' /* Buscador... */,
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
                                                if ((_model.dropSecos6Value !=
                                                            null &&
                                                        _model.dropSecos6Value !=
                                                            '') &&
                                                    (_model.dropSecos6Value !=
                                                        'No he comido más frutos secos') &&
                                                    (_model.dropSecos6Value !=
                                                        'I have not eaten any more nuts'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropSecos7ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropSecos7Value ??=
                                                            _model.secos7,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despSecos
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
                                                              .despSecos
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
                                                                .dropSecos7Value =
                                                            val);
                                                        _model.secos7 = _model
                                                            .dropSecos7Value;
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
                                                        'kittzlio' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '957q3c2i' /* Buscador... */,
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
                                                if (_model.mostrarSalsas ==
                                                    'no') {
                                                  _model.mostrarSalsas = 'si';
                                                  safeSetState(() {});
                                                  _model.mostrarBebidas = 'no';
                                                  _model.mostrarCarne = 'no';
                                                  _model.mostrarPescado = 'no';
                                                  _model.mostrarMarisco = 'no';
                                                  _model.mostrarLacteos = 'no';
                                                  _model.mostrarHuevos = 'no';
                                                  _model.mostrarCereales = 'no';
                                                  _model.mostrarFrutas = 'no';
                                                  _model.mostrarVerduras = 'no';
                                                  _model.mostrarLegumbres =
                                                      'no';
                                                  _model.mostrarSecos = 'no';
                                                  safeSetState(() {});
                                                } else {
                                                  _model.mostrarSalsas = 'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'h7c0df0g' /* Salsas y condimentos */,
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
                                                              .mostrarSalsas ==
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
                                                                    .mostrarSalsas ==
                                                                'no') {
                                                              _model.mostrarSalsas =
                                                                  'si';
                                                              safeSetState(
                                                                  () {});
                                                              _model.mostrarBebidas =
                                                                  'no';
                                                              _model.mostrarCarne =
                                                                  'no';
                                                              _model.mostrarPescado =
                                                                  'no';
                                                              _model.mostrarMarisco =
                                                                  'no';
                                                              _model.mostrarLacteos =
                                                                  'no';
                                                              _model.mostrarHuevos =
                                                                  'no';
                                                              _model.mostrarCereales =
                                                                  'no';
                                                              _model.mostrarFrutas =
                                                                  'no';
                                                              _model.mostrarVerduras =
                                                                  'no';
                                                              _model.mostrarLegumbres =
                                                                  'no';
                                                              _model.mostrarSecos =
                                                                  'no';
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
                                  ),
                                  if (_model.mostrarSalsas == 'si')
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
                                                            .dropSalsa1ValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropSalsa1Value ??=
                                                          _model.salsas1,
                                                    ),
                                                    options: FFLocalizations.of(
                                                                    context)
                                                                .languageCode ==
                                                            'es'
                                                        ? FFAppState()
                                                            .despSalsas
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
                                                            .despSalsas
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
                                                              .dropSalsa1Value =
                                                          val);
                                                      _model.salsas1 = _model
                                                          .dropSalsa1Value;
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
                                                      'fgizodfu' /* Selecciona tu respuesta */,
                                                    ),
                                                    searchHintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '925lf7p8' /* Buscador... */,
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
                                                if ((_model.dropSalsa1Value !=
                                                            null &&
                                                        _model.dropSalsa1Value !=
                                                            '') &&
                                                    (_model.dropSalsa1Value !=
                                                        'No he usado más salsas o condimentos') &&
                                                    (_model.dropSalsa1Value !=
                                                        'I have not used any other sauces or condiments.'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropSalsa2ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropSalsa2Value ??=
                                                            _model.salsas2,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despSalsas
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
                                                              .despSalsas
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
                                                                .dropSalsa2Value =
                                                            val);
                                                        _model.salsas2 = _model
                                                            .dropSalsa2Value;
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
                                                        'o497sraa' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'ta3rwowd' /* Buscador... */,
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
                                                if ((_model.dropSalsa2Value !=
                                                            null &&
                                                        _model.dropSalsa2Value !=
                                                            '') &&
                                                    (_model.dropSalsa2Value !=
                                                        'No he usado más salsas o condimentos') &&
                                                    (_model.dropSalsa2Value !=
                                                        'I have not used any other sauces or condiments.'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropSalsa3ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropSalsa3Value ??=
                                                            _model.salsas3,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despSalsas
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
                                                              .despSalsas
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
                                                                .dropSalsa3Value =
                                                            val);
                                                        _model.salsas3 = _model
                                                            .dropSalsa3Value;
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
                                                        'mdomwb5v' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'cgahacy3' /* Buscador... */,
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
                                                if ((_model.dropSalsa3Value !=
                                                            null &&
                                                        _model.dropSalsa3Value !=
                                                            '') &&
                                                    (_model.dropSalsa3Value !=
                                                        'No he usado más salsas o condimentos') &&
                                                    (_model.dropSalsa3Value !=
                                                        'I have not used any other sauces or condiments.'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropSalsa4ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropSalsa4Value ??=
                                                            _model.salsas4,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despSalsas
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
                                                              .despSalsas
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
                                                                .dropSalsa4Value =
                                                            val);
                                                        _model.salsas4 = _model
                                                            .dropSalsa4Value;
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
                                                        'ehpq0rbp' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'mkyufflq' /* Buscador... */,
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
                                                if ((_model.dropSalsa4Value !=
                                                            null &&
                                                        _model.dropSalsa4Value !=
                                                            '') &&
                                                    (_model.dropSalsa4Value !=
                                                        'No he usado más salsas o condimentos') &&
                                                    (_model.dropSalsa4Value !=
                                                        'I have not used any other sauces or condiments.'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropSalsa5ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropSalsa5Value ??=
                                                            _model.salsas5,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despSalsas
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
                                                              .despSalsas
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
                                                                .dropSalsa5Value =
                                                            val);
                                                        _model.salsas5 = _model
                                                            .dropSalsa5Value;
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
                                                        'm1jgjzsu' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'nth3q5gq' /* Buscador... */,
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
                                                if ((_model.dropSalsa5Value !=
                                                            null &&
                                                        _model.dropSalsa5Value !=
                                                            '') &&
                                                    (_model.dropSalsa5Value !=
                                                        'No he usado más salsas o condimentos') &&
                                                    (_model.dropSalsa5Value !=
                                                        'I have not used any other sauces or condiments.'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropSalsa6ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropSalsa6Value ??=
                                                            _model.salsas6,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despSalsas
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
                                                              .despSalsas
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
                                                                .dropSalsa6Value =
                                                            val);
                                                        _model.salsas6 = _model
                                                            .dropSalsa6Value;
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
                                                        '2si7wfbx' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '1yucihxd' /* Buscador... */,
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
                                                if ((_model.dropSalsa6Value !=
                                                            null &&
                                                        _model.dropSalsa6Value !=
                                                            '') &&
                                                    (_model.dropSalsa6Value !=
                                                        'No he usado más salsas o condimentos') &&
                                                    (_model.dropSalsa6Value !=
                                                        'I have not used any other sauces or condiments.'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropSalsa7ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropSalsa7Value ??=
                                                            _model.salsas7,
                                                      ),
                                                      options: FFLocalizations.of(
                                                                      context)
                                                                  .languageCode ==
                                                              'es'
                                                          ? FFAppState()
                                                              .despSalsas
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
                                                              .despSalsas
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
                                                                .dropSalsa7Value =
                                                            val);
                                                        _model.salsas7 = _model
                                                            .dropSalsa7Value;
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
                                                        '0g3uy6km' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'wesfaxe8' /* Buscador... */,
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
                                                  _model.mostrarCarne = 'no';
                                                  _model.mostrarPescado = 'no';
                                                  _model.mostrarMarisco = 'no';
                                                  _model.mostrarLacteos = 'no';
                                                  _model.mostrarHuevos = 'no';
                                                  _model.mostrarCereales = 'no';
                                                  _model.mostrarFrutas = 'no';
                                                  _model.mostrarVerduras = 'no';
                                                  _model.mostrarLegumbres =
                                                      'no';
                                                  _model.mostrarSecos = 'no';
                                                  _model.mostrarSalsas = 'no';
                                                  safeSetState(() {});
                                                } else {
                                                  _model.mostrarBebidas = 'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'qdqy25ju' /* Bebidas */,
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
                                                              _model.mostrarCarne =
                                                                  'no';
                                                              _model.mostrarPescado =
                                                                  'no';
                                                              _model.mostrarMarisco =
                                                                  'no';
                                                              _model.mostrarLacteos =
                                                                  'no';
                                                              _model.mostrarHuevos =
                                                                  'no';
                                                              _model.mostrarCereales =
                                                                  'no';
                                                              _model.mostrarFrutas =
                                                                  'no';
                                                              _model.mostrarVerduras =
                                                                  'no';
                                                              _model.mostrarLegumbres =
                                                                  'no';
                                                              _model.mostrarSecos =
                                                                  'no';
                                                              _model.mostrarSalsas =
                                                                  'no';
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
                                                      '4l5vjzog' /* Selecciona tu respuesta */,
                                                    ),
                                                    searchHintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'mdi647ls' /* Buscador... */,
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
                                                        'n25ds9ru' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'mg24vgz3' /* Buscador... */,
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
                                                        'ksyc7117' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'p4f720yv' /* Buscador... */,
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
                                                        '1l7i9i0q' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'wf6imyea' /* Buscador... */,
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
                                                        'b6xa8ict' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '62cmtrkv' /* Buscador... */,
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
                                                        '4bgtcxiz' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '25pdsf5c' /* Buscador... */,
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
                                                        'hc7m4647' /* Selecciona tu respuesta */,
                                                      ),
                                                      searchHintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '35zq00qi' /* Buscador... */,
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
                                          _model.apiEditaPlato =
                                              await IntoleranciasPlatosCall
                                                  .call(
                                            accion: 'editar',
                                            id: widget!.id,
                                            nombre: _model
                                                .textFieldNameTextController
                                                .text,
                                            tipoTxt: 'comidas',
                                            tipoId: 1,
                                            carne: _model.carne1 != null &&
                                                    _model.carne1 != ''
                                                ? 'si'
                                                : 'no',
                                            carne1: _model.carne1,
                                            carne2: _model.carne2,
                                            carne3: _model.carne3,
                                            carne4: _model.carne4,
                                            carne5: _model.carne5,
                                            carne6: _model.carne6,
                                            carne7: _model.carne7,
                                            pescado: _model.pescado1 != null &&
                                                    _model.pescado1 != ''
                                                ? 'si'
                                                : 'no',
                                            pescado1: _model.pescado1,
                                            pescado2: _model.pescado2,
                                            pescado3: _model.pescado3,
                                            pescado4: _model.pescado4,
                                            pescado5: _model.pescado5,
                                            pescado6: _model.pescado6,
                                            pescado7: _model.pescado7,
                                            marisco: _model.marisco1 != null &&
                                                    _model.marisco1 != ''
                                                ? 'si'
                                                : 'no',
                                            marisco1: _model.marisco1,
                                            marisco2: _model.marisco2,
                                            marisco3: _model.marisco3,
                                            marisco4: _model.marisco4,
                                            marisco5: _model.marisco5,
                                            marisco6: _model.marisco6,
                                            marisco7: _model.marisco7,
                                            lacteos: _model.lacteos1 != null &&
                                                    _model.lacteos1 != ''
                                                ? 'si'
                                                : 'no',
                                            lacteos1: _model.lacteos1,
                                            lacteos2: _model.lacteos2,
                                            lacteos3: _model.lacteos3,
                                            lacteos4: _model.lacteos4,
                                            lacteos5: _model.lacteos5,
                                            lacteos6: _model.lacteos6,
                                            lacteos7: _model.lacteos7,
                                            huevos: _model.huevos1 != null &&
                                                    _model.huevos1 != ''
                                                ? 'si'
                                                : 'no',
                                            huevos1: _model.huevos1,
                                            cereales:
                                                _model.cereales1 != null &&
                                                        _model.cereales1 != ''
                                                    ? 'si'
                                                    : 'no',
                                            cereales1: _model.cereales1,
                                            cereales2: _model.cereales2,
                                            cereales3: _model.cereales3,
                                            cereales4: _model.cereales4,
                                            cereales5: _model.cereales5,
                                            cereales6: _model.cereales6,
                                            cereales7: _model.cereales7,
                                            frutas: _model.frutas1 != null &&
                                                    _model.frutas1 != ''
                                                ? 'si'
                                                : 'no',
                                            frutas1: _model.frutas1,
                                            frutas2: _model.frutas2,
                                            frutas3: _model.frutas3,
                                            frutas4: _model.frutas4,
                                            frutas5: _model.frutas5,
                                            frutas6: _model.frutas6,
                                            frutas7: _model.frutas7,
                                            verduras:
                                                _model.verduras1 != null &&
                                                        _model.verduras1 != ''
                                                    ? 'si'
                                                    : 'no',
                                            verduras1: _model.verduras1,
                                            verduras2: _model.verduras2,
                                            verduras3: _model.verduras3,
                                            verduras4: _model.verduras4,
                                            verduras5: _model.verduras5,
                                            verduras6: _model.verduras6,
                                            verduras7: _model.verduras7,
                                            legumbres:
                                                _model.legumbres1 != null &&
                                                        _model.legumbres1 != ''
                                                    ? 'si'
                                                    : 'no',
                                            legumbres1: _model.legumbres1,
                                            legumbres2: _model.legumbres2,
                                            legumbres3: _model.legumbres3,
                                            legumbres4: _model.legumbres4,
                                            legumbres5: _model.legumbres5,
                                            legumbres6: _model.legumbres6,
                                            legumbres7: _model.legumbres7,
                                            secos: _model.secos1 != null &&
                                                    _model.secos1 != ''
                                                ? 'si'
                                                : 'no',
                                            secos1: _model.secos1,
                                            secos2: _model.secos2,
                                            secos3: _model.secos3,
                                            secos4: _model.secos4,
                                            secos5: _model.secos5,
                                            secos6: _model.secos6,
                                            secos7: _model.secos7,
                                            salsas: _model.salsas1 != null &&
                                                    _model.salsas1 != ''
                                                ? 'si'
                                                : 'no',
                                            salsas1: _model.salsas1,
                                            salsas2: _model.salsas2,
                                            salsas3: _model.salsas3,
                                            salsas4: _model.salsas4,
                                            salsas5: _model.salsas5,
                                            salsas6: _model.salsas6,
                                            salsas7: _model.salsas7,
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
                                                  .apiEditaPlato?.succeeded ??
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
                                    'heiyinmv' /* Guardar */,
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
                                    '5a0mj1zp' /* Eliminar Plato */,
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
                                    'wcvw90q7' /* Cancelar */,
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
