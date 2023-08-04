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
import 'profile_sexuality_model.dart';
export 'profile_sexuality_model.dart';

class ProfileSexualityWidget extends StatefulWidget {
  const ProfileSexualityWidget({Key? key}) : super(key: key);

  @override
  _ProfileSexualityWidgetState createState() => _ProfileSexualityWidgetState();
}

class _ProfileSexualityWidgetState extends State<ProfileSexualityWidget> {
  late ProfileSexualityModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileSexualityModel());
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
              '1d3pvg0n' /* Sexuality */,
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
                  Column(
                    mainAxisSize: MainAxisSize.max,
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
                                  _model.toStrgLstCopy =
                                      await actions.toStrgLst(
                                    '${_model.underlineBoxCheckerAModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerBModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerCModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerDModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerEModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerFModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerGModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerHModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerIModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerJModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerKModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerLModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerMModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerNModel.checkboxListTileValue?.toString()},${_model.underlineBoxCheckerOModel.checkboxListTileValue?.toString()}',
                                  );
                                  if (functions.checkBoolean(functions
                                      .chngToBool(
                                          _model.toStrgLstCopy!.toList())
                                      .toList())) {
                                    await currentUserReference!
                                        .update(createUsersRecordData(
                                      sexuality:
                                          '${_model.underlineBoxCheckerAModel.choice}${_model.underlineBoxCheckerBModel.choice}${_model.underlineBoxCheckerCModel.choice}${_model.underlineBoxCheckerDModel.choice}${_model.underlineBoxCheckerEModel.choice}${_model.underlineBoxCheckerFModel.choice}${_model.underlineBoxCheckerGModel.choice}${_model.underlineBoxCheckerHModel.choice}${_model.underlineBoxCheckerIModel.choice}${_model.underlineBoxCheckerJModel.choice}${_model.underlineBoxCheckerKModel.choice}${_model.underlineBoxCheckerLModel.choice}${_model.underlineBoxCheckerMModel.choice}${_model.underlineBoxCheckerNModel.choice}${_model.underlineBoxCheckerOModel.choice}',
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
                                      'kzwh52be' /* Save choice */,
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
                                      borderRadius: BorderRadius.circular(50.0),
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
                                'vdoooftp' /* Visible on profile */,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
