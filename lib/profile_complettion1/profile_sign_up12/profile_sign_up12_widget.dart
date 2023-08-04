import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/underline_box_checker/underline_box_checker_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_sign_up12_model.dart';
export 'profile_sign_up12_model.dart';

class ProfileSignUp12Widget extends StatefulWidget {
  const ProfileSignUp12Widget({Key? key}) : super(key: key);

  @override
  _ProfileSignUp12WidgetState createState() => _ProfileSignUp12WidgetState();
}

class _ProfileSignUp12WidgetState extends State<ProfileSignUp12Widget> {
  late ProfileSignUp12Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileSignUp12Model());
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
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(34.0, 60.0, 30.0, 30.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 20.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 12.0, 0.0),
                                child: Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF664229),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 12.0, 0.0),
                                child: Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF664229),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 12.0, 0.0),
                                child: Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF664229),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 12.0, 0.0),
                                child: Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF664229),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 12.0, 0.0),
                                child: Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF664229),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 12.0, 0.0),
                                child: Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: SvgPicture.asset(
                                      'assets/images/icon-park_heart-rate.svg',
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 12.0, 0.0),
                                child: Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD9D9D9),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'jgu2604v' /* What’s your ethnicity */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Quicksand',
                                                color: Color(0xFF664229),
                                                fontSize: 24.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 5.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'p4383zyp' /* Select all who you’re open to ... */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Quicksand',
                                                color: Color(0xFF664229),
                                                fontSize: 13.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
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
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Container(
                      width: 363.0,
                      height: 85.0,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
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
                                  '4sv5egjj' /* Visible on profile */,
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
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF664229),
                                  shape: BoxShape.circle,
                                ),
                                child: InkWell(
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

                                      context.pushNamed('ProfileSignUp13');
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
                                  child: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    size: 30.0,
                                  ),
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
