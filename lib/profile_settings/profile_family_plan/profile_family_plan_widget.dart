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
import 'profile_family_plan_model.dart';
export 'profile_family_plan_model.dart';

class ProfileFamilyPlanWidget extends StatefulWidget {
  const ProfileFamilyPlanWidget({Key? key}) : super(key: key);

  @override
  _ProfileFamilyPlanWidgetState createState() =>
      _ProfileFamilyPlanWidgetState();
}

class _ProfileFamilyPlanWidgetState extends State<ProfileFamilyPlanWidget> {
  late ProfileFamilyPlanModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileFamilyPlanModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Color(0xFF664229),
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'lxxosl6u' /* Family Plan */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Quicksand',
                  color: Color(0xFF664229),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(34.0, 60.0, 30.0, 30.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: wrapWithModel(
                            model: _model.underlineCircleCheckerAModel,
                            updateCallback: () => setState(() {}),
                            child: UnderlineCircleCheckerWidget(
                              optionValue: 'Don’t want children',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: wrapWithModel(
                            model: _model.underlineCircleCheckerBModel,
                            updateCallback: () => setState(() {}),
                            child: UnderlineCircleCheckerWidget(
                              optionValue: 'Want children',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: wrapWithModel(
                            model: _model.underlineCircleCheckerCModel,
                            updateCallback: () => setState(() {}),
                            child: UnderlineCircleCheckerWidget(
                              optionValue: 'Open to children',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: wrapWithModel(
                            model: _model.underlineCircleCheckerDModel,
                            updateCallback: () => setState(() {}),
                            child: UnderlineCircleCheckerWidget(
                              optionValue: 'Not sure yet',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: wrapWithModel(
                            model: _model.underlineCircleCheckerEModel,
                            updateCallback: () => setState(() {}),
                            child: UnderlineCircleCheckerWidget(
                              optionValue: 'Prefer not to say',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.toStrgLst = await actions.toStrgLst(
                                '${_model.underlineCircleCheckerAModel.checkboxListTileValue?.toString()},${_model.underlineCircleCheckerBModel.checkboxListTileValue?.toString()},${_model.underlineCircleCheckerCModel.checkboxListTileValue?.toString()},${_model.underlineCircleCheckerDModel.checkboxListTileValue?.toString()},${_model.underlineCircleCheckerEModel.checkboxListTileValue?.toString()}',
                              );
                              if (functions.checkBoolean(functions
                                  .chngToBool(_model.toStrgLst!.toList())
                                  .toList())) {
                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  interestedInChildren: () {
                                    if (_model.underlineCircleCheckerAModel
                                        .checkboxListTileValue!) {
                                      return _model
                                          .underlineCircleCheckerAModel.choice;
                                    } else if (_model
                                        .underlineCircleCheckerBModel
                                        .checkboxListTileValue!) {
                                      return _model
                                          .underlineCircleCheckerBModel.choice;
                                    } else if (_model
                                        .underlineCircleCheckerCModel
                                        .checkboxListTileValue!) {
                                      return _model
                                          .underlineCircleCheckerCModel.choice;
                                    } else if (_model
                                        .underlineCircleCheckerDModel
                                        .checkboxListTileValue!) {
                                      return _model
                                          .underlineCircleCheckerDModel.choice;
                                    } else if (_model
                                        .underlineCircleCheckerEModel
                                        .checkboxListTileValue!) {
                                      return _model
                                          .underlineCircleCheckerEModel.choice;
                                    } else {
                                      return '';
                                    }
                                  }(),
                                ));
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Save Successful',
                                      style: TextStyle(
                                        color: Color(0xFF664229),
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor: Color(0xFFE0DED3),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'You are to choose one option from the list of options',
                                      style: TextStyle(
                                        color: Color(0xFF664229),
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor: Color(0xFFE0DED3),
                                  ),
                                );
                              }

                              setState(() {});
                            },
                            child: Container(
                              width: 200.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                              ),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: FFLocalizations.of(context).getText(
                                  '8p7rakvh' /* Save choice */,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFF664229),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Quicksand',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 363.0,
                  decoration: BoxDecoration(),
                  child: wrapWithModel(
                    model: _model.boxCheckerModel,
                    updateCallback: () => setState(() {}),
                    child: BoxCheckerWidget(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
