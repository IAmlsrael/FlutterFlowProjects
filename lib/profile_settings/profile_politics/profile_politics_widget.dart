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
import 'profile_politics_model.dart';
export 'profile_politics_model.dart';

class ProfilePoliticsWidget extends StatefulWidget {
  const ProfilePoliticsWidget({Key? key}) : super(key: key);

  @override
  _ProfilePoliticsWidgetState createState() => _ProfilePoliticsWidgetState();
}

class _ProfilePoliticsWidgetState extends State<ProfilePoliticsWidget> {
  late ProfilePoliticsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfilePoliticsModel());
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
              'swu5rdmm' /* Political Belief */,
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
            padding: EdgeInsetsDirectional.fromSTEB(38.0, 30.0, 38.0, 30.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: wrapWithModel(
                              model: _model.underlineCircleCheckerModel1,
                              updateCallback: () => setState(() {}),
                              child: UnderlineCircleCheckerWidget(
                                optionValue: 'Liberal',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: wrapWithModel(
                              model: _model.underlineCircleCheckerModel2,
                              updateCallback: () => setState(() {}),
                              child: UnderlineCircleCheckerWidget(
                                optionValue: 'Moderate',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: wrapWithModel(
                              model: _model.underlineCircleCheckerModel3,
                              updateCallback: () => setState(() {}),
                              child: UnderlineCircleCheckerWidget(
                                optionValue: 'Conservative',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: wrapWithModel(
                              model: _model.underlineCircleCheckerModel4,
                              updateCallback: () => setState(() {}),
                              child: UnderlineCircleCheckerWidget(
                                optionValue: 'Not political',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: wrapWithModel(
                              model: _model.underlineCircleCheckerModel5,
                              updateCallback: () => setState(() {}),
                              child: UnderlineCircleCheckerWidget(
                                optionValue: 'Other',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: wrapWithModel(
                              model: _model.underlineCircleCheckerModel6,
                              updateCallback: () => setState(() {}),
                              child: UnderlineCircleCheckerWidget(
                                optionValue: 'Prefer not to say',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.toStrgLst = await actions.toStrgLst(
                            '${_model.underlineCircleCheckerModel1.checkboxListTileValue?.toString()},${_model.underlineCircleCheckerModel2.checkboxListTileValue?.toString()},${_model.underlineCircleCheckerModel3.checkboxListTileValue?.toString()},${_model.underlineCircleCheckerModel4.checkboxListTileValue?.toString()},${_model.underlineCircleCheckerModel5.checkboxListTileValue?.toString()},${_model.underlineCircleCheckerModel6.checkboxListTileValue?.toString()}',
                          );
                          if (functions.checkBoolean(functions
                              .chngToBool(_model.toStrgLst!.toList())
                              .toList())) {
                            await currentUserReference!
                                .update(createUsersRecordData(
                              politicalBelief:
                                  '${_model.underlineCircleCheckerModel1.choice}${_model.underlineCircleCheckerModel2.choice}${_model.underlineCircleCheckerModel3.choice}${_model.underlineCircleCheckerModel4.choice}${_model.underlineCircleCheckerModel5.choice}${_model.underlineCircleCheckerModel6.choice}',
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
                              '11hzeakj' /* Save choice */,
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
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: wrapWithModel(
                        model: _model.boxCheckerModel,
                        updateCallback: () => setState(() {}),
                        child: BoxCheckerWidget(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
