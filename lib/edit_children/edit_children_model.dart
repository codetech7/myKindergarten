import '/flutter_flow/flutter_flow_util.dart';
import 'edit_children_widget.dart' show EditChildrenWidget;
import 'package:flutter/material.dart';

class EditChildrenModel extends FlutterFlowModel<EditChildrenWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for Age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageTextController;
  String? Function(BuildContext, String?)? ageTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    ageFocusNode?.dispose();
    ageTextController?.dispose();
  }
}
