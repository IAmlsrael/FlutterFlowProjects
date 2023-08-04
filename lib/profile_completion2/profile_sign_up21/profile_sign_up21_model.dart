import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/box_checker/box_checker_widget.dart';
import '/components/underline_circle_checker/underline_circle_checker_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileSignUp21Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for UnderlineCircleChecker component.
  late UnderlineCircleCheckerModel underlineCircleCheckerModel1;
  // Model for UnderlineCircleChecker component.
  late UnderlineCircleCheckerModel underlineCircleCheckerModel2;
  // Model for UnderlineCircleChecker component.
  late UnderlineCircleCheckerModel underlineCircleCheckerModel3;
  // Model for UnderlineCircleChecker component.
  late UnderlineCircleCheckerModel underlineCircleCheckerModel4;
  // Model for UnderlineCircleChecker component.
  late UnderlineCircleCheckerModel underlineCircleCheckerModel5;
  // Model for UnderlineCircleChecker component.
  late UnderlineCircleCheckerModel underlineCircleCheckerModel6;
  // Model for boxChecker component.
  late BoxCheckerModel boxCheckerModel;
  // Stores action output result for [Custom Action - toStrgLst] action in Icon widget.
  List<String>? toStrgLst;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    underlineCircleCheckerModel1 =
        createModel(context, () => UnderlineCircleCheckerModel());
    underlineCircleCheckerModel2 =
        createModel(context, () => UnderlineCircleCheckerModel());
    underlineCircleCheckerModel3 =
        createModel(context, () => UnderlineCircleCheckerModel());
    underlineCircleCheckerModel4 =
        createModel(context, () => UnderlineCircleCheckerModel());
    underlineCircleCheckerModel5 =
        createModel(context, () => UnderlineCircleCheckerModel());
    underlineCircleCheckerModel6 =
        createModel(context, () => UnderlineCircleCheckerModel());
    boxCheckerModel = createModel(context, () => BoxCheckerModel());
  }

  void dispose() {
    unfocusNode.dispose();
    underlineCircleCheckerModel1.dispose();
    underlineCircleCheckerModel2.dispose();
    underlineCircleCheckerModel3.dispose();
    underlineCircleCheckerModel4.dispose();
    underlineCircleCheckerModel5.dispose();
    underlineCircleCheckerModel6.dispose();
    boxCheckerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
