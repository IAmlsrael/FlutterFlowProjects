import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/profile_button/profile_button_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_age_model.dart';
export 'profile_age_model.dart';

class ProfileAgeWidget extends StatefulWidget {
  const ProfileAgeWidget({Key? key}) : super(key: key);

  @override
  _ProfileAgeWidgetState createState() => _ProfileAgeWidgetState();
}

class _ProfileAgeWidgetState extends State<ProfileAgeWidget> {
  late ProfileAgeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileAgeModel());
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
              '8gnqsqgm' /* Age */,
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Container(
                        width: 320.0,
                        height: 381.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFF664229),
                            width: 2.0,
                          ),
                        ),
                        child: FlutterFlowCalendar(
                          color: Color(0xFF664229),
                          iconColor: Color(0xFF664229),
                          weekFormat: false,
                          weekStartsMonday: false,
                          rowHeight: 50.0,
                          onChange: (DateTimeRange? newSelectedDate) async {
                            _model.calendarSelectedDay = newSelectedDate;
                            _model.calculatedAge = await actions.ageCalculator(
                              _model.calendarSelectedDay!.start,
                              getCurrentTimestamp,
                            );
                            setState(() {});
                          },
                          titleStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Quicksand',
                                color: Color(0xFF664229),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                          dayOfWeekStyle:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Quicksand',
                                    color: Color(0xFF987554),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                          dateStyle: FlutterFlowTheme.of(context).bodyMedium,
                          selectedDateStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Quicksand',
                                    color: Color(0xFFD9D9D9),
                                  ),
                          inactiveDateStyle:
                              FlutterFlowTheme.of(context).labelMedium,
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age ${_model.calculatedAge?.toString()}',
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
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await currentUserReference!
                            .update(createUsersRecordData(
                          age: _model.calculatedAge?.toString(),
                          dateOfBirth: _model.calendarSelectedDay?.start,
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
                      },
                      child: wrapWithModel(
                        model: _model.profileButtonModel,
                        updateCallback: () => setState(() {}),
                        child: ProfileButtonWidget(
                          buttonText: 'Save Age',
                        ),
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
