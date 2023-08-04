import '/auth/firebase_auth/auth_util.dart';
import '/components/verification_number/verification_number_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PhoneVerificationPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for VerificationNumber component.
  late VerificationNumberModel verificationNumberModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    verificationNumberModel =
        createModel(context, () => VerificationNumberModel());
  }

  void dispose() {
    unfocusNode.dispose();
    verificationNumberModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
