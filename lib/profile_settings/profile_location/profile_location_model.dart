import '/components/profile_button/profile_button_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileLocationModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for profileButton component.
  late ProfileButtonModel profileButtonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    profileButtonModel = createModel(context, () => ProfileButtonModel());
  }

  void dispose() {
    unfocusNode.dispose();
    profileButtonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
