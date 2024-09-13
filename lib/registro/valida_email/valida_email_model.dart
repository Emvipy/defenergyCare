import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'valida_email_widget.dart' show ValidaEmailWidget;
import 'package:flutter/material.dart';

class ValidaEmailModel extends FlutterFlowModel<ValidaEmailWidget> {
  ///  Local state fields for this page.

  bool legal = false;

  bool investigacion = false;

  String code = 'si';

  String modalSpam = 'si';

  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (signUp reenvia code)] action in RichTextSpan widget.
  ApiCallResponse? apiResult4g0;
  // State field(s) for Checkbox_legal widget.
  bool? checkboxLegalValue1;
  // State field(s) for Checkbox_legal widget.
  bool? checkboxLegalValue2;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }
}
