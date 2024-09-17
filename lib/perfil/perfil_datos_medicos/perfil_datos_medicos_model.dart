import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/perfil/modal_modifica_enfermedad/modal_modifica_enfermedad_widget.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'perfil_datos_medicos_widget.dart' show PerfilDatosMedicosWidget;
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PerfilDatosMedicosModel
    extends FlutterFlowModel<PerfilDatosMedicosWidget> {
  ///  Local state fields for this page.

  DateTime? fecha;

  ///  State fields for stateful widgets in this page.

  // Model for menu_usuario component.
  late MenuUsuarioModel menuUsuarioModel;
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
  // State field(s) for DropDown_autoinmune widget.
  String? dropDownAutoinmuneValue;
  FormFieldController<String>? dropDownAutoinmuneValueController;
  // State field(s) for DropDown_enfAuto widget.
  String? dropDownEnfAutoValue;
  FormFieldController<String>? dropDownEnfAutoValueController;
  // State field(s) for DropDown_tiempo_auto widget.
  String? dropDownTiempoAutoValue1;
  FormFieldController<String>? dropDownTiempoAutoValueController1;
  // State field(s) for DropDown_famAuto widget.
  String? dropDownFamAutoValue1;
  FormFieldController<String>? dropDownFamAutoValueController1;
  // State field(s) for DropDown_grado_auto widget.
  String? dropDownGradoAutoValue1;
  FormFieldController<String>? dropDownGradoAutoValueController1;
  // State field(s) for DropDown_intestino widget.
  String? dropDownIntestinoValue1;
  FormFieldController<String>? dropDownIntestinoValueController1;
  // State field(s) for DropDown_tiempo_intestino widget.
  String? dropDownTiempoIntestinoValue1;
  FormFieldController<String>? dropDownTiempoIntestinoValueController1;
  // State field(s) for DropDown_fam_into widget.
  String? dropDownFamIntoValue1;
  FormFieldController<String>? dropDownFamIntoValueController1;
  // State field(s) for DropDown_grado_into widget.
  String? dropDownGradoIntoValue1;
  FormFieldController<String>? dropDownGradoIntoValueController1;
  // State field(s) for DropDown_into1 widget.
  String? dropDownInto1Value1;
  FormFieldController<String>? dropDownInto1ValueController1;
  // State field(s) for DropDown_tiempo_into1 widget.
  String? dropDownTiempoInto1Value1;
  FormFieldController<String>? dropDownTiempoInto1ValueController1;
  // State field(s) for DropDown_into2 widget.
  String? dropDownInto2Value1;
  FormFieldController<String>? dropDownInto2ValueController1;
  // State field(s) for DropDown_tiempo_into2 widget.
  String? dropDownTiempoInto2Value1;
  FormFieldController<String>? dropDownTiempoInto2ValueController1;
  // State field(s) for DropDown_into3 widget.
  String? dropDownInto3Value1;
  FormFieldController<String>? dropDownInto3ValueController1;
  // State field(s) for DropDown_tiempo_into3 widget.
  String? dropDownTiempoInto3Value1;
  FormFieldController<String>? dropDownTiempoInto3ValueController1;
  // State field(s) for DropDown_into4 widget.
  String? dropDownInto4Value1;
  FormFieldController<String>? dropDownInto4ValueController1;
  // State field(s) for DropDown_tiempo_into4 widget.
  String? dropDownTiempoInto4Value1;
  FormFieldController<String>? dropDownTiempoInto4ValueController1;
  // Stores action output result for [Backend Call - API (edita datos medicos)] action in Button_into widget.
  ApiCallResponse? editaId1;
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
  // State field(s) for Drop2_autoinmune widget.
  String? drop2AutoinmuneValue1;
  FormFieldController<String>? drop2AutoinmuneValueController1;
  // State field(s) for Drop2_enfAuto widget.
  String? drop2EnfAutoValue1;
  FormFieldController<String>? drop2EnfAutoValueController1;
  // State field(s) for DropDown_tiempo_auto widget.
  String? dropDownTiempoAutoValue2;
  FormFieldController<String>? dropDownTiempoAutoValueController2;
  // State field(s) for DropDown_famAuto widget.
  String? dropDownFamAutoValue2;
  FormFieldController<String>? dropDownFamAutoValueController2;
  // State field(s) for DropDown_grado_auto widget.
  String? dropDownGradoAutoValue2;
  FormFieldController<String>? dropDownGradoAutoValueController2;
  // State field(s) for DropDown_intestino widget.
  String? dropDownIntestinoValue2;
  FormFieldController<String>? dropDownIntestinoValueController2;
  // State field(s) for DropDown_tiempo_intestino widget.
  String? dropDownTiempoIntestinoValue2;
  FormFieldController<String>? dropDownTiempoIntestinoValueController2;
  // State field(s) for DropDown_fam_into widget.
  String? dropDownFamIntoValue2;
  FormFieldController<String>? dropDownFamIntoValueController2;
  // State field(s) for DropDown_grado_into widget.
  String? dropDownGradoIntoValue2;
  FormFieldController<String>? dropDownGradoIntoValueController2;
  // State field(s) for DropDown_into1 widget.
  String? dropDownInto1Value2;
  FormFieldController<String>? dropDownInto1ValueController2;
  // State field(s) for DropDown_tiempo_into1 widget.
  String? dropDownTiempoInto1Value2;
  FormFieldController<String>? dropDownTiempoInto1ValueController2;
  // State field(s) for DropDown_into2 widget.
  String? dropDownInto2Value2;
  FormFieldController<String>? dropDownInto2ValueController2;
  // State field(s) for DropDown_tiempo_into2 widget.
  String? dropDownTiempoInto2Value2;
  FormFieldController<String>? dropDownTiempoInto2ValueController2;
  // State field(s) for DropDown_into3 widget.
  String? dropDownInto3Value2;
  FormFieldController<String>? dropDownInto3ValueController2;
  // State field(s) for DropDown_tiempo_into3 widget.
  String? dropDownTiempoInto3Value2;
  FormFieldController<String>? dropDownTiempoInto3ValueController2;
  // State field(s) for DropDown_into4 widget.
  String? dropDownInto4Value2;
  FormFieldController<String>? dropDownInto4ValueController2;
  // State field(s) for DropDown_tiempo_into4 widget.
  String? dropDownTiempoInto4Value2;
  FormFieldController<String>? dropDownTiempoInto4ValueController2;
  // Stores action output result for [Backend Call - API (edita datos medicos)] action in Button_into widget.
  ApiCallResponse? editaid2;
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
  // State field(s) for Drop2_autoinmune widget.
  String? drop2AutoinmuneValue2;
  FormFieldController<String>? drop2AutoinmuneValueController2;
  // State field(s) for Drop2_enfAuto widget.
  String? drop2EnfAutoValue2;
  FormFieldController<String>? drop2EnfAutoValueController2;
  // State field(s) for DropDown_tiempo_auto widget.
  String? dropDownTiempoAutoValue3;
  FormFieldController<String>? dropDownTiempoAutoValueController3;
  // State field(s) for DropDown_famAuto widget.
  String? dropDownFamAutoValue3;
  FormFieldController<String>? dropDownFamAutoValueController3;
  // State field(s) for DropDown_grado_auto widget.
  String? dropDownGradoAutoValue3;
  FormFieldController<String>? dropDownGradoAutoValueController3;
  // State field(s) for DropDown_intestino widget.
  String? dropDownIntestinoValue3;
  FormFieldController<String>? dropDownIntestinoValueController3;
  // State field(s) for DropDown_tiempo_intestino widget.
  String? dropDownTiempoIntestinoValue3;
  FormFieldController<String>? dropDownTiempoIntestinoValueController3;
  // State field(s) for DropDown_fam_into widget.
  String? dropDownFamIntoValue3;
  FormFieldController<String>? dropDownFamIntoValueController3;
  // State field(s) for DropDown_grado_into widget.
  String? dropDownGradoIntoValue3;
  FormFieldController<String>? dropDownGradoIntoValueController3;
  // State field(s) for DropDown_into1 widget.
  String? dropDownInto1Value3;
  FormFieldController<String>? dropDownInto1ValueController3;
  // State field(s) for DropDown_tiempo_into1 widget.
  String? dropDownTiempoInto1Value3;
  FormFieldController<String>? dropDownTiempoInto1ValueController3;
  // State field(s) for DropDown_into2 widget.
  String? dropDownInto2Value3;
  FormFieldController<String>? dropDownInto2ValueController3;
  // State field(s) for DropDown_tiempo_into2 widget.
  String? dropDownTiempoInto2Value3;
  FormFieldController<String>? dropDownTiempoInto2ValueController3;
  // State field(s) for DropDown_into3 widget.
  String? dropDownInto3Value3;
  FormFieldController<String>? dropDownInto3ValueController3;
  // State field(s) for DropDown_tiempo_into3 widget.
  String? dropDownTiempoInto3Value3;
  FormFieldController<String>? dropDownTiempoInto3ValueController3;
  // State field(s) for DropDown_into4 widget.
  String? dropDownInto4Value3;
  FormFieldController<String>? dropDownInto4ValueController3;
  // State field(s) for DropDown_tiempo_into4 widget.
  String? dropDownTiempoInto4Value3;
  FormFieldController<String>? dropDownTiempoInto4ValueController3;
  // Stores action output result for [Backend Call - API (edita datos medicos)] action in Button_into widget.
  ApiCallResponse? editaid3;
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
  // State field(s) for Drop2_autoinmune widget.
  String? drop2AutoinmuneValue3;
  FormFieldController<String>? drop2AutoinmuneValueController3;
  // State field(s) for Drop2_enfAuto widget.
  String? drop2EnfAutoValue3;
  FormFieldController<String>? drop2EnfAutoValueController3;
  // State field(s) for DropDown_tiempo_auto widget.
  String? dropDownTiempoAutoValue4;
  FormFieldController<String>? dropDownTiempoAutoValueController4;
  // State field(s) for DropDown_famAuto widget.
  String? dropDownFamAutoValue4;
  FormFieldController<String>? dropDownFamAutoValueController4;
  // State field(s) for DropDown_grado_auto widget.
  String? dropDownGradoAutoValue4;
  FormFieldController<String>? dropDownGradoAutoValueController4;
  // State field(s) for DropDown_intestino widget.
  String? dropDownIntestinoValue4;
  FormFieldController<String>? dropDownIntestinoValueController4;
  // State field(s) for DropDown_tiempo_intestino widget.
  String? dropDownTiempoIntestinoValue4;
  FormFieldController<String>? dropDownTiempoIntestinoValueController4;
  // State field(s) for DropDown_fam_into widget.
  String? dropDownFamIntoValue4;
  FormFieldController<String>? dropDownFamIntoValueController4;
  // State field(s) for DropDown_grado_into widget.
  String? dropDownGradoIntoValue4;
  FormFieldController<String>? dropDownGradoIntoValueController4;
  // State field(s) for DropDown_into1 widget.
  String? dropDownInto1Value4;
  FormFieldController<String>? dropDownInto1ValueController4;
  // State field(s) for DropDown_tiempo_into1 widget.
  String? dropDownTiempoInto1Value4;
  FormFieldController<String>? dropDownTiempoInto1ValueController4;
  // State field(s) for DropDown_into2 widget.
  String? dropDownInto2Value4;
  FormFieldController<String>? dropDownInto2ValueController4;
  // State field(s) for DropDown_tiempo_into2 widget.
  String? dropDownTiempoInto2Value4;
  FormFieldController<String>? dropDownTiempoInto2ValueController4;
  // State field(s) for DropDown_into3 widget.
  String? dropDownInto3Value4;
  FormFieldController<String>? dropDownInto3ValueController4;
  // State field(s) for DropDown_tiempo_into3 widget.
  String? dropDownTiempoInto3Value4;
  FormFieldController<String>? dropDownTiempoInto3ValueController4;
  // State field(s) for DropDown_into4 widget.
  String? dropDownInto4Value4;
  FormFieldController<String>? dropDownInto4ValueController4;
  // State field(s) for DropDown_tiempo_into4 widget.
  String? dropDownTiempoInto4Value4;
  FormFieldController<String>? dropDownTiempoInto4ValueController4;
  // Stores action output result for [Backend Call - API (edita datos medicos)] action in Button_into widget.
  ApiCallResponse? editaid4;
  // State field(s) for TextField_otras_covid5 widget.
  FocusNode? textFieldOtrasCovid5FocusNode;
  TextEditingController? textFieldOtrasCovid5TextController;
  String? Function(BuildContext, String?)?
      textFieldOtrasCovid5TextControllerValidator;
  // State field(s) for Drop6_year_covid6 widget.
  String? drop6YearCovid6Value;
  FormFieldController<String>? drop6YearCovid6ValueController;
  // State field(s) for Drop6_veces_covid6 widget.
  String? drop6VecesCovid6Value;
  FormFieldController<String>? drop6VecesCovid6ValueController;
  // State field(s) for DropDown_familiar_covid6 widget.
  String? dropDownFamiliarCovid6Value;
  FormFieldController<String>? dropDownFamiliarCovid6ValueController;
  // State field(s) for DropDown_grado_covid6 widget.
  String? dropDownGradoCovid6Value;
  FormFieldController<String>? dropDownGradoCovid6ValueController;
  // State field(s) for Drop6_criterios_em6 widget.
  String? drop6CriteriosEm6Value;
  FormFieldController<String>? drop6CriteriosEm6ValueController;
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
  // State field(s) for Drop2_autoinmune widget.
  String? drop2AutoinmuneValue4;
  FormFieldController<String>? drop2AutoinmuneValueController4;
  // State field(s) for Drop2_enfAuto widget.
  String? drop2EnfAutoValue4;
  FormFieldController<String>? drop2EnfAutoValueController4;
  // State field(s) for DropDown_tiempo_auto widget.
  String? dropDownTiempoAutoValue5;
  FormFieldController<String>? dropDownTiempoAutoValueController5;
  // State field(s) for DropDown_famAuto widget.
  String? dropDownFamAutoValue5;
  FormFieldController<String>? dropDownFamAutoValueController5;
  // State field(s) for DropDown_grado_auto widget.
  String? dropDownGradoAutoValue5;
  FormFieldController<String>? dropDownGradoAutoValueController5;
  // State field(s) for DropDown_intestino widget.
  String? dropDownIntestinoValue5;
  FormFieldController<String>? dropDownIntestinoValueController5;
  // State field(s) for DropDown_tiempo_intestino widget.
  String? dropDownTiempoIntestinoValue5;
  FormFieldController<String>? dropDownTiempoIntestinoValueController5;
  // State field(s) for DropDown_fam_into widget.
  String? dropDownFamIntoValue5;
  FormFieldController<String>? dropDownFamIntoValueController5;
  // State field(s) for DropDown_grado_into widget.
  String? dropDownGradoIntoValue5;
  FormFieldController<String>? dropDownGradoIntoValueController5;
  // State field(s) for DropDown_into1 widget.
  String? dropDownInto1Value5;
  FormFieldController<String>? dropDownInto1ValueController5;
  // State field(s) for DropDown_tiempo_into1 widget.
  String? dropDownTiempoInto1Value5;
  FormFieldController<String>? dropDownTiempoInto1ValueController5;
  // State field(s) for DropDown_into2 widget.
  String? dropDownInto2Value5;
  FormFieldController<String>? dropDownInto2ValueController5;
  // State field(s) for DropDown_tiempo_into2 widget.
  String? dropDownTiempoInto2Value5;
  FormFieldController<String>? dropDownTiempoInto2ValueController5;
  // State field(s) for DropDown_into3 widget.
  String? dropDownInto3Value5;
  FormFieldController<String>? dropDownInto3ValueController5;
  // State field(s) for DropDown_tiempo_into3 widget.
  String? dropDownTiempoInto3Value5;
  FormFieldController<String>? dropDownTiempoInto3ValueController5;
  // State field(s) for DropDown_into4 widget.
  String? dropDownInto4Value5;
  FormFieldController<String>? dropDownInto4ValueController5;
  // State field(s) for DropDown_tiempo_into4 widget.
  String? dropDownTiempoInto4Value5;
  FormFieldController<String>? dropDownTiempoInto4ValueController5;
  // Stores action output result for [Backend Call - API (edita datos medicos)] action in Button_into widget.
  ApiCallResponse? editaid6;
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
  // State field(s) for Drop2_autoinmune widget.
  String? drop2AutoinmuneValue5;
  FormFieldController<String>? drop2AutoinmuneValueController5;
  // State field(s) for Drop2_enfAuto widget.
  String? drop2EnfAutoValue5;
  FormFieldController<String>? drop2EnfAutoValueController5;
  // State field(s) for DropDown_tiempo_auto widget.
  String? dropDownTiempoAutoValue6;
  FormFieldController<String>? dropDownTiempoAutoValueController6;
  // State field(s) for DropDown_famAuto widget.
  String? dropDownFamAutoValue6;
  FormFieldController<String>? dropDownFamAutoValueController6;
  // State field(s) for DropDown_grado_auto widget.
  String? dropDownGradoAutoValue6;
  FormFieldController<String>? dropDownGradoAutoValueController6;
  // State field(s) for DropDown_intestino widget.
  String? dropDownIntestinoValue6;
  FormFieldController<String>? dropDownIntestinoValueController6;
  // State field(s) for DropDown_tiempo_intestino widget.
  String? dropDownTiempoIntestinoValue6;
  FormFieldController<String>? dropDownTiempoIntestinoValueController6;
  // State field(s) for DropDown_fam_into widget.
  String? dropDownFamIntoValue6;
  FormFieldController<String>? dropDownFamIntoValueController6;
  // State field(s) for DropDown_grado_into widget.
  String? dropDownGradoIntoValue6;
  FormFieldController<String>? dropDownGradoIntoValueController6;
  // State field(s) for DropDown_into1 widget.
  String? dropDownInto1Value6;
  FormFieldController<String>? dropDownInto1ValueController6;
  // State field(s) for DropDown_tiempo_into1 widget.
  String? dropDownTiempoInto1Value6;
  FormFieldController<String>? dropDownTiempoInto1ValueController6;
  // State field(s) for DropDown_into2 widget.
  String? dropDownInto2Value6;
  FormFieldController<String>? dropDownInto2ValueController6;
  // State field(s) for DropDown_tiempo_into2 widget.
  String? dropDownTiempoInto2Value6;
  FormFieldController<String>? dropDownTiempoInto2ValueController6;
  // State field(s) for DropDown_into3 widget.
  String? dropDownInto3Value6;
  FormFieldController<String>? dropDownInto3ValueController6;
  // State field(s) for DropDown_tiempo_into3 widget.
  String? dropDownTiempoInto3Value6;
  FormFieldController<String>? dropDownTiempoInto3ValueController6;
  // State field(s) for DropDown_into4 widget.
  String? dropDownInto4Value6;
  FormFieldController<String>? dropDownInto4ValueController6;
  // State field(s) for DropDown_tiempo_into4 widget.
  String? dropDownTiempoInto4Value6;
  FormFieldController<String>? dropDownTiempoInto4ValueController6;
  // Stores action output result for [Backend Call - API (edita datos medicos)] action in Button_into widget.
  ApiCallResponse? editaid7;
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
  // State field(s) for Drop2_autoinmune widget.
  String? drop2AutoinmuneValue6;
  FormFieldController<String>? drop2AutoinmuneValueController6;
  // State field(s) for Drop2_enfAuto widget.
  String? drop2EnfAutoValue6;
  FormFieldController<String>? drop2EnfAutoValueController6;
  // State field(s) for DropDown_tiempo_auto widget.
  String? dropDownTiempoAutoValue7;
  FormFieldController<String>? dropDownTiempoAutoValueController7;
  // State field(s) for DropDown_famAuto widget.
  String? dropDownFamAutoValue7;
  FormFieldController<String>? dropDownFamAutoValueController7;
  // State field(s) for DropDown_grado_auto widget.
  String? dropDownGradoAutoValue7;
  FormFieldController<String>? dropDownGradoAutoValueController7;
  // State field(s) for DropDown_intestino widget.
  String? dropDownIntestinoValue7;
  FormFieldController<String>? dropDownIntestinoValueController7;
  // State field(s) for DropDown_tiempo_intestino widget.
  String? dropDownTiempoIntestinoValue7;
  FormFieldController<String>? dropDownTiempoIntestinoValueController7;
  // State field(s) for DropDown_fam_into widget.
  String? dropDownFamIntoValue7;
  FormFieldController<String>? dropDownFamIntoValueController7;
  // State field(s) for DropDown_grado_into widget.
  String? dropDownGradoIntoValue7;
  FormFieldController<String>? dropDownGradoIntoValueController7;
  // State field(s) for DropDown_into1 widget.
  String? dropDownInto1Value7;
  FormFieldController<String>? dropDownInto1ValueController7;
  // State field(s) for DropDown_tiempo_into1 widget.
  String? dropDownTiempoInto1Value7;
  FormFieldController<String>? dropDownTiempoInto1ValueController7;
  // State field(s) for DropDown_into2 widget.
  String? dropDownInto2Value7;
  FormFieldController<String>? dropDownInto2ValueController7;
  // State field(s) for DropDown_tiempo_into2 widget.
  String? dropDownTiempoInto2Value7;
  FormFieldController<String>? dropDownTiempoInto2ValueController7;
  // State field(s) for DropDown_into3 widget.
  String? dropDownInto3Value7;
  FormFieldController<String>? dropDownInto3ValueController7;
  // State field(s) for DropDown_tiempo_into3 widget.
  String? dropDownTiempoInto3Value7;
  FormFieldController<String>? dropDownTiempoInto3ValueController7;
  // State field(s) for DropDown_into4 widget.
  String? dropDownInto4Value7;
  FormFieldController<String>? dropDownInto4ValueController7;
  // State field(s) for DropDown_tiempo_into4 widget.
  String? dropDownTiempoInto4Value7;
  FormFieldController<String>? dropDownTiempoInto4ValueController7;
  // Stores action output result for [Backend Call - API (edita datos medicos)] action in Button_into widget.
  ApiCallResponse? editaid8;
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
  // State field(s) for Drop2_autoinmune widget.
  String? drop2AutoinmuneValue7;
  FormFieldController<String>? drop2AutoinmuneValueController7;
  // State field(s) for Drop2_enfAuto widget.
  String? drop2EnfAutoValue7;
  FormFieldController<String>? drop2EnfAutoValueController7;
  // State field(s) for DropDown_tiempo_auto widget.
  String? dropDownTiempoAutoValue8;
  FormFieldController<String>? dropDownTiempoAutoValueController8;
  // State field(s) for DropDown_famAuto widget.
  String? dropDownFamAutoValue8;
  FormFieldController<String>? dropDownFamAutoValueController8;
  // State field(s) for DropDown_grado_auto widget.
  String? dropDownGradoAutoValue8;
  FormFieldController<String>? dropDownGradoAutoValueController8;
  // State field(s) for DropDown_intestino widget.
  String? dropDownIntestinoValue8;
  FormFieldController<String>? dropDownIntestinoValueController8;
  // State field(s) for DropDown_tiempo_intestino widget.
  String? dropDownTiempoIntestinoValue8;
  FormFieldController<String>? dropDownTiempoIntestinoValueController8;
  // State field(s) for DropDown_fam_into widget.
  String? dropDownFamIntoValue8;
  FormFieldController<String>? dropDownFamIntoValueController8;
  // State field(s) for DropDown_grado_into widget.
  String? dropDownGradoIntoValue8;
  FormFieldController<String>? dropDownGradoIntoValueController8;
  // State field(s) for DropDown_into1 widget.
  String? dropDownInto1Value8;
  FormFieldController<String>? dropDownInto1ValueController8;
  // State field(s) for DropDown_tiempo_into1 widget.
  String? dropDownTiempoInto1Value8;
  FormFieldController<String>? dropDownTiempoInto1ValueController8;
  // State field(s) for DropDown_into2 widget.
  String? dropDownInto2Value8;
  FormFieldController<String>? dropDownInto2ValueController8;
  // State field(s) for DropDown_tiempo_into2 widget.
  String? dropDownTiempoInto2Value8;
  FormFieldController<String>? dropDownTiempoInto2ValueController8;
  // State field(s) for DropDown_into3 widget.
  String? dropDownInto3Value8;
  FormFieldController<String>? dropDownInto3ValueController8;
  // State field(s) for DropDown_tiempo_into3 widget.
  String? dropDownTiempoInto3Value8;
  FormFieldController<String>? dropDownTiempoInto3ValueController8;
  // State field(s) for DropDown_into4 widget.
  String? dropDownInto4Value8;
  FormFieldController<String>? dropDownInto4ValueController8;
  // State field(s) for DropDown_tiempo_into4 widget.
  String? dropDownTiempoInto4Value8;
  FormFieldController<String>? dropDownTiempoInto4ValueController8;
  // Stores action output result for [Backend Call - API (edita datos medicos)] action in Button_into widget.
  ApiCallResponse? editaid9;

  @override
  void initState(BuildContext context) {
    menuUsuarioModel = createModel(context, () => MenuUsuarioModel());
  }

  @override
  void dispose() {
    menuUsuarioModel.dispose();
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
