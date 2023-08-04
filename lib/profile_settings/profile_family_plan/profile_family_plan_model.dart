import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/box_checker/box_checker_widget.dart';
import '/components/underline_circle_checker/underline_circle_checker_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileFamilyPlanModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for UnderlineCircleChecker_A.
  late UnderlineCircleCheckerModel underlineCircleCheckerAModel;
  // Model for UnderlineCircleChecker_B.
  late UnderlineCircleCheckerModel underlineCircleCheckerBModel;
  // Model for UnderlineCircleChecker_C.
  late UnderlineCircleCheckerModel underlineCircleCheckerCModel;
  // Model for UnderlineCircleChecker_D.
  late UnderlineCircleCheckerModel underlineCircleCheckerDModel;
  // Model for UnderlineCircleChecker_E.
  late UnderlineCircleCheckerModel underlineCircleCheckerEModel;
  // Stores action output result for [Custom Action - toStrgLst] action in Container widget.
  List<String>? toStrgLst;
  // Model for boxChecker component.
  late BoxCheckerModel boxCheckerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    underlineCircleCheckerAModel =
        createModel(context, () => UnderlineCircleCheckerModel());
    underlineCircleCheckerBModel =
        createModel(context, () => UnderlineCircleCheckerModel());
    underlineCircleCheckerCModel =
        createModel(context, () => UnderlineCircleCheckerModel());
    underlineCircleCheckerDModel =
        createModel(context, () => UnderlineCircleCheckerModel());
    underlineCircleCheckerEModel =
        createModel(context, () => UnderlineCircleCheckerModel());
    boxCheckerModel = createModel(context, () => BoxCheckerModel());
  }

  void dispose() {
    unfocusNode.dispose();
    underlineCircleCheckerAModel.dispose();
    underlineCircleCheckerBModel.dispose();
    underlineCircleCheckerCModel.dispose();
    underlineCircleCheckerDModel.dispose();
    underlineCircleCheckerEModel.dispose();
    boxCheckerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
