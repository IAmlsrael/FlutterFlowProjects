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
import 'profile_sign_up8_model.dart';
export 'profile_sign_up8_model.dart';

class ProfileSignUp8Widget extends StatefulWidget {
  const ProfileSignUp8Widget({Key? key}) : super(key: key);

  @override
  _ProfileSignUp8WidgetState createState() => _ProfileSignUp8WidgetState();
}

class _ProfileSignUp8WidgetState extends State<ProfileSignUp8Widget> {
  late ProfileSignUp8Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileSignUp8Model());
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
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
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
                                width: 50.0,
                                height: 50.0,
                                decoration: BoxDecoration(),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: SvgPicture.asset(
                                    'assets/images/arcticons_magnetometer.svg',
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'h9mtqoq1' /* What’s your sexuality? */,
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
                            ),
                          ],
                        ),
                      ),
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
                                      optionValue: 'Prefer not to say',
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
                                      optionValue: 'Straight',
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
                                      optionValue: 'Gay',
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
                                      optionValue: 'Lesbian',
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
                                      optionValue: 'Bisexual',
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
                                      optionValue: 'Allosexual',
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
                                      optionValue: 'Androsexual',
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
                                      optionValue: 'Asexual',
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
                                      optionValue: 'Autosexual',
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
                                      optionValue: 'Bicurious',
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
                                    model: _model.underlineBoxCheckerKModel,
                                    updateCallback: () => setState(() {}),
                                    child: UnderlineBoxCheckerWidget(
                                      optionValue: 'Fluid',
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
                                    model: _model.underlineBoxCheckerLModel,
                                    updateCallback: () => setState(() {}),
                                    child: UnderlineBoxCheckerWidget(
                                      optionValue: 'Greysexual',
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
                                    model: _model.underlineBoxCheckerMModel,
                                    updateCallback: () => setState(() {}),
                                    child: UnderlineBoxCheckerWidget(
                                      optionValue: 'Gynesexual',
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
                                    model: _model.underlineBoxCheckerNModel,
                                    updateCallback: () => setState(() {}),
                                    child: UnderlineBoxCheckerWidget(
                                      optionValue: 'Monosexual',
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
                                    model: _model.underlineBoxCheckerOModel,
                                    updateCallback: () => setState(() {}),
                                    child: UnderlineBoxCheckerWidget(
                                      optionValue: 'Demisexual',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                'z3wgzazi' /* Visible on profile */,
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
                        Container(
                          height: 51.0,
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 140.0,
                                height: 23.0,
                                decoration: BoxDecoration(),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'x63d2jjn' /* Feedback on sexuality? */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Quicksand',
                                        color: Color(0xFF664229),
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
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
                                      '${_model.underlineBoxCheckerAModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerBModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerCModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerDModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerEModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerFModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerGModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerHModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerIModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerJModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerKModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerLModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerMModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerNModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerOModel.checkboxListTileValue?.toString()}',
                                    );
                                    if (functions.checkBoolean(functions
                                        .chngToBool(_model.toStrgLst!.toList())
                                        .toList())) {
                                      await currentUserReference!
                                          .update(createUsersRecordData(
                                        sexuality:
                                            '${_model.underlineBoxCheckerAModel.choice}${_model.underlineBoxCheckerBModel.choice}${_model.underlineBoxCheckerCModel.choice}${_model.underlineBoxCheckerDModel.choice}${_model.underlineBoxCheckerEModel.choice}${_model.underlineBoxCheckerFModel.choice}${_model.underlineBoxCheckerGModel.choice}${_model.underlineBoxCheckerHModel.choice}${_model.underlineBoxCheckerIModel.choice}${_model.underlineBoxCheckerJModel.choice}${_model.underlineBoxCheckerKModel.choice}${_model.underlineBoxCheckerLModel.choice}${_model.underlineBoxCheckerMModel.choice}${_model.underlineBoxCheckerNModel.choice}${_model.underlineBoxCheckerOModel.choice}',
                                      ));

                                      context.pushNamed('ProfileSignUp9');
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
                        ),
                      ],
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
