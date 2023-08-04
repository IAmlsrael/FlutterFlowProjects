import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/box_checker/box_checker_widget.dart';
import '/components/profile_button/profile_button_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileJobModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for profileButton component.
  late ProfileButtonModel profileButtonModel;
  // Model for boxChecker component.
  late BoxCheckerModel boxCheckerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    profileButtonModel = createModel(context, () => ProfileButtonModel());
    boxCheckerModel = createModel(context, () => BoxCheckerModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textController?.dispose();
    profileButtonModel.dispose();
    boxCheckerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
