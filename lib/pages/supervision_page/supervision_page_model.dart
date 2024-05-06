import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'supervision_page_widget.dart' show SupervisionPageWidget;
import 'package:flutter/material.dart';

class SupervisionPageModel extends FlutterFlowModel<SupervisionPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown_1 widget.
  double? dropDown1Value;
  FormFieldController<double>? dropDown1ValueController;
  // State field(s) for DropDown_0 widget.
  String? dropDown0Value;
  FormFieldController<String>? dropDown0ValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
