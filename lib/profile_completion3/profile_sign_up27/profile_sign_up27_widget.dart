import '/auth/firebase_auth/auth_util.dart';
import '/components/hint_component/hint_component_widget.dart';
import '/flutter_flow/flutter_flow_media_display.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_sign_up27_model.dart';
export 'profile_sign_up27_model.dart';

class ProfileSignUp27Widget extends StatefulWidget {
  const ProfileSignUp27Widget({Key? key}) : super(key: key);

  @override
  _ProfileSignUp27WidgetState createState() => _ProfileSignUp27WidgetState();
}

class _ProfileSignUp27WidgetState extends State<ProfileSignUp27Widget> {
  late ProfileSignUp27Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileSignUp27Model());
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
            padding: EdgeInsetsDirectional.fromSTEB(38.0, 60.0, 30.0, 30.0),
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
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
                                  'assets/images/healthicons_ui-user-profile.svg',
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
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'xbcj9c15' /* Pick your videos and photos */,
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
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: GridView(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 10.0,
                                    mainAxisSpacing: 10.0,
                                    childAspectRatio: 1.0,
                                  ),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Container(
                                      width: 101.0,
                                      height: 94.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: Color(0xFFD9D9D9),
                                        ),
                                      ),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'profileSignUp28_a',
                                              queryParameters: {
                                                'mediaLink': serializeParam(
                                                  (currentUserDocument?.photos
                                                          ?.toList() ??
                                                      [])[0],
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                          child: FlutterFlowMediaDisplay(
                                            path: valueOrDefault<String>(
                                              (currentUserDocument?.photos
                                                      ?.toList() ??
                                                  [])[0],
                                              'data:image/jpeg;base64,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',
                                            ),
                                            imageBuilder: (path) => ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                path,
                                                width: 300.0,
                                                height: 300.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            videoPlayerBuilder: (path) =>
                                                FlutterFlowVideoPlayer(
                                              path: path,
                                              width: 100.0,
                                              height: 94.0,
                                              autoPlay: true,
                                              looping: true,
                                              showControls: false,
                                              allowFullScreen: true,
                                              allowPlaybackSpeedMenu: false,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 101.0,
                                      height: 94.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: Color(0xFFD9D9D9),
                                        ),
                                      ),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'profileSignUp28_a',
                                              queryParameters: {
                                                'mediaLink': serializeParam(
                                                  (currentUserDocument?.photos
                                                          ?.toList() ??
                                                      [])[1],
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                          child: FlutterFlowMediaDisplay(
                                            path: valueOrDefault<String>(
                                              (currentUserDocument?.photos
                                                      ?.toList() ??
                                                  [])[1],
                                              'data:image/jpeg;base64,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',
                                            ),
                                            imageBuilder: (path) => ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                path,
                                                width: 300.0,
                                                height: 300.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            videoPlayerBuilder: (path) =>
                                                FlutterFlowVideoPlayer(
                                              path: path,
                                              width: 100.0,
                                              height: 94.0,
                                              autoPlay: true,
                                              looping: true,
                                              showControls: false,
                                              allowFullScreen: true,
                                              allowPlaybackSpeedMenu: false,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 101.0,
                                      height: 94.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: Color(0xFFD9D9D9),
                                        ),
                                      ),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'profileSignUp28_a',
                                              queryParameters: {
                                                'mediaLink': serializeParam(
                                                  (currentUserDocument?.photos
                                                          ?.toList() ??
                                                      [])[2],
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                          child: FlutterFlowMediaDisplay(
                                            path: valueOrDefault<String>(
                                              (currentUserDocument?.photos
                                                      ?.toList() ??
                                                  [])[2],
                                              'data:image/jpeg;base64,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',
                                            ),
                                            imageBuilder: (path) => ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                path,
                                                width: 300.0,
                                                height: 300.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            videoPlayerBuilder: (path) =>
                                                FlutterFlowVideoPlayer(
                                              path: path,
                                              width: 100.0,
                                              height: 94.0,
                                              autoPlay: true,
                                              looping: true,
                                              showControls: false,
                                              allowFullScreen: true,
                                              allowPlaybackSpeedMenu: false,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 101.0,
                                      height: 94.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: Color(0xFFD9D9D9),
                                        ),
                                      ),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'profileSignUp28_b',
                                              queryParameters: {
                                                'videoLiink': serializeParam(
                                                  (currentUserDocument?.videos
                                                          ?.toList() ??
                                                      [])[0],
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                          child: FlutterFlowMediaDisplay(
                                            path: valueOrDefault<String>(
                                              (currentUserDocument?.videos
                                                      ?.toList() ??
                                                  [])[0],
                                              'data:image/jpeg;base64,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',
                                            ),
                                            imageBuilder: (path) => ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                path,
                                                width: 300.0,
                                                height: 300.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            videoPlayerBuilder: (path) =>
                                                FlutterFlowVideoPlayer(
                                              path: path,
                                              width: 100.0,
                                              height: 94.0,
                                              autoPlay: true,
                                              looping: true,
                                              showControls: false,
                                              allowFullScreen: true,
                                              allowPlaybackSpeedMenu: false,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 101.0,
                                      height: 94.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: Color(0xFFD9D9D9),
                                        ),
                                      ),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'profileSignUp28_b',
                                              queryParameters: {
                                                'videoLiink': serializeParam(
                                                  (currentUserDocument?.videos
                                                          ?.toList() ??
                                                      [])[1],
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                          child: FlutterFlowMediaDisplay(
                                            path: valueOrDefault<String>(
                                              (currentUserDocument?.videos
                                                      ?.toList() ??
                                                  [])[1],
                                              'data:image/jpeg;base64,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',
                                            ),
                                            imageBuilder: (path) => ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                path,
                                                width: 300.0,
                                                height: 300.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            videoPlayerBuilder: (path) =>
                                                FlutterFlowVideoPlayer(
                                              path: path,
                                              width: 100.0,
                                              height: 94.0,
                                              autoPlay: true,
                                              looping: true,
                                              showControls: false,
                                              allowFullScreen: true,
                                              allowPlaybackSpeedMenu: false,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 101.0,
                                      height: 94.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: Color(0xFFD9D9D9),
                                        ),
                                      ),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'profileSignUp28_b',
                                              queryParameters: {
                                                'videoLiink': serializeParam(
                                                  (currentUserDocument?.videos
                                                          ?.toList() ??
                                                      [])[2],
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                          child: FlutterFlowMediaDisplay(
                                            path: valueOrDefault<String>(
                                              (currentUserDocument?.videos
                                                      ?.toList() ??
                                                  [])[2],
                                              'data:image/jpeg;base64,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',
                                            ),
                                            imageBuilder: (path) => ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                path,
                                                width: 300.0,
                                                height: 300.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            videoPlayerBuilder: (path) =>
                                                FlutterFlowVideoPlayer(
                                              path: path,
                                              width: 100.0,
                                              height: 94.0,
                                              autoPlay: true,
                                              looping: true,
                                              showControls: false,
                                              allowFullScreen: true,
                                              allowPlaybackSpeedMenu: false,
                                            ),
                                          ),
                                        ),
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: wrapWithModel(
                              model: _model.hintComponentModel,
                              updateCallback: () => setState(() {}),
                              child: HintComponentWidget(
                                hint:
                                    'Videos bring your profile to life, giving others a better sense of who you are.',
                              ),
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
                          context.pushNamed('ProfileSignUp29_v');
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
