import '/flutter_flow/flutter_flow_util.dart';
import 'recordar_pass_widget.dart' show RecordarPassWidget;
import 'package:flutter/material.dart';

class RecordarPassModel extends FlutterFlowModel<RecordarPassWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
