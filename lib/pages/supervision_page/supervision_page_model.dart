import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'supervision_page_widget.dart' show SupervisionPageWidget;
import 'package:flutter/material.dart';

class SupervisionPageModel extends FlutterFlowModel<SupervisionPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown_0 widget.
  int? dropDown0Value;
  FormFieldController<int>? dropDown0ValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
