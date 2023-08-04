import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_sign_up4_model.dart';
export 'profile_sign_up4_model.dart';

class ProfileSignUp4Widget extends StatefulWidget {
  const ProfileSignUp4Widget({Key? key}) : super(key: key);

  @override
  _ProfileSignUp4WidgetState createState() => _ProfileSignUp4WidgetState();
}

class _ProfileSignUp4WidgetState extends State<ProfileSignUp4Widget> {
  late ProfileSignUp4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileSignUp4Model());
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
                          Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/icon-park-outline_cake.png',
                                width: 300.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'd14jj92z' /* What’s your date of birth? */,
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Container(
                        width: 388.0,
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
                          initialDate: getCurrentTimestamp,
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
                          await currentUserReference!
                              .update(createUsersRecordData(
                            age: _model.calculatedAge?.toString(),
                            dateOfBirth: _model.calendarSelectedDay?.start,
                          ));

                          context.pushNamed('ProfileSignUp5');
                        },
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
      ),
    );
  }
}
