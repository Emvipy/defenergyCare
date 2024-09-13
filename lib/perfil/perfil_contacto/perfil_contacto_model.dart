import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/usuario/menu_usuario/menu_usuario_widget.dart';
import 'perfil_contacto_widget.dart' show PerfilContactoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

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
