import '/flutter_flow/flutter_flow_util.dart';
import 'entry_page_widget.dart' show EntryPageWidget;
import 'package:flutter/material.dart';

class EntryPageModel extends FlutterFlowModel<EntryPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
