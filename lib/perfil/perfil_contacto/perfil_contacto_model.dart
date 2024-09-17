import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'dart:async';
import 'perfil_contacto_widget.dart' show PerfilContactoWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class PerfilContactoModel extends FlutterFlowModel<PerfilContactoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField_cel widget.
  FocusNode? textFieldCelFocusNode;
  TextEditingController? textFieldCelTextController;
  final textFieldCelMask = MaskTextInputFormatter(mask: '+## ## #### ####');
  String? Function(BuildContext, String?)? textFieldCelTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField_mensaje widget.
  FocusNode? textFieldMensajeFocusNode;
  TextEditingController? textFieldMensajeTextController;
  String? Function(BuildContext, String?)?
      textFieldMensajeTextControllerValidator;
  // State field(s) for DropDown_modo widget.
  String? dropDownModoValue;
  FormFieldController<String>? dropDownModoValueController;
  // Stores action output result for [Backend Call - API (peril contacto)] action in Button widget.
  ApiCallResponse? apiResultwle2;
  // Model for menu_usuario component.
  late MenuUsuarioModel menuUsuarioModel;

  @override
  void initState(BuildContext context) {
    menuUsuarioModel = createModel(context, () => MenuUsuarioModel());
  }

  @override
  void dispose() {
    textFieldCelFocusNode?.dispose();
    textFieldCelTextController?.dispose();

    textFieldMensajeFocusNode?.dispose();
    textFieldMensajeTextController?.dispose();

    menuUsuarioModel.dispose();
  }
}
