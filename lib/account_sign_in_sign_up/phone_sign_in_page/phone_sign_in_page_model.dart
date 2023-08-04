import '/auth/firebase_auth/auth_util.dart';
import '/components/phone_number_component2/phone_number_component2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PhoneSignInPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PhoneNumberComponent2 component.
  late PhoneNumberComponent2Model phoneNumberComponent2Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    phoneNumberComponent2Model =
        createModel(context, () => PhoneNumberComponent2Model());
  }

  void dispose() {
    unfocusNode.dispose();
    phoneNumberComponent2Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
