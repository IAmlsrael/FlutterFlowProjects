import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/s_i_unit_switch/s_i_unit_switch_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileSignUp10Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Model for SIUnitSwitch component.
  late SIUnitSwitchModel sIUnitSwitchModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sIUnitSwitchModel = createModel(context, () => SIUnitSwitchModel());
  }

  void dispose() {
    unfocusNode.dispose();
    sIUnitSwitchModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
