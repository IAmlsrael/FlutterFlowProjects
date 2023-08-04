import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/s_i_unit_switch/s_i_unit_switch_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_height_model.dart';
export 'profile_height_model.dart';

class ProfileHeightWidget extends StatefulWidget {
  const ProfileHeightWidget({Key? key}) : super(key: key);

  @override
  _ProfileHeightWidgetState createState() => _ProfileHeightWidgetState();
}

class _ProfileHeightWidgetState extends State<ProfileHeightWidget> {
  late ProfileHeightModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileHeightModel());
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
              'dbwihxzh' /* Height */,
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
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (_model.sIUnitSwitchModel.switchValue == false)
                          FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController1 ??=
                                FormFieldController<String>(
                              _model.dropDownValue1 ??=
                                  FFLocalizations.of(context).getText(
                                'l1f1f2of' /* 5'5" */,
                              ),
                            ),
                            options: [
                              FFLocalizations.of(context).getText(
                                'ueol1gwe' /* 4'11" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'xlkeaqsa' /* 4'11.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'k3qe0fww' /* 5'0" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'd8h6srnk' /* 5'0.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'k9hd5jsx' /* 5'0.8" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'itgv738p' /* 5'1" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'w3vco06n' /* 5'1.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '863bn6d7' /* 5'1.8" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'uvj0ik0t' /* 5'2" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '8meq7hhh' /* 5'2.6" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'swgdc08b' /* 5'3" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'm68ne6oc' /* 5'3.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '5bejaxsx' /* 5'3.8" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'yzpfhkw2' /* 5'4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '069esjsk' /* 5'4.6" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'qeb6re9g' /* 5'5" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'l8x4tc6d' /* 5'5.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'oyxa09cq' /* 5'5.8" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '9r3l16y6' /* 5'6" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'slutk7uu' /* 5'6.6" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'a1q8ourv' /* 5'7" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '04ojm8v1' /* 5'7.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'cg0fwlts' /* 5'7.8" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'xunqgng7' /* 5'8" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'u0uwtlav' /* 5'8.6" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '8b44vxrl' /* 5'9" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '64gsd1ba' /* 5'9.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'c1qhsztz' /* 5'9.8" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'hufv74em' /* 5'10" */,
                              ),
                              FFLocalizations.of(context).getText(
                                't054enay' /* 5'10.6" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '24clylip' /* 5'11" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'dmgjsgma' /* 5'11.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'jjdtlhwm' /* 5'11.8" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'enpdnst1' /* 6'0" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'k76vlrg2' /* 6'0.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '0fxzk2a0' /* 6'0.8" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '0xv27a6g' /* 6'1" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'tdiqe608' /* 6'1.6" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'quznou72' /* 6'2" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'ovhg03zl' /* 6'2.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'zltyi3ay' /* 6'2.8" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '318i6y92' /* 6'3" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'bmi10qjk' /* 6'3.6" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '7emz23hy' /* 6'4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '6aclz78e' /* 6'4.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'ykk4kmd4' /* 6'4.8" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '3ud1or56' /* 6'5" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'r66wcsx7' /* 6'5.6" */,
                              ),
                              FFLocalizations.of(context).getText(
                                't3jt3sae' /* 6'6" */,
                              ),
                              FFLocalizations.of(context).getText(
                                's7sopiw2' /* 6'6.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'iiynj753' /* 6'6.8" */,
                              )
                            ],
                            onChanged: (val) =>
                                setState(() => _model.dropDownValue1 = val),
                            width: 361.0,
                            height: 78.0,
                            searchHintTextStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Quicksand',
                                  color: Color(0xFF664229),
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                            hintText: FFLocalizations.of(context).getText(
                              'ku67mtv9' /* Select how tall you are in fee... */,
                            ),
                            searchHintText: FFLocalizations.of(context).getText(
                              'g6m5mseu' /*  */,
                            ),
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Color(0xFF664229),
                              size: 30.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor: Color(0xFF664229),
                            borderWidth: 2.0,
                            borderRadius: 10.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: true,
                          ),
                        if (_model.sIUnitSwitchModel.switchValue == true)
                          FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController2 ??=
                                FormFieldController<String>(
                              _model.dropDownValue2 ??=
                                  FFLocalizations.of(context).getText(
                                'rsyirdjo' /* 165 cm */,
                              ),
                            ),
                            options: [
                              FFLocalizations.of(context).getText(
                                '3gha96d7' /* 150 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '1zx9qbqd' /* 151 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'ub0w4plc' /* 152 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'sj7ca1ki' /* 153 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '1hlglsz6' /* 154 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'fhmeq2ij' /* 155 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '1kpquli9' /* 156 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'n48wdwy3' /* 157 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '803h245a' /* 158 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'd48wlu5e' /* 159 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'hrfipk72' /* 160 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'uay9nfek' /* 161 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'sosjacbz' /* 162 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'nhlgjx05' /* 163 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '1ypgu5m3' /* 164 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'ugu11s0b' /* 165 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'ak05xjnf' /* 166 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '7pu2vugt' /* 167 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '032jjrpx' /* 168 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '0ahce51x' /* 169 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'twls9l2f' /* 170 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'vlf5g15q' /* 171 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '2tbz9iyq' /* 172 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'ulatzs7m' /* 173 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'djumxhwm' /* 174 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'cs3wbjah' /* 175 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'k45lmqpr' /* 176 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '9xw9lzrg' /* 177 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'g12y869y' /* 178 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                't5en44hl' /* 179 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'uwkz0ff4' /* 180 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'hp7s0agn' /* 181 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'uy9zo66l' /* 182 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'u64mcwm4' /* 183 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'c4oriw7t' /* 184 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'pj1sb5nb' /* 185 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'tnlmbty0' /* 186 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'xs2r9zr7' /* 187 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'entewo65' /* 188 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'xh2g23rx' /* 189 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '7sz86uvs' /* 190 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'zu79notf' /* 191 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'bgmzwkzc' /* 192 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'mikyrnmu' /* 193 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'coymb22i' /* 194 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '6eotio1e' /* 195 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '15ujfpb6' /* 196 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'zkkn03i3' /* 197 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '47anvg9e' /* 198 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'ibu4c9aj' /* 199 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'qs8v9cjn' /* 200 cm */,
                              )
                            ],
                            onChanged: (val) =>
                                setState(() => _model.dropDownValue2 = val),
                            width: 361.0,
                            height: 78.0,
                            searchHintTextStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Quicksand',
                                  color: Color(0xFF664229),
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                            hintText: FFLocalizations.of(context).getText(
                              'zkmhqju4' /* Select how tall you are in cen... */,
                            ),
                            searchHintText: FFLocalizations.of(context).getText(
                              'pnixv4zo' /*  */,
                            ),
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Color(0xFF664229),
                              size: 30.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor: Color(0xFF664229),
                            borderWidth: 2.0,
                            borderRadius: 10.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: true,
                          ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 1.0, 0.0),
                            child: wrapWithModel(
                              model: _model.sIUnitSwitchModel,
                              updateCallback: () => setState(() {}),
                              child: SIUnitSwitchWidget(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (_model.sIUnitSwitchModel.switchValue == false)
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await currentUserReference!
                                .update(createUsersRecordData(
                              height: _model.dropDownValue1,
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
                                'n8wcvl6y' /* Save choice */,
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
                    if (_model.sIUnitSwitchModel.switchValue == true)
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await currentUserReference!
                                .update(createUsersRecordData(
                              height: _model.dropDownValue2,
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
                                'osydjln9' /* Save choice */,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
