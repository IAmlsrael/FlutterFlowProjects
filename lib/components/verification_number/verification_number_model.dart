import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VerificationNumberModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  String? code;

  ///  State fields for stateful widgets in this component.

  // State field(s) for first widget.
  TextEditingController? firstController;
  String? Function(BuildContext, String?)? firstControllerValidator;
  // State field(s) for second widget.
  TextEditingController? secondController;
  String? Function(BuildContext, String?)? secondControllerValidator;
  // State field(s) for third widget.
  TextEditingController? thirdController;
  String? Function(BuildContext, String?)? thirdControllerValidator;
  // State field(s) for fourth widget.
  TextEditingController? fourthController;
  String? Function(BuildContext, String?)? fourthControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    firstController?.dispose();
    secondController?.dispose();
    thirdController?.dispose();
    fourthController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
