import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'resumen_into_model.dart';
export 'resumen_into_model.dart';

class ResumenIntoWidget extends StatefulWidget {
  const ResumenIntoWidget({
    super.key,
    required this.diarioId,
    required this.fechaTxt,
  });

  final int? diarioId;
  final String? fechaTxt;

  @override
  State<ResumenIntoWidget> createState() => _ResumenIntoWidgetState();
}

class _ResumenIntoWidgetState extends State<ResumenIntoWidget> {
  late ResumenIntoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResumenIntoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                context.pop();
              },
            ),
            title: Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '7ra60aw5' /* Resumen de Intolerancias */,
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
          body: Stack(
            children: [
              wrapWithModel(
                model: _model.menuUsuarioModel,
                updateCallback: () => safeSetState(() {}),
                child: MenuUsuarioWidget(
                  index: 0,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Datos de fecha: ${widget!.fechaTxt}',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 15.0, 0.0, 10.0),
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
                                      'rihjlh0k' /* Resumen de Intolerancias */,
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
                                _model.pescado =
                                    ResumenCargaAlimentosCall.pescadoDesayuno(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                )!;
                                _model.marisco =
                                    ResumenCargaAlimentosCall.mariscoDesayuno(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                )!;
                                _model.lacteos =
                                    ResumenCargaAlimentosCall.lacteoDesayuno(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                )!;
                                _model.huevos =
                                    ResumenCargaAlimentosCall.huevosDesayuno(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                )!;
                                _model.cereales =
                                    ResumenCargaAlimentosCall.cerealesDesayuno(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                )!;
                                _model.frutas =
                                    ResumenCargaAlimentosCall.frutasDesayuno(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                )!;
                                _model.verduras =
                                    ResumenCargaAlimentosCall.verdurasDesayuno(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                )!;
                                _model.legumbres =
                                    ResumenCargaAlimentosCall.legumbresDesayuno(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                )!;
                                _model.secos =
                                    ResumenCargaAlimentosCall.secosDesayuno(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                )!;
                                _model.salsas =
                                    ResumenCargaAlimentosCall.salsasDesayuno(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                )!;
                                _model.bebidas =
                                    ResumenCargaAlimentosCall.bebidasDesayuno(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                )!;
                                _model.carne1 =
                                    ResumenCargaAlimentosCall.carneDesayuno1(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.carne2 =
                                    ResumenCargaAlimentosCall.carneDesayuno2(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.carne3 =
                                    ResumenCargaAlimentosCall.carneDesayuno3(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.carne4 =
                                    ResumenCargaAlimentosCall.carneDesayuno4(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.carne5 =
                                    ResumenCargaAlimentosCall.carneDesayuno5(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.carne6 =
                                    ResumenCargaAlimentosCall.carneDesayuno6(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.carne7 =
                                    ResumenCargaAlimentosCall.carneDesayuno7(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.pescado1 =
                                    ResumenCargaAlimentosCall.pescadoDesayuno1(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.pescado2 =
                                    ResumenCargaAlimentosCall.pescadoDesayuno2(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.pescado3 =
                                    ResumenCargaAlimentosCall.pescadoDesayuno3(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.pescado4 =
                                    ResumenCargaAlimentosCall.pescadoDesayuno4(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.pescado5 =
                                    ResumenCargaAlimentosCall.pescadoDesayuno5(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.pescado6 =
                                    ResumenCargaAlimentosCall.pescadoDesayuno6(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.pescado7 =
                                    ResumenCargaAlimentosCall.pescadoDesayuno7(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.marisco1 =
                                    ResumenCargaAlimentosCall.mariscoDesayuno1(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.marisco2 =
                                    ResumenCargaAlimentosCall.mariscoDesayuno2(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.marisco3 =
                                    ResumenCargaAlimentosCall.mariscoDesayuno3(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.marisco4 =
                                    ResumenCargaAlimentosCall.mariscoDesayuno4(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.marisco5 =
                                    ResumenCargaAlimentosCall.mariscoDesayuno5(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.marisco6 =
                                    ResumenCargaAlimentosCall.mariscoDesayuno6(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.marisco7 =
                                    ResumenCargaAlimentosCall.mariscoDesayuno7(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.lacteos1 =
                                    ResumenCargaAlimentosCall.lacteoDesayuno1(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.lacteos2 =
                                    ResumenCargaAlimentosCall.lacteoDesayuno2(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.lacteos3 =
                                    ResumenCargaAlimentosCall.lacteoDesayuno3(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.lacteos4 =
                                    ResumenCargaAlimentosCall.lacteoDesayuno4(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.lacteos5 =
                                    ResumenCargaAlimentosCall.lacteoDesayuno5(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.lacteos6 =
                                    ResumenCargaAlimentosCall.lacteoDesayuno6(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.lacteos7 =
                                    ResumenCargaAlimentosCall.lacteoDesayuno7(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.huevos1 =
                                    ResumenCargaAlimentosCall.huevosDesayuno1(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.cereales1 =
                                    ResumenCargaAlimentosCall.cerealesDesayuno1(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.cereales2 =
                                    ResumenCargaAlimentosCall.cerealesDesayuno2(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.cereales3 =
                                    ResumenCargaAlimentosCall.cerealesDesayuno3(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.cereales4 =
                                    ResumenCargaAlimentosCall.cerealesDesayuno4(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.cereales5 =
                                    ResumenCargaAlimentosCall.cerealesDesayuno5(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.cereales6 =
                                    ResumenCargaAlimentosCall.cerealesDesayuno6(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.cereales7 =
                                    ResumenCargaAlimentosCall.cerealesDesayuno7(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.frutas1 =
                                    ResumenCargaAlimentosCall.frutasDesayuno1(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.frutas2 =
                                    ResumenCargaAlimentosCall.frutasDesayuno2(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.frutas3 =
                                    ResumenCargaAlimentosCall.frutasDesayuno3(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.frutas4 =
                                    ResumenCargaAlimentosCall.frutasDesayuno4(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.frutas5 =
                                    ResumenCargaAlimentosCall.frutasDesayuno5(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.frutas6 =
                                    ResumenCargaAlimentosCall.frutasDesayuno6(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.frutas7 =
                                    ResumenCargaAlimentosCall.frutasDesayuno7(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.verduras1 =
                                    ResumenCargaAlimentosCall.verdurasDesayuno1(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.verduras2 =
                                    ResumenCargaAlimentosCall.verdurasDesayuno2(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.verduras3 =
                                    ResumenCargaAlimentosCall.verdurasDesayuno3(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.verduras4 =
                                    ResumenCargaAlimentosCall.verdurasDesayuno4(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.verduras5 =
                                    ResumenCargaAlimentosCall.verdurasDesayuno5(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.verduras6 =
                                    ResumenCargaAlimentosCall.verdurasDesayuno6(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.verduras7 =
                                    ResumenCargaAlimentosCall.verdurasDesayuno7(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.legumbres1 = ResumenCargaAlimentosCall
                                    .legumbresDesayuno1(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.legumbres2 = ResumenCargaAlimentosCall
                                    .legumbresDesayuno2(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.legumbres3 = ResumenCargaAlimentosCall
                                    .legumbresDesayuno3(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.legumbres4 = ResumenCargaAlimentosCall
                                    .legumbresDesayuno4(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.legumbres5 = ResumenCargaAlimentosCall
                                    .legumbresDesayuno5(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.legumbres6 = ResumenCargaAlimentosCall
                                    .legumbresDesayuno6(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.legumbres7 = ResumenCargaAlimentosCall
                                    .legumbresDesayuno7(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.secos1 =
                                    ResumenCargaAlimentosCall.secosDesayuno1(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.secos2 =
                                    ResumenCargaAlimentosCall.secosDesayuno2(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.secos3 =
                                    ResumenCargaAlimentosCall.secosDesayuno3(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.secos4 =
                                    ResumenCargaAlimentosCall.secosDesayuno4(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.secos5 =
                                    ResumenCargaAlimentosCall.secosDesayuno5(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.secos6 =
                                    ResumenCargaAlimentosCall.secosDesayuno6(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.secos7 =
                                    ResumenCargaAlimentosCall.secosDesayuno7(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.salsa1 =
                                    ResumenCargaAlimentosCall.salsasDesayuno1(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.salsa2 =
                                    ResumenCargaAlimentosCall.salsasDesayuno2(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.salsa3 =
                                    ResumenCargaAlimentosCall.salsasDesayuno3(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.salsa4 =
                                    ResumenCargaAlimentosCall.salsasDesayuno4(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.salsa5 =
                                    ResumenCargaAlimentosCall.salsasDesayuno5(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.salsa6 =
                                    ResumenCargaAlimentosCall.salsasDesayuno6(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.salsa7 =
                                    ResumenCargaAlimentosCall.salsasDesayuno7(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.bebidas1 =
                                    ResumenCargaAlimentosCall.bebidasDesayuno1(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.bebidas2 =
                                    ResumenCargaAlimentosCall.bebidasDesayuno2(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.bebidas3 =
                                    ResumenCargaAlimentosCall.bebidasDesayuno3(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.bebidas4 =
                                    ResumenCargaAlimentosCall.bebidasDesayuno4(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.bebidas5 =
                                    ResumenCargaAlimentosCall.bebidasDesayuno5(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.bebidas6 =
                                    ResumenCargaAlimentosCall.bebidasDesayuno6(
                                  (_model.apiDesayuno?.jsonBody ?? ''),
                                );
                                _model.bebidas7 =
                                    ResumenCargaAlimentosCall.bebidasDesayuno7(
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
                                        ? FlutterFlowTheme.of(context).secondary
                                        : FlutterFlowTheme.of(context).primary,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.coffee_outlined,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        size: 32.0,
                                      ),
                                      Flexible(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '9598ljrt' /* Desayuno */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                _model.huevos =
                                    ResumenCargaAlimentosCall.cerealesComida(
                                  (_model.apiComida?.jsonBody ?? ''),
                                )!;
                                _model.cereales =
                                    ResumenCargaAlimentosCall.cerealesComida(
                                  (_model.apiComida?.jsonBody ?? ''),
                                )!;
                                _model.frutas =
                                    ResumenCargaAlimentosCall.frutasComida(
                                  (_model.apiComida?.jsonBody ?? ''),
                                )!;
                                _model.verduras =
                                    ResumenCargaAlimentosCall.verdurasComida(
                                  (_model.apiComida?.jsonBody ?? ''),
                                )!;
                                _model.legumbres =
                                    ResumenCargaAlimentosCall.legumbresComida(
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
                                _model.pescado1 =
                                    ResumenCargaAlimentosCall.pescadoComida1(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.pescado2 =
                                    ResumenCargaAlimentosCall.pescadoComida2(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.pescado3 =
                                    ResumenCargaAlimentosCall.pescadoComida3(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.pescado4 =
                                    ResumenCargaAlimentosCall.pescadoComida4(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.pescado5 =
                                    ResumenCargaAlimentosCall.pescadoComida5(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.pescado6 =
                                    ResumenCargaAlimentosCall.pescadoComida6(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.pescado7 =
                                    ResumenCargaAlimentosCall.pescadoComida7(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.marisco1 =
                                    ResumenCargaAlimentosCall.mariscoComida1(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.marisco2 =
                                    ResumenCargaAlimentosCall.mariscoComida2(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.marisco3 =
                                    ResumenCargaAlimentosCall.mariscoComida3(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.marisco4 =
                                    ResumenCargaAlimentosCall.mariscoComida4(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.marisco5 =
                                    ResumenCargaAlimentosCall.mariscoComida5(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.marisco6 =
                                    ResumenCargaAlimentosCall.mariscoComida6(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.marisco7 =
                                    ResumenCargaAlimentosCall.mariscoComida7(
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
                                _model.cereales1 =
                                    ResumenCargaAlimentosCall.cerealesComida1(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.cereales2 =
                                    ResumenCargaAlimentosCall.cerealesComida2(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.cereales3 =
                                    ResumenCargaAlimentosCall.cerealesComida3(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.cereales4 =
                                    ResumenCargaAlimentosCall.cerealesComida4(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.cereales5 =
                                    ResumenCargaAlimentosCall.cerealesComida5(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.cereales6 =
                                    ResumenCargaAlimentosCall.cerealesComida6(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.cereales7 =
                                    ResumenCargaAlimentosCall.cerealesComida7(
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
                                _model.verduras1 =
                                    ResumenCargaAlimentosCall.verdurasComida1(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.verduras2 =
                                    ResumenCargaAlimentosCall.verdurasComida2(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.verduras3 =
                                    ResumenCargaAlimentosCall.verdurasComida3(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.verduras4 =
                                    ResumenCargaAlimentosCall.verdurasComida4(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.verduras5 =
                                    ResumenCargaAlimentosCall.verdurasComida5(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.verduras6 =
                                    ResumenCargaAlimentosCall.verdurasComida6(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.verduras7 =
                                    ResumenCargaAlimentosCall.verdurasComida7(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.legumbres1 =
                                    ResumenCargaAlimentosCall.legumbresComida1(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.legumbres2 =
                                    ResumenCargaAlimentosCall.legumbresComida2(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.legumbres3 =
                                    ResumenCargaAlimentosCall.legumbresComida3(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.legumbres4 =
                                    ResumenCargaAlimentosCall.legumbresComida4(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.legumbres5 =
                                    ResumenCargaAlimentosCall.legumbresComida5(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.legumbres6 =
                                    ResumenCargaAlimentosCall.legumbresComida6(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.legumbres7 =
                                    ResumenCargaAlimentosCall.legumbresComida7(
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
                                _model.bebidas1 =
                                    ResumenCargaAlimentosCall.bebidasComida1(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.bebidas2 =
                                    ResumenCargaAlimentosCall.bebidasComida2(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.bebidas3 =
                                    ResumenCargaAlimentosCall.bebidasComida3(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.bebidas4 =
                                    ResumenCargaAlimentosCall.bebidasComida4(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.bebidas5 =
                                    ResumenCargaAlimentosCall.bebidasComida5(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.bebidas6 =
                                    ResumenCargaAlimentosCall.bebidasComida6(
                                  (_model.apiComida?.jsonBody ?? ''),
                                );
                                _model.bebidas7 =
                                    ResumenCargaAlimentosCall.bebidasComida7(
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
                                        ? FlutterFlowTheme.of(context).secondary
                                        : FlutterFlowTheme.of(context).primary,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.sunny,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        size: 32.0,
                                      ),
                                      Flexible(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'zqlaj28e' /* Comida */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                    ResumenCargaAlimentosCall.legumbresCena1(
                                  (_model.apiCena?.jsonBody ?? ''),
                                );
                                _model.legumbres2 =
                                    ResumenCargaAlimentosCall.legumbresCena2(
                                  (_model.apiCena?.jsonBody ?? ''),
                                );
                                _model.legumbres3 =
                                    ResumenCargaAlimentosCall.legumbresCena3(
                                  (_model.apiCena?.jsonBody ?? ''),
                                );
                                _model.legumbres4 =
                                    ResumenCargaAlimentosCall.legumbresCena4(
                                  (_model.apiCena?.jsonBody ?? ''),
                                );
                                _model.legumbres5 =
                                    ResumenCargaAlimentosCall.legumbresCena5(
                                  (_model.apiCena?.jsonBody ?? ''),
                                );
                                _model.legumbres6 =
                                    ResumenCargaAlimentosCall.legumbresCena6(
                                  (_model.apiCena?.jsonBody ?? ''),
                                );
                                _model.legumbres7 =
                                    ResumenCargaAlimentosCall.legumbresCena7(
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
                                        ? FlutterFlowTheme.of(context).secondary
                                        : FlutterFlowTheme.of(context).primary,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.nightlight_outlined,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        size: 32.0,
                                      ),
                                      Flexible(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '2c8upbbq' /* Cena */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                        'ws1mg2pm' /* Estos son los alimentos que ha... */,
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
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: BorderRadius.circular(10.0),
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
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (_model.mostrarCarne == 'no') {
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
                                                'mywlur07' /* Carne */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
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
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          if (_model
                                                                  .mostrarCarne ==
                                                              'no') {
                                                            _model.mostrarCarne =
                                                                'si';
                                                            safeSetState(() {});
                                                          } else {
                                                            _model.mostrarCarne =
                                                                'no';
                                                            safeSetState(() {});
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
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          if (_model
                                                                  .mostrarCarne ==
                                                              'no') {
                                                            _model.mostrarCarne =
                                                                'si';
                                                            safeSetState(() {});
                                                          } else {
                                                            _model.mostrarCarne =
                                                                'no';
                                                            safeSetState(() {});
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
                                  if ((_model.carne1 != null &&
                                          _model.carne1 != '') &&
                                      (_model.carne1 != 'null'))
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                  if ((_model.carne2 != null &&
                                          _model.carne2 != '') &&
                                      (_model.carne2 != 'null'))
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                  if ((_model.carne3 != null &&
                                          _model.carne3 != '') &&
                                      (_model.carne3 != 'null'))
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                  if ((_model.carne4 != null &&
                                          _model.carne4 != '') &&
                                      (_model.carne4 != 'null'))
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                  if ((_model.carne5 != null &&
                                          _model.carne5 != '') &&
                                      (_model.carne5 != 'null'))
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                  if ((_model.carne6 != null &&
                                          _model.carne6 != '') &&
                                      (_model.carne6 != 'null'))
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                  if ((_model.carne7 != null &&
                                          _model.carne7 != '') &&
                                      (_model.carne7 != 'null'))
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                                } else {
                                                  _model.mostrarPescado = 'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '9nltvyff' /* Pescado */,
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
                                    if ((_model.pescado1 != null &&
                                            _model.pescado1 != '') &&
                                        (_model.pescado1 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.pescado2 != null &&
                                            _model.pescado2 != '') &&
                                        (_model.pescado2 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.pescado3 != null &&
                                            _model.pescado3 != '') &&
                                        (_model.pescado3 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.pescado4 != null &&
                                            _model.pescado4 != '') &&
                                        (_model.pescado4 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.pescado5 != null &&
                                            _model.pescado5 != '') &&
                                        (_model.pescado5 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.pescado6 != null &&
                                            _model.pescado6 != '') &&
                                        (_model.pescado6 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.pescado7 != null &&
                                            _model.pescado7 != '') &&
                                        (_model.pescado7 != 'null'))
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
                                                } else {
                                                  _model.mostrarMarisco = 'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '66fnfgdm' /* Mariscos */,
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
                                    if ((_model.marisco1 != null &&
                                            _model.marisco1 != '') &&
                                        (_model.marisco1 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.marisco2 != 'null') &&
                                        (_model.marisco2 != null &&
                                            _model.marisco2 != ''))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.marisco3 != null &&
                                            _model.marisco3 != '') &&
                                        (_model.marisco3 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.marisco4 != null &&
                                            _model.marisco4 != '') &&
                                        (_model.marisco4 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.marisco5 != null &&
                                            _model.marisco5 != '') &&
                                        (_model.marisco5 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.marisco6 != null &&
                                            _model.marisco6 != '') &&
                                        (_model.marisco6 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.marisco7 != null &&
                                            _model.marisco7 != '') &&
                                        (_model.marisco7 != 'null'))
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
                                                } else {
                                                  _model.mostrarLacteos = 'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'kf3tgw2f' /* Lácteos */,
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
                                    if ((_model.lacteos1 != null &&
                                            _model.lacteos1 != '') &&
                                        (_model.lacteos1 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.lacteos2 != null &&
                                            _model.lacteos2 != '') &&
                                        (_model.lacteos1 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.lacteos3 != null &&
                                            _model.lacteos3 != '') &&
                                        (_model.lacteos1 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.lacteos4 != null &&
                                            _model.lacteos4 != '') &&
                                        (_model.lacteos1 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.lacteos5 != null &&
                                            _model.lacteos5 != '') &&
                                        (_model.lacteos5 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.lacteos6 != null &&
                                            _model.lacteos6 != '') &&
                                        (_model.lacteos6 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.lacteos7 != null &&
                                            _model.lacteos7 != '') &&
                                        (_model.lacteos7 != 'null'))
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
                                                } else {
                                                  _model.mostrarHuevos = 'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '02v0xiia' /* Huevos */,
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
                                    if ((_model.huevos1 != null &&
                                            _model.huevos1 != '') &&
                                        (_model.huevos1 != 'null'))
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
                                                } else {
                                                  _model.mostrarCereales = 'si';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'zdddfk9f' /* Cereales */,
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
                                    if ((_model.cereales1 != null &&
                                            _model.cereales1 != '') &&
                                        (_model.cereales1 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.cereales2 != null &&
                                            _model.cereales2 != '') &&
                                        (_model.cereales2 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.cereales3 != null &&
                                            _model.cereales3 != '') &&
                                        (_model.cereales3 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.cereales4 != null &&
                                            _model.cereales4 != '') &&
                                        (_model.cereales4 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.cereales5 != null &&
                                            _model.cereales5 != '') &&
                                        (_model.cereales5 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.cereales6 != null &&
                                            _model.cereales6 != '') &&
                                        (_model.cereales6 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.cereales7 != null &&
                                            _model.cereales7 != '') &&
                                        (_model.cereales7 != 'null'))
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
                                                } else {
                                                  _model.mostrarFrutas = 'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'p5d80vtj' /* Frutas */,
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
                                    if ((_model.frutas1 != null &&
                                            _model.frutas1 != '') &&
                                        (_model.frutas1 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.frutas2 != null &&
                                            _model.frutas2 != '') &&
                                        (_model.frutas2 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.frutas3 != null &&
                                            _model.frutas3 != '') &&
                                        (_model.frutas3 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.frutas4 != null &&
                                            _model.frutas4 != '') &&
                                        (_model.frutas4 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.frutas5 != null &&
                                            _model.frutas5 != '') &&
                                        (_model.frutas5 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.frutas6 != null &&
                                            _model.frutas6 != '') &&
                                        (_model.frutas6 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.frutas7 != null &&
                                            _model.frutas7 != '') &&
                                        (_model.frutas7 != 'null'))
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
                                                } else {
                                                  _model.mostrarVerduras = 'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '2wjrofbr' /* Verduras */,
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
                                                      if (_model.verduras ==
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
                                    if ((_model.verduras1 != null &&
                                            _model.verduras1 != '') &&
                                        (_model.verduras1 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.verduras2 != null &&
                                            _model.verduras2 != '') &&
                                        (_model.verduras2 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.verduras3 != null &&
                                            _model.verduras3 != '') &&
                                        (_model.verduras3 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.verduras4 != null &&
                                            _model.verduras4 != '') &&
                                        (_model.verduras4 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.verduras5 != null &&
                                            _model.verduras5 != '') &&
                                        (_model.verduras5 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.verduras6 != null &&
                                            _model.verduras6 != '') &&
                                        (_model.verduras6 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.verduras7 != null &&
                                            _model.verduras7 != '') &&
                                        (_model.verduras7 != 'null'))
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
                                                } else {
                                                  _model.mostrarLegumbres =
                                                      'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '46d20a3b' /* Legumbres */,
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
                                    if ((_model.legumbres1 != null &&
                                            _model.legumbres1 != '') &&
                                        (_model.legumbres1 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.legumbres2 != null &&
                                            _model.legumbres2 != '') &&
                                        (_model.legumbres2 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.legumbres3 != null &&
                                            _model.legumbres3 != '') &&
                                        (_model.legumbres3 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.legumbres4 != null &&
                                            _model.legumbres4 != '') &&
                                        (_model.legumbres4 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.legumbres5 != null &&
                                            _model.legumbres5 != '') &&
                                        (_model.legumbres5 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.legumbres6 != null &&
                                            _model.legumbres6 != '') &&
                                        (_model.legumbres6 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.legumbres7 != null &&
                                            _model.legumbres7 != '') &&
                                        (_model.legumbres7 != 'null'))
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
                                                } else {
                                                  _model.mostrarSecos = 'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'vqv1kewr' /* Frutos Secos */,
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
                                                      if (_model.mostrarSecos ==
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
                                    if ((_model.secos1 != null &&
                                            _model.secos1 != '') &&
                                        (_model.secos1 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.secos2 != null &&
                                            _model.secos2 != '') &&
                                        (_model.secos2 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.secos3 != null &&
                                            _model.secos3 != '') &&
                                        (_model.secos3 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.secos4 != null &&
                                            _model.secos4 != '') &&
                                        (_model.secos4 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.secos5 != null &&
                                            _model.secos5 != '') &&
                                        (_model.secos5 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.secos6 != null &&
                                            _model.secos6 != '') &&
                                        (_model.secos6 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.secos7 != null &&
                                            _model.secos7 != '') &&
                                        (_model.secos7 != 'null'))
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
                                                } else {
                                                  _model.mostrarSalsas = 'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'pckea3ba' /* Condimentos y Salsas */,
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
                                    if ((_model.salsa1 != null &&
                                            _model.salsa1 != '') &&
                                        (_model.salsa1 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if (_model.salsa2 != 'null')
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.salsa3 != null &&
                                            _model.salsa3 != '') &&
                                        (_model.salsa3 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.salsa4 != null &&
                                            _model.salsa4 != '') &&
                                        (_model.salsa4 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.salsa5 != null &&
                                            _model.salsa5 != '') &&
                                        (_model.salsa5 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.salsa6 != null &&
                                            _model.salsa6 != '') &&
                                        (_model.salsa6 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.salsa7 != null &&
                                            _model.salsa7 != '') &&
                                        (_model.salsa7 != 'null'))
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
                                                } else {
                                                  _model.mostrarBebidas = 'no';
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ueibqmgm' /* Bebidas */,
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
                                    if ((_model.bebidas1 != null &&
                                            _model.bebidas1 != '') &&
                                        (_model.bebidas1 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.bebidas2 != null &&
                                            _model.bebidas2 != '') &&
                                        (_model.bebidas2 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.bebidas3 != null &&
                                            _model.bebidas3 != '') &&
                                        (_model.bebidas3 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.bebidas4 != null &&
                                            _model.bebidas4 != '') &&
                                        (_model.bebidas4 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.bebidas5 != null &&
                                            _model.bebidas5 != '') &&
                                        (_model.bebidas5 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.bebidas6 != null &&
                                            _model.bebidas6 != '') &&
                                        (_model.bebidas6 != 'null'))
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.bebidas7 != null &&
                                            _model.bebidas7 != '') &&
                                        (_model.bebidas7 != 'null'))
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
                            ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 10.0),
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
                                          'm2gex6it' /* Síntomas tras la ingesta */,
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
                                  _model.sintoma3 == ''))
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
                                            '1kz4mpmt' /* No has registrado síntomas */,
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
                          Container(
                            width: 350.0,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (_model.sintoma1 != null &&
                                    _model.sintoma1 != '')
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
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
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
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
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
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
            ],
          ),
        ),
      ),
    );
  }
}
