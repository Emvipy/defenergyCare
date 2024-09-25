import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/registro/modal_cancela_sign/modal_cancela_sign_widget.dart';
import 'sign_up_detalle_enfermedad_widget.dart'
    show SignUpDetalleEnfermedadWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class SignUpDetalleEnfermedadModel
    extends FlutterFlowModel<SignUpDetalleEnfermedadWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown_genero widget.
  String? dropDownGeneroValue;
  FormFieldController<String>? dropDownGeneroValueController;
  // State field(s) for DropDown_fumador widget.
  String? dropDownFumadorValue;
  FormFieldController<String>? dropDownFumadorValueController;
  // State field(s) for DropDown_alcohol widget.
  String? dropDownAlcoholValue;
  FormFieldController<String>? dropDownAlcoholValueController;
  // State field(s) for DropDown_peso widget.
  int? dropDownPesoValue;
  FormFieldController<int>? dropDownPesoValueController;
  // State field(s) for DropDown_altura widget.
  int? dropDownAlturaValue;
  FormFieldController<int>? dropDownAlturaValueController;
  // State field(s) for DropDown_year_covid1 widget.
  String? dropDownYearCovid1Value;
  FormFieldController<String>? dropDownYearCovid1ValueController;
  // State field(s) for DropDown_veces_covid1 widget.
  String? dropDownVecesCovid1Value;
  FormFieldController<String>? dropDownVecesCovid1ValueController;
  // State field(s) for DropDown_familiar_covid1 widget.
  String? dropDownFamiliarCovid1Value;
  FormFieldController<String>? dropDownFamiliarCovid1ValueController;
  // State field(s) for DropDown_grado_covid1 widget.
  String? dropDownGradoCovid1Value;
  FormFieldController<String>? dropDownGradoCovid1ValueController;
  // State field(s) for TextField_otras_covid1 widget.
  FocusNode? textFieldOtrasCovid1FocusNode;
  TextEditingController? textFieldOtrasCovid1TextController;
  String? Function(BuildContext, String?)?
      textFieldOtrasCovid1TextControllerValidator;
  // Stores action output result for [Backend Call - API (signUp finaliza Copy)] action in Button_into widget.
  ApiCallResponse? enf1;
  // State field(s) for DropDown_evento_fibro2 widget.
  String? dropDownEventoFibro2Value;
  FormFieldController<String>? dropDownEventoFibro2ValueController;
  // State field(s) for DropDown_tiempo_fibro2 widget.
  String? dropDownTiempoFibro2Value;
  FormFieldController<String>? dropDownTiempoFibro2ValueController;
  // State field(s) for DropDown_empeora_fibro2 widget.
  String? dropDownEmpeoraFibro2Value;
  FormFieldController<String>? dropDownEmpeoraFibro2ValueController;
  // State field(s) for DropDown_familiar_fibro2 widget.
  String? dropDownFamiliarFibro2Value;
  FormFieldController<String>? dropDownFamiliarFibro2ValueController;
  // State field(s) for DropDown_grado_fibro2 widget.
  String? dropDownGradoFibro2Value;
  FormFieldController<String>? dropDownGradoFibro2ValueController;
  // State field(s) for TextField_otras_covid2 widget.
  FocusNode? textFieldOtrasCovid2FocusNode;
  TextEditingController? textFieldOtrasCovid2TextController;
  String? Function(BuildContext, String?)?
      textFieldOtrasCovid2TextControllerValidator;
  // Stores action output result for [Backend Call - API (signUp finaliza Copy)] action in Button_into widget.
  ApiCallResponse? enf2;
  // State field(s) for DropDown_criterios_em3 widget.
  String? dropDownCriteriosEm3Value;
  FormFieldController<String>? dropDownCriteriosEm3ValueController;
  // State field(s) for DropDown_tiempo_em3 widget.
  String? dropDownTiempoEm3Value;
  FormFieldController<String>? dropDownTiempoEm3ValueController;
  // State field(s) for DropDown_evento_em3 widget.
  String? dropDownEventoEm3Value;
  FormFieldController<String>? dropDownEventoEm3ValueController;
  // State field(s) for DropDown_familiar_em3 widget.
  String? dropDownFamiliarEm3Value;
  FormFieldController<String>? dropDownFamiliarEm3ValueController;
  // State field(s) for DropDown_grado_em3 widget.
  String? dropDownGradoEm3Value;
  FormFieldController<String>? dropDownGradoEm3ValueController;
  // State field(s) for TextField_otras_covid3 widget.
  FocusNode? textFieldOtrasCovid3FocusNode;
  TextEditingController? textFieldOtrasCovid3TextController;
  String? Function(BuildContext, String?)?
      textFieldOtrasCovid3TextControllerValidator;
  // Stores action output result for [Backend Call - API (signUp finaliza Copy)] action in Button_into widget.
  ApiCallResponse? enf3;
  // State field(s) for DropDown_auto4 widget.
  String? dropDownAuto4Value;
  FormFieldController<String>? dropDownAuto4ValueController;
  // State field(s) for DropDown_tiempo_auto4 widget.
  String? dropDownTiempoAuto4Value;
  FormFieldController<String>? dropDownTiempoAuto4ValueController;
  // State field(s) for DropDown_familiar_auto4 widget.
  String? dropDownFamiliarAuto4Value;
  FormFieldController<String>? dropDownFamiliarAuto4ValueController;
  // State field(s) for DropDown_grado_auto4 widget.
  String? dropDownGradoAuto4Value;
  FormFieldController<String>? dropDownGradoAuto4ValueController;
  // State field(s) for TextField_otras_covid4 widget.
  FocusNode? textFieldOtrasCovid4FocusNode;
  TextEditingController? textFieldOtrasCovid4TextController;
  String? Function(BuildContext, String?)?
      textFieldOtrasCovid4TextControllerValidator;
  // Stores action output result for [Backend Call - API (signUp finaliza Copy)] action in Button_into widget.
  ApiCallResponse? enf4;
  // State field(s) for TextField_otras_covid5 widget.
  FocusNode? textFieldOtrasCovid5FocusNode;
  TextEditingController? textFieldOtrasCovid5TextController;
  String? Function(BuildContext, String?)?
      textFieldOtrasCovid5TextControllerValidator;
  // Stores action output result for [Backend Call - API (signUp finaliza Copy)] action in Button_into widget.
  ApiCallResponse? enf5;
  // State field(s) for DropDown_year_covid6 widget.
  String? dropDownYearCovid6Value;
  FormFieldController<String>? dropDownYearCovid6ValueController;
  // State field(s) for DropDown_veces_covid6 widget.
  String? dropDownVecesCovid6Value;
  FormFieldController<String>? dropDownVecesCovid6ValueController;
  // State field(s) for DropDown_familiar_covid6 widget.
  String? dropDownFamiliarCovid6Value;
  FormFieldController<String>? dropDownFamiliarCovid6ValueController;
  // State field(s) for DropDown_grado_covid6 widget.
  String? dropDownGradoCovid6Value;
  FormFieldController<String>? dropDownGradoCovid6ValueController;
  // State field(s) for DropDown_criterios_em6 widget.
  String? dropDownCriteriosEm6Value;
  FormFieldController<String>? dropDownCriteriosEm6ValueController;
  // State field(s) for DropDown_tiempo_em6 widget.
  String? dropDownTiempoEm6Value;
  FormFieldController<String>? dropDownTiempoEm6ValueController;
  // State field(s) for DropDown_evento_em6 widget.
  String? dropDownEventoEm6Value;
  FormFieldController<String>? dropDownEventoEm6ValueController;
  // State field(s) for DropDown_familiar_em6 widget.
  String? dropDownFamiliarEm6Value;
  FormFieldController<String>? dropDownFamiliarEm6ValueController;
  // State field(s) for DropDown_grado_em6 widget.
  String? dropDownGradoEm6Value;
  FormFieldController<String>? dropDownGradoEm6ValueController;
  // State field(s) for TextField_otras_covid6 widget.
  FocusNode? textFieldOtrasCovid6FocusNode;
  TextEditingController? textFieldOtrasCovid6TextController;
  String? Function(BuildContext, String?)?
      textFieldOtrasCovid6TextControllerValidator;
  // Stores action output result for [Backend Call - API (signUp finaliza Copy)] action in Button_into widget.
  ApiCallResponse? enf6;
  // State field(s) for DropDown_evento_fibro7 widget.
  String? dropDownEventoFibro7Value;
  FormFieldController<String>? dropDownEventoFibro7ValueController;
  // State field(s) for DropDown_tiempo_fibro7 widget.
  String? dropDownTiempoFibro7Value;
  FormFieldController<String>? dropDownTiempoFibro7ValueController;
  // State field(s) for DropDown_empeora_fibro7 widget.
  String? dropDownEmpeoraFibro7Value;
  FormFieldController<String>? dropDownEmpeoraFibro7ValueController;
  // State field(s) for DropDown_familiar_fibro7 widget.
  String? dropDownFamiliarFibro7Value;
  FormFieldController<String>? dropDownFamiliarFibro7ValueController;
  // State field(s) for DropDown_grado_fibro7 widget.
  String? dropDownGradoFibro7Value;
  FormFieldController<String>? dropDownGradoFibro7ValueController;
  // State field(s) for DropDown_criterios_em7 widget.
  String? dropDownCriteriosEm7Value;
  FormFieldController<String>? dropDownCriteriosEm7ValueController;
  // State field(s) for DropDown_tiempo_em7 widget.
  String? dropDownTiempoEm7Value;
  FormFieldController<String>? dropDownTiempoEm7ValueController;
  // State field(s) for DropDown_evento_em7 widget.
  String? dropDownEventoEm7Value;
  FormFieldController<String>? dropDownEventoEm7ValueController;
  // State field(s) for DropDown_familiar_em7 widget.
  String? dropDownFamiliarEm7Value;
  FormFieldController<String>? dropDownFamiliarEm7ValueController;
  // State field(s) for DropDown_grado_em7 widget.
  String? dropDownGradoEm7Value;
  FormFieldController<String>? dropDownGradoEm7ValueController;
  // State field(s) for TextField_otras_covid7 widget.
  FocusNode? textFieldOtrasCovid7FocusNode;
  TextEditingController? textFieldOtrasCovid7TextController;
  String? Function(BuildContext, String?)?
      textFieldOtrasCovid7TextControllerValidator;
  // Stores action output result for [Backend Call - API (signUp finaliza Copy)] action in Button_into widget.
  ApiCallResponse? enf7;
  // State field(s) for DropDown_year_covid8 widget.
  String? dropDownYearCovid8Value;
  FormFieldController<String>? dropDownYearCovid8ValueController;
  // State field(s) for DropDown_veces_covid8 widget.
  String? dropDownVecesCovid8Value;
  FormFieldController<String>? dropDownVecesCovid8ValueController;
  // State field(s) for DropDown_familiar_covid8 widget.
  String? dropDownFamiliarCovid8Value;
  FormFieldController<String>? dropDownFamiliarCovid8ValueController;
  // State field(s) for DropDown_grado_covid8 widget.
  String? dropDownGradoCovid8Value;
  FormFieldController<String>? dropDownGradoCovid8ValueController;
  // State field(s) for DropDown_evento_fibro8 widget.
  String? dropDownEventoFibro8Value;
  FormFieldController<String>? dropDownEventoFibro8ValueController;
  // State field(s) for DropDown_tiempo_fibro8 widget.
  String? dropDownTiempoFibro8Value;
  FormFieldController<String>? dropDownTiempoFibro8ValueController;
  // State field(s) for DropDown_empeora_fibro8 widget.
  String? dropDownEmpeoraFibro8Value;
  FormFieldController<String>? dropDownEmpeoraFibro8ValueController;
  // State field(s) for DropDown_familiar_fibro8 widget.
  String? dropDownFamiliarFibro8Value;
  FormFieldController<String>? dropDownFamiliarFibro8ValueController;
  // State field(s) for DropDown_grado_fibro8 widget.
  String? dropDownGradoFibro8Value;
  FormFieldController<String>? dropDownGradoFibro8ValueController;
  // State field(s) for TextField_otras_covid widget.
  FocusNode? textFieldOtrasCovidFocusNode;
  TextEditingController? textFieldOtrasCovidTextController;
  String? Function(BuildContext, String?)?
      textFieldOtrasCovidTextControllerValidator;
  // Stores action output result for [Backend Call - API (signUp finaliza Copy)] action in Button_into widget.
  ApiCallResponse? enf8;
  // State field(s) for DropDown_year_covid9 widget.
  String? dropDownYearCovid9Value;
  FormFieldController<String>? dropDownYearCovid9ValueController;
  // State field(s) for DropDown_veces_covid9 widget.
  String? dropDownVecesCovid9Value;
  FormFieldController<String>? dropDownVecesCovid9ValueController;
  // State field(s) for DropDown_familiar_covid9 widget.
  String? dropDownFamiliarCovid9Value;
  FormFieldController<String>? dropDownFamiliarCovid9ValueController;
  // State field(s) for DropDown_grado_covid9 widget.
  String? dropDownGradoCovid9Value;
  FormFieldController<String>? dropDownGradoCovid9ValueController;
  // State field(s) for DropDown_evento_fibro9 widget.
  String? dropDownEventoFibro9Value;
  FormFieldController<String>? dropDownEventoFibro9ValueController;
  // State field(s) for DropDown_tiempo_fibro9 widget.
  String? dropDownTiempoFibro9Value;
  FormFieldController<String>? dropDownTiempoFibro9ValueController;
  // State field(s) for DropDown_empeora_fibro9 widget.
  String? dropDownEmpeoraFibro9Value;
  FormFieldController<String>? dropDownEmpeoraFibro9ValueController;
  // State field(s) for DropDown_familiar_fibro9 widget.
  String? dropDownFamiliarFibro9Value;
  FormFieldController<String>? dropDownFamiliarFibro9ValueController;
  // State field(s) for DropDown_grado_fibro9 widget.
  String? dropDownGradoFibro9Value;
  FormFieldController<String>? dropDownGradoFibro9ValueController;
  // State field(s) for DropDown_criterios_em9 widget.
  String? dropDownCriteriosEm9Value;
  FormFieldController<String>? dropDownCriteriosEm9ValueController;
  // State field(s) for DropDown_tiempo_em9 widget.
  String? dropDownTiempoEm9Value;
  FormFieldController<String>? dropDownTiempoEm9ValueController;
  // State field(s) for DropDown_evento_em9 widget.
  String? dropDownEventoEm9Value;
  FormFieldController<String>? dropDownEventoEm9ValueController;
  // State field(s) for DropDown_familiar_em9 widget.
  String? dropDownFamiliarEm9Value;
  FormFieldController<String>? dropDownFamiliarEm9ValueController;
  // State field(s) for DropDown_grado_em9 widget.
  String? dropDownGradoEm9Value;
  FormFieldController<String>? dropDownGradoEm9ValueController;
  // State field(s) for TextField_otras_covid9 widget.
  FocusNode? textFieldOtrasCovid9FocusNode;
  TextEditingController? textFieldOtrasCovid9TextController;
  String? Function(BuildContext, String?)?
      textFieldOtrasCovid9TextControllerValidator;
  // Stores action output result for [Backend Call - API (signUp finaliza Copy)] action in Button_into widget.
  ApiCallResponse? enf9;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldOtrasCovid1FocusNode?.dispose();
    textFieldOtrasCovid1TextController?.dispose();

    textFieldOtrasCovid2FocusNode?.dispose();
    textFieldOtrasCovid2TextController?.dispose();

    textFieldOtrasCovid3FocusNode?.dispose();
    textFieldOtrasCovid3TextController?.dispose();

    textFieldOtrasCovid4FocusNode?.dispose();
    textFieldOtrasCovid4TextController?.dispose();

    textFieldOtrasCovid5FocusNode?.dispose();
    textFieldOtrasCovid5TextController?.dispose();

    textFieldOtrasCovid6FocusNode?.dispose();
    textFieldOtrasCovid6TextController?.dispose();

    textFieldOtrasCovid7FocusNode?.dispose();
    textFieldOtrasCovid7TextController?.dispose();

    textFieldOtrasCovidFocusNode?.dispose();
    textFieldOtrasCovidTextController?.dispose();

    textFieldOtrasCovid9FocusNode?.dispose();
    textFieldOtrasCovid9TextController?.dispose();
  }
}
