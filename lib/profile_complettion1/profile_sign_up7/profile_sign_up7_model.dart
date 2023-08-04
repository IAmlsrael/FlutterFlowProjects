import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/underline_circle_checker/underline_circle_checker_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileSignUp7Model extends FlutterFlowModel {
  ///  Local state fields for this page.

  String? gender = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for GenderMan.
  late UnderlineCircleCheckerModel genderManModel;
  // Model for GenderWoman.
  late UnderlineCircleCheckerModel genderWomanModel;
  // Model for GenderNonBinary.
  late UnderlineCircleCheckerModel genderNonBinaryModel;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    genderManModel = createModel(context, () => UnderlineCircleCheckerModel());
    genderWomanModel =
        createModel(context, () => UnderlineCircleCheckerModel());
    genderNonBinaryModel =
        createModel(context, () => UnderlineCircleCheckerModel());
  }

  void dispose() {
    unfocusNode.dispose();
    genderManModel.dispose();
    genderWomanModel.dispose();
    genderNonBinaryModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
