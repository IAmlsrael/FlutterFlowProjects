import '/components/underlineswitch/underlineswitch_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PushNotificationModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Underlineswitch component.
  late UnderlineswitchModel underlineswitchModel1;
  // Model for Underlineswitch component.
  late UnderlineswitchModel underlineswitchModel2;
  // Model for Underlineswitch component.
  late UnderlineswitchModel underlineswitchModel3;
  // Model for Underlineswitch component.
  late UnderlineswitchModel underlineswitchModel4;
  // Model for Underlineswitch component.
  late UnderlineswitchModel underlineswitchModel5;
  // Model for Underlineswitch component.
  late UnderlineswitchModel underlineswitchModel6;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    underlineswitchModel1 = createModel(context, () => UnderlineswitchModel());
    underlineswitchModel2 = createModel(context, () => UnderlineswitchModel());
    underlineswitchModel3 = createModel(context, () => UnderlineswitchModel());
    underlineswitchModel4 = createModel(context, () => UnderlineswitchModel());
    underlineswitchModel5 = createModel(context, () => UnderlineswitchModel());
    underlineswitchModel6 = createModel(context, () => UnderlineswitchModel());
  }

  void dispose() {
    unfocusNode.dispose();
    underlineswitchModel1.dispose();
    underlineswitchModel2.dispose();
    underlineswitchModel3.dispose();
    underlineswitchModel4.dispose();
    underlineswitchModel5.dispose();
    underlineswitchModel6.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
