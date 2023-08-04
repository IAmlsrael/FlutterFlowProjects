import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/underline_box_checker/underline_box_checker_widget.dart';
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

class ProfileSexualityModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for UnderlineBoxChecker_a.
  late UnderlineBoxCheckerModel underlineBoxCheckerAModel;
  // Model for UnderlineBoxChecker_b.
  late UnderlineBoxCheckerModel underlineBoxCheckerBModel;
  // Model for UnderlineBoxChecker_c.
  late UnderlineBoxCheckerModel underlineBoxCheckerCModel;
  // Model for UnderlineBoxChecker_d.
  late UnderlineBoxCheckerModel underlineBoxCheckerDModel;
  // Model for UnderlineBoxChecker_e.
  late UnderlineBoxCheckerModel underlineBoxCheckerEModel;
  // Model for UnderlineBoxChecker_f.
  late UnderlineBoxCheckerModel underlineBoxCheckerFModel;
  // Model for UnderlineBoxChecker_g.
  late UnderlineBoxCheckerModel underlineBoxCheckerGModel;
  // Model for UnderlineBoxChecker_h.
  late UnderlineBoxCheckerModel underlineBoxCheckerHModel;
  // Model for UnderlineBoxChecker_i.
  late UnderlineBoxCheckerModel underlineBoxCheckerIModel;
  // Model for UnderlineBoxChecker_j.
  late UnderlineBoxCheckerModel underlineBoxCheckerJModel;
  // Model for UnderlineBoxChecker_k.
  late UnderlineBoxCheckerModel underlineBoxCheckerKModel;
  // Model for UnderlineBoxChecker_l.
  late UnderlineBoxCheckerModel underlineBoxCheckerLModel;
  // Model for UnderlineBoxChecker_m.
  late UnderlineBoxCheckerModel underlineBoxCheckerMModel;
  // Model for UnderlineBoxChecker_n.
  late UnderlineBoxCheckerModel underlineBoxCheckerNModel;
  // Model for UnderlineBoxChecker_o.
  late UnderlineBoxCheckerModel underlineBoxCheckerOModel;
  // Stores action output result for [Custom Action - toStrgLst] action in Container widget.
  List<String>? toStrgLstCopy;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    underlineBoxCheckerAModel =
        createModel(context, () => UnderlineBoxCheckerModel());
    underlineBoxCheckerBModel =
        createModel(context, () => UnderlineBoxCheckerModel());
    underlineBoxCheckerCModel =
        createModel(context, () => UnderlineBoxCheckerModel());
    underlineBoxCheckerDModel =
        createModel(context, () => UnderlineBoxCheckerModel());
    underlineBoxCheckerEModel =
        createModel(context, () => UnderlineBoxCheckerModel());
    underlineBoxCheckerFModel =
        createModel(context, () => UnderlineBoxCheckerModel());
    underlineBoxCheckerGModel =
        createModel(context, () => UnderlineBoxCheckerModel());
    underlineBoxCheckerHModel =
        createModel(context, () => UnderlineBoxCheckerModel());
    underlineBoxCheckerIModel =
        createModel(context, () => UnderlineBoxCheckerModel());
    underlineBoxCheckerJModel =
        createModel(context, () => UnderlineBoxCheckerModel());
    underlineBoxCheckerKModel =
        createModel(context, () => UnderlineBoxCheckerModel());
    underlineBoxCheckerLModel =
        createModel(context, () => UnderlineBoxCheckerModel());
    underlineBoxCheckerMModel =
        createModel(context, () => UnderlineBoxCheckerModel());
    underlineBoxCheckerNModel =
        createModel(context, () => UnderlineBoxCheckerModel());
    underlineBoxCheckerOModel =
        createModel(context, () => UnderlineBoxCheckerModel());
  }

  void dispose() {
    unfocusNode.dispose();
    underlineBoxCheckerAModel.dispose();
    underlineBoxCheckerBModel.dispose();
    underlineBoxCheckerCModel.dispose();
    underlineBoxCheckerDModel.dispose();
    underlineBoxCheckerEModel.dispose();
    underlineBoxCheckerFModel.dispose();
    underlineBoxCheckerGModel.dispose();
    underlineBoxCheckerHModel.dispose();
    underlineBoxCheckerIModel.dispose();
    underlineBoxCheckerJModel.dispose();
    underlineBoxCheckerKModel.dispose();
    underlineBoxCheckerLModel.dispose();
    underlineBoxCheckerMModel.dispose();
    underlineBoxCheckerNModel.dispose();
    underlineBoxCheckerOModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
