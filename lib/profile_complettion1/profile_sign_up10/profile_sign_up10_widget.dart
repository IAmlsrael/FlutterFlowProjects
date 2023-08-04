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
import 'profile_sign_up10_model.dart';
export 'profile_sign_up10_model.dart';

class ProfileSignUp10Widget extends StatefulWidget {
  const ProfileSignUp10Widget({Key? key}) : super(key: key);

  @override
  _ProfileSignUp10WidgetState createState() => _ProfileSignUp10WidgetState();
}

class _ProfileSignUp10WidgetState extends State<ProfileSignUp10Widget> {
  late ProfileSignUp10Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileSignUp10Model());
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
                                  'assets/images/radix-icons_line-height.svg',
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
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'sl50qsox' /* How tall are you? */,
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
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (_model.sIUnitSwitchModel.switchValue == false)
                          FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController1 ??=
                                FormFieldController<String>(
                              _model.dropDownValue1 ??=
                                  FFLocalizations.of(context).getText(
                                'l1ytslg5' /* 5'5" */,
                              ),
                            ),
                            options: [
                              FFLocalizations.of(context).getText(
                                'eyjk6ee2' /* 4'11" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'uc00x4p2' /* 4'11.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'qqvi4f49' /* 5'0" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'm81qg9v9' /* 5'0.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'frx134sq' /* 5'0.8" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'fq3l74ey' /* 5'1" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '5cn897iq' /* 5'1.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'uv8josps' /* 5'1.8" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'lfn2pkfr' /* 5'2" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'nh078zef' /* 5'2.6" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'r4bleof4' /* 5'3" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '8t1aai39' /* 5'3.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'dkyq46yr' /* 5'3.8" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '8ajdqdm9' /* 5'4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'xve48kmk' /* 5'4.6" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '6ye06dss' /* 5'5" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'koia9tv7' /* 5'5.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'hxphekva' /* 5'5.8" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '88jq2drn' /* 5'6" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'ixrgl08n' /* 5'6.6" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'xbcy3lvw' /* 5'7" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'xgiamp55' /* 5'7.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'mvocqvee' /* 5'7.8" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'ucribk0k' /* 5'8" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'doh1urvf' /* 5'8.6" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'viqre7cb' /* 5'9" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'm5tiix44' /* 5'9.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'c5aor8rg' /* 5'9.8" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'vlelv3zi' /* 5'10" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '029vzetb' /* 5'10.6" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'l6qwrxz6' /* 5'11" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'l20svnyd' /* 5'11.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'fi26swz5' /* 5'11.8" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'rkot7pqz' /* 6'0" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '9qneynwd' /* 6'0.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '0a1ed1qc' /* 6'0.8" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'dxbm2tlu' /* 6'1" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'cgnfpjmv' /* 6'1.6" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'srcsh02r' /* 6'2" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'a2jnxbu1' /* 6'2.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'h7qsfa37' /* 6'2.8" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'dy8xefk5' /* 6'3" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '1m1sy73v' /* 6'3.6" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '94uph0zm' /* 6'4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '1g5be9u2' /* 6'4.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'anrj01f2' /* 6'4.8" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'yaxl7vh6' /* 6'5" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'dtabfykb' /* 6'5.6" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'dh1jko2i' /* 6'6" */,
                              ),
                              FFLocalizations.of(context).getText(
                                '0fmiq11f' /* 6'6.4" */,
                              ),
                              FFLocalizations.of(context).getText(
                                'bw2brza8' /* 6'6.8" */,
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
                              '0mtaho3j' /* Select how tall you are in fee... */,
                            ),
                            searchHintText: FFLocalizations.of(context).getText(
                              '3lfjnkvn' /*  */,
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
                                's1ktikxa' /* 165 cm */,
                              ),
                            ),
                            options: [
                              FFLocalizations.of(context).getText(
                                'x6v1yu9y' /* 150 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'ooc8oqvi' /* 151 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'peif0hm3' /* 152 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '4coxo9fw' /* 153 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'jpkexpje' /* 154 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'djudqiya' /* 155 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '213rn0iz' /* 156 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '9cikxjv7' /* 157 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'nvq25pj5' /* 158 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '60oivicv' /* 159 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'zhev3m9k' /* 160 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '78ws6evo' /* 161 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'bgh3vjo8' /* 162 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'uzsuho00' /* 163 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'qs2r49m6' /* 164 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'szmi8nm4' /* 165 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'p562own7' /* 166 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '24dmt5kl' /* 167 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'ts1wradp' /* 168 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'brvppt8s' /* 169 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '8to7xbiq' /* 170 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '3q45btl9' /* 171 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'n284ujqa' /* 172 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'jxxc47ug' /* 173 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'rs7ht06f' /* 174 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '01qkj18o' /* 175 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'jdh9bf33' /* 176 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'bzst2csp' /* 177 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'emb4pvbo' /* 178 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'jvyx0xp8' /* 179 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '2mst58gr' /* 180 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'rv3f0u6q' /* 181 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'o8g6dho4' /* 182 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'qbm4eq2f' /* 183 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'lbv1opuf' /* 184 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '7yvf5pcc' /* 185 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'a94pm3w6' /* 186 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'trghvq5r' /* 187 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'up1ac1am' /* 188 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '99oc0w6x' /* 189 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '5segiuvn' /* 190 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '8qewi693' /* 191 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '7i2lbemp' /* 192 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'cj2zw812' /* 193 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                '4mu9rjld' /* 194 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'ng1b642w' /* 195 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'kwe19xun' /* 196 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'dzzpex2f' /* 197 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'i8ie2v9b' /* 198 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'c2jf5r61' /* 199 cm */,
                              ),
                              FFLocalizations.of(context).getText(
                                'eqdsfv1k' /* 200 cm */,
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
                              'tkadcnw2' /* Select how tall you are in cen... */,
                            ),
                            searchHintText: FFLocalizations.of(context).getText(
                              'd6r6ts5c' /*  */,
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
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Container(
                    width: 363.0,
                    height: 51.0,
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        if (_model.sIUnitSwitchModel.switchValue == false)
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
                                  height: _model.dropDownValue1,
                                ));

                                context.pushNamed('ProfileSignUp12');
                              },
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                size: 30.0,
                              ),
                            ),
                          ),
                        if (_model.sIUnitSwitchModel.switchValue == true)
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
                                  height: _model.dropDownValue2,
                                ));

                                context.pushNamed('ProfileSignUp12');
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
