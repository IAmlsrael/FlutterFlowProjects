import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/profile_button/profile_button_widget.dart';
import '/components/underline_box_checker/underline_box_checker_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfilePronounsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for UnderlineBoxChecker component.
  late UnderlineBoxCheckerModel underlineBoxCheckerModel1;
  // Model for UnderlineBoxChecker component.
  late UnderlineBoxCheckerModel underlineBoxCheckerModel2;
  // Model for UnderlineBoxChecker component.
  late UnderlineBoxCheckerModel underlineBoxCheckerModel3;
  // Model for UnderlineBoxChecker component.
  late UnderlineBoxCheckerModel underlineBoxCheckerModel4;
  // Model for UnderlineBoxChecker component.
  late UnderlineBoxCheckerModel underlineBoxCheckerModel5;
  // Model for UnderlineBoxChecker component.
  late UnderlineBoxCheckerModel underlineBoxCheckerModel6;
  // Model for UnderlineBoxChecker component.
  late UnderlineBoxCheckerModel underlineBoxCheckerModel7;
  // Model for UnderlineBoxChecker component.
  late UnderlineBoxCheckerModel underlineBoxCheckerModel8;
  // Model for profileButton component.
  late ProfileButtonModel profileButtonModel;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    underlineBoxCheckerModel1 =
        createModel(context, () => UnderlineBoxCheckerModel());
    underlineBoxCheckerModel2 =
        createModel(context, () => UnderlineBoxCheckerModel());
    underlineBoxCheckerModel3 =
        createModel(context, () => UnderlineBoxCheckerModel());
    underlineBoxCheckerModel4 =
        createModel(context, () => UnderlineBoxCheckerModel());
    underlineBoxCheckerModel5 =
        createModel(context, () => UnderlineBoxCheckerModel());
    underlineBoxCheckerModel6 =
        createModel(context, () => UnderlineBoxCheckerModel());
    underlineBoxCheckerModel7 =
        createModel(context, () => UnderlineBoxCheckerModel());
    underlineBoxCheckerModel8 =
        createModel(context, () => UnderlineBoxCheckerModel());
    profileButtonModel = createModel(context, () => ProfileButtonModel());
  }

  void dispose() {
    unfocusNode.dispose();
    underlineBoxCheckerModel1.dispose();
    underlineBoxCheckerModel2.dispose();
    underlineBoxCheckerModel3.dispose();
    underlineBoxCheckerModel4.dispose();
    underlineBoxCheckerModel5.dispose();
    underlineBoxCheckerModel6.dispose();
    underlineBoxCheckerModel7.dispose();
    underlineBoxCheckerModel8.dispose();
    profileButtonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
