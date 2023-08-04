import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/underline_box_checker/underline_box_checker_widget.dart';
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
import 'profile_ethnicity_model.dart';
export 'profile_ethnicity_model.dart';

class ProfileEthnicityWidget extends StatefulWidget {
  const ProfileEthnicityWidget({Key? key}) : super(key: key);

  @override
  _ProfileEthnicityWidgetState createState() => _ProfileEthnicityWidgetState();
}

class _ProfileEthnicityWidgetState extends State<ProfileEthnicityWidget> {
  late ProfileEthnicityModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileEthnicityModel());
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
              'aikwm4d8' /* Ethnicity */,
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
            padding: EdgeInsetsDirectional.fromSTEB(34.0, 30.0, 30.0, 30.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: wrapWithModel(
                                model: _model.underlineBoxCheckerAModel,
                                updateCallback: () => setState(() {}),
                                child: UnderlineBoxCheckerWidget(
                                  optionValue: 'American Indian',
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
                                model: _model.underlineBoxCheckerBModel,
                                updateCallback: () => setState(() {}),
                                child: UnderlineBoxCheckerWidget(
                                  optionValue: 'Black/African Descent',
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
                                model: _model.underlineBoxCheckerCModel,
                                updateCallback: () => setState(() {}),
                                child: UnderlineBoxCheckerWidget(
                                  optionValue: 'East Asian',
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
                                model: _model.underlineBoxCheckerDModel,
                                updateCallback: () => setState(() {}),
                                child: UnderlineBoxCheckerWidget(
                                  optionValue: 'Hispanic/Latino',
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
                                model: _model.underlineBoxCheckerEModel,
                                updateCallback: () => setState(() {}),
                                child: UnderlineBoxCheckerWidget(
                                  optionValue: 'Middle Eastern',
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
                                model: _model.underlineBoxCheckerFModel,
                                updateCallback: () => setState(() {}),
                                child: UnderlineBoxCheckerWidget(
                                  optionValue: 'Pacific Islander',
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
                                model: _model.underlineBoxCheckerGModel,
                                updateCallback: () => setState(() {}),
                                child: UnderlineBoxCheckerWidget(
                                  optionValue: 'South Asian',
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
                                model: _model.underlineBoxCheckerHModel,
                                updateCallback: () => setState(() {}),
                                child: UnderlineBoxCheckerWidget(
                                  optionValue: 'White/Caucasian',
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
                                model: _model.underlineBoxCheckerIModel,
                                updateCallback: () => setState(() {}),
                                child: UnderlineBoxCheckerWidget(
                                  optionValue: 'Other',
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
                                model: _model.underlineBoxCheckerJModel,
                                updateCallback: () => setState(() {}),
                                child: UnderlineBoxCheckerWidget(
                                  optionValue: 'Prefer not to say',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Container(
                      width: 363.0,
                      height: 85.0,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
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
                                      '${_model.underlineBoxCheckerAModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerBModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerCModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerDModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerEModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerFModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerGModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerHModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerIModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerJModel.checkboxListTileValue?.toString()}',
                                    );
                                    if (functions.checkBoolean(functions
                                        .chngToBool(_model.toStrgLst!.toList())
                                        .toList())) {
                                      await currentUserReference!
                                          .update(createUsersRecordData(
                                        ethnicity: () {
                                          if (_model.underlineBoxCheckerAModel
                                              .checkboxListTileValue!) {
                                            return _model
                                                .underlineBoxCheckerAModel
                                                .choice;
                                          } else if (_model
                                              .underlineBoxCheckerBModel
                                              .checkboxListTileValue!) {
                                            return _model
                                                .underlineBoxCheckerBModel
                                                .choice;
                                          } else if (_model
                                              .underlineBoxCheckerCModel
                                              .checkboxListTileValue!) {
                                            return _model
                                                .underlineBoxCheckerCModel
                                                .choice;
                                          } else if (_model
                                              .underlineBoxCheckerDModel
                                              .checkboxListTileValue!) {
                                            return _model
                                                .underlineBoxCheckerDModel
                                                .choice;
                                          } else if (_model
                                              .underlineBoxCheckerEModel
                                              .checkboxListTileValue!) {
                                            return _model
                                                .underlineBoxCheckerEModel
                                                .choice;
                                          } else if (_model
                                              .underlineBoxCheckerFModel
                                              .checkboxListTileValue!) {
                                            return _model
                                                .underlineBoxCheckerFModel
                                                .choice;
                                          } else if (_model
                                              .underlineBoxCheckerGModel
                                              .checkboxListTileValue!) {
                                            return _model
                                                .underlineBoxCheckerGModel
                                                .choice;
                                          } else if (_model
                                              .underlineBoxCheckerHModel
                                              .checkboxListTileValue!) {
                                            return _model
                                                .underlineBoxCheckerHModel
                                                .choice;
                                          } else if (_model
                                              .underlineBoxCheckerIModel
                                              .checkboxListTileValue!) {
                                            return _model
                                                .underlineBoxCheckerIModel
                                                .choice;
                                          } else if (_model
                                              .underlineBoxCheckerJModel
                                              .checkboxListTileValue!) {
                                            return _model
                                                .underlineBoxCheckerJModel
                                                .choice;
                                          } else {
                                            return '';
                                          }
                                        }(),
                                      ));
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Save Successful',
                                            style: TextStyle(
                                              color: Color(0xFF664229),
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                          backgroundColor: Color(0xFFE0DED3),
                                        ),
                                      );
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'You are to choose one option from the list of options',
                                            style: TextStyle(
                                              color: Color(0xFF664229),
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
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
                                        'kh6bii3i' /* Save choice */,
                                      ),
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
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
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                  ),
                                  unselectedWidgetColor: Color(0xFF664229),
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue ??= false,
                                  onChanged: (newValue) async {
                                    setState(
                                        () => _model.checkboxValue = newValue!);
                                  },
                                  activeColor: Color(0xFF664229),
                                  checkColor: Color(0xFF664229),
                                ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'sm3ol0kh' /* Visible on profile */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Quicksand',
                                      color: Color(0xFF664229),
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
