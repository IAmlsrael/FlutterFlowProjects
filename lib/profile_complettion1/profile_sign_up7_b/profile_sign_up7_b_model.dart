import '/components/hint_component/hint_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileSignUp7BModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for hintComponent component.
  late HintComponentModel hintComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    hintComponentModel = createModel(context, () => HintComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textController?.dispose();
    hintComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
