import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/box_checker/box_checker_widget.dart';
import '/components/underline_box_checker/underline_box_checker_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileReligionModel extends FlutterFlowModel {
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
  // Model for UnderlineBoxChecker component.
  late UnderlineBoxCheckerModel underlineBoxCheckerModel9;
  // Stores action output result for [Custom Action - toStrgLst] action in Container widget.
  List<String>? toStrgLst;
  // Model for boxChecker component.
  late BoxCheckerModel boxCheckerModel;

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
    underlineBoxCheckerModel9 =
        createModel(context, () => UnderlineBoxCheckerModel());
    boxCheckerModel = createModel(context, () => BoxCheckerModel());
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
    underlineBoxCheckerModel9.dispose();
    boxCheckerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
