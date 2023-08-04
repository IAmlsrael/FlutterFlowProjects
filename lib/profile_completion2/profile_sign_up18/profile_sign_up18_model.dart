import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/box_checker/box_checker_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileSignUp18Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for boxChecker component.
  late BoxCheckerModel boxCheckerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    boxCheckerModel = createModel(context, () => BoxCheckerModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textController?.dispose();
    boxCheckerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
