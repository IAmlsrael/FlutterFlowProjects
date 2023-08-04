import '/auth/firebase_auth/auth_util.dart';
import '/components/hint_component/hint_component_widget.dart';
import '/flutter_flow/flutter_flow_media_display.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileSignUp27Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for hintComponent component.
  late HintComponentModel hintComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    hintComponentModel = createModel(context, () => HintComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    hintComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
