import '/components/phone_number_component1/phone_number_component1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PhoneSignUpPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PhoneNumberComponent1 component.
  late PhoneNumberComponent1Model phoneNumberComponent1Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    phoneNumberComponent1Model =
        createModel(context, () => PhoneNumberComponent1Model());
  }

  void dispose() {
    unfocusNode.dispose();
    phoneNumberComponent1Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
