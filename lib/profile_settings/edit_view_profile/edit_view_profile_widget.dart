import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_media_display.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_view_profile_model.dart';
export 'edit_view_profile_model.dart';

class EditViewProfileWidget extends StatefulWidget {
  const EditViewProfileWidget({Key? key}) : super(key: key);

  @override
  _EditViewProfileWidgetState createState() => _EditViewProfileWidgetState();
}

class _EditViewProfileWidgetState extends State<EditViewProfileWidget> {
  late EditViewProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditViewProfileModel());
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
          title: AuthUserStreamWidget(
            builder: (context) => Text(
              valueOrDefault(currentUserDocument?.firstName, ''),
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Quicksand',
                    color: Color(0xFF664229),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: DefaultTabController(
                    length: 2,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment(0.0, 0),
                          child: TabBar(
                            labelColor: Color(0xFF664229),
                            unselectedLabelColor: Color(0xFF987554),
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                            indicatorColor: Color(0xFF664229),
                            indicatorWeight: 2.0,
                            tabs: [
                              Tab(
                                text: FFLocalizations.of(context).getText(
                                  '0c2iey2o' /* View */,
                                ),
                              ),
                              Tab(
                                text: FFLocalizations.of(context).getText(
                                  '5cbzu8wb' /* Edit */,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 20.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6oy1ybbi' /* My photos & Videos */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFFD9D9D9),
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  width: 100.0,
                                                  height: 258.0,
                                                  decoration: BoxDecoration(),
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
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    children: [
                                                      Container(
                                                        width: 80.0,
                                                        height: 80.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFD9D9D9),
                                                        ),
                                                        child:
                                                            AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              FlutterFlowMediaDisplay(
                                                            path:
                                                                valueOrDefault<
                                                                    String>(
                                                              (currentUserDocument
                                                                      ?.photos
                                                                      ?.toList() ??
                                                                  [])[0],
                                                              'data:image/jpeg;base64,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',
                                                            ),
                                                            imageBuilder:
                                                                (path) =>
                                                                    ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                              child:
                                                                  Image.network(
                                                                path,
                                                                width: 100.0,
                                                                height: 100.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            videoPlayerBuilder:
                                                                (path) =>
                                                                    FlutterFlowVideoPlayer(
                                                              path: path,
                                                              width: 120.0,
                                                              height: 120.0,
                                                              autoPlay: false,
                                                              looping: true,
                                                              showControls:
                                                                  true,
                                                              allowFullScreen:
                                                                  true,
                                                              allowPlaybackSpeedMenu:
                                                                  false,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 80.0,
                                                        height: 80.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFD9D9D9),
                                                        ),
                                                        child:
                                                            AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              FlutterFlowMediaDisplay(
                                                            path:
                                                                valueOrDefault<
                                                                    String>(
                                                              (currentUserDocument
                                                                      ?.photos
                                                                      ?.toList() ??
                                                                  [])[1],
                                                              'data:image/jpeg;base64,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',
                                                            ),
                                                            imageBuilder:
                                                                (path) =>
                                                                    ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                              child:
                                                                  Image.network(
                                                                path,
                                                                width: 100.0,
                                                                height: 100.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            videoPlayerBuilder:
                                                                (path) =>
                                                                    FlutterFlowVideoPlayer(
                                                              path: path,
                                                              width: 120.0,
                                                              height: 120.0,
                                                              autoPlay: false,
                                                              looping: true,
                                                              showControls:
                                                                  true,
                                                              allowFullScreen:
                                                                  true,
                                                              allowPlaybackSpeedMenu:
                                                                  false,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 80.0,
                                                        height: 80.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFD9D9D9),
                                                        ),
                                                        child:
                                                            AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              FlutterFlowMediaDisplay(
                                                            path:
                                                                valueOrDefault<
                                                                    String>(
                                                              (currentUserDocument
                                                                      ?.photos
                                                                      ?.toList() ??
                                                                  [])[2],
                                                              'data:image/jpeg;base64,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',
                                                            ),
                                                            imageBuilder:
                                                                (path) =>
                                                                    ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                              child:
                                                                  Image.network(
                                                                path,
                                                                width: 100.0,
                                                                height: 100.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            videoPlayerBuilder:
                                                                (path) =>
                                                                    FlutterFlowVideoPlayer(
                                                              path: path,
                                                              width: 120.0,
                                                              height: 120.0,
                                                              autoPlay: false,
                                                              looping: true,
                                                              showControls:
                                                                  true,
                                                              allowFullScreen:
                                                                  true,
                                                              allowPlaybackSpeedMenu:
                                                                  false,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 80.0,
                                                        height: 80.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFD9D9D9),
                                                        ),
                                                        child:
                                                            AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              FlutterFlowMediaDisplay(
                                                            path:
                                                                valueOrDefault<
                                                                    String>(
                                                              (currentUserDocument
                                                                      ?.videos
                                                                      ?.toList() ??
                                                                  [])[0],
                                                              'data:image/jpeg;base64,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',
                                                            ),
                                                            imageBuilder:
                                                                (path) =>
                                                                    ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                              child:
                                                                  Image.network(
                                                                path,
                                                                width: 100.0,
                                                                height: 100.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            videoPlayerBuilder:
                                                                (path) =>
                                                                    FlutterFlowVideoPlayer(
                                                              path: path,
                                                              width: 120.0,
                                                              height: 120.0,
                                                              autoPlay: false,
                                                              looping: true,
                                                              showControls:
                                                                  true,
                                                              allowFullScreen:
                                                                  true,
                                                              allowPlaybackSpeedMenu:
                                                                  false,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 80.0,
                                                        height: 80.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFD9D9D9),
                                                        ),
                                                        child:
                                                            AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              FlutterFlowMediaDisplay(
                                                            path:
                                                                valueOrDefault<
                                                                    String>(
                                                              (currentUserDocument
                                                                      ?.videos
                                                                      ?.toList() ??
                                                                  [])[1],
                                                              'data:image/jpeg;base64,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',
                                                            ),
                                                            imageBuilder:
                                                                (path) =>
                                                                    ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                              child:
                                                                  Image.network(
                                                                path,
                                                                width: 100.0,
                                                                height: 100.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            videoPlayerBuilder:
                                                                (path) =>
                                                                    FlutterFlowVideoPlayer(
                                                              path: path,
                                                              width: 120.0,
                                                              height: 120.0,
                                                              autoPlay: false,
                                                              looping: true,
                                                              showControls:
                                                                  true,
                                                              allowFullScreen:
                                                                  true,
                                                              allowPlaybackSpeedMenu:
                                                                  false,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 80.0,
                                                        height: 80.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFD9D9D9),
                                                        ),
                                                        child:
                                                            AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              FlutterFlowMediaDisplay(
                                                            path:
                                                                valueOrDefault<
                                                                    String>(
                                                              (currentUserDocument
                                                                      ?.videos
                                                                      ?.toList() ??
                                                                  [])[2],
                                                              'data:image/jpeg;base64,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',
                                                            ),
                                                            imageBuilder:
                                                                (path) =>
                                                                    ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                              child:
                                                                  Image.network(
                                                                path,
                                                                width: 100.0,
                                                                height: 100.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            videoPlayerBuilder:
                                                                (path) =>
                                                                    FlutterFlowVideoPlayer(
                                                              path: path,
                                                              width: 120.0,
                                                              height: 120.0,
                                                              autoPlay: false,
                                                              looping: true,
                                                              showControls:
                                                                  true,
                                                              allowFullScreen:
                                                                  true,
                                                              allowPlaybackSpeedMenu:
                                                                  false,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 20.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5l8gw0aa' /* Written Prompt  */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Quicksand',
                                                          color:
                                                              Color(0xFFD9D9D9),
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 20.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  border: Border.all(
                                                    color: Color(0xFFD9D9D9),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 20.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'ecbti83n' /* A life goal of mine */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Quicksand',
                                                                    color: Color(
                                                                        0xFF664229),
                                                                    fontSize:
                                                                        13.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'vlople7d' /* To be successful */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Quicksand',
                                                                  color: Color(
                                                                      0xFFD9D9D9),
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 20.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  border: Border.all(
                                                    color: Color(0xFFD9D9D9),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 20.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '381xtsa7' /* A life goal of mine */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Quicksand',
                                                                    color: Color(
                                                                        0xFF664229),
                                                                    fontSize:
                                                                        13.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'jw0zctpn' /* To be successful */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Quicksand',
                                                                  color: Color(
                                                                      0xFFD9D9D9),
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 375.0,
                                              height: 65.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                border: Border.all(
                                                  color: Color(0xFFD9D9D9),
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 20.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  5.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'w1pmxi2n' /* A life goal of mine */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Quicksand',
                                                                  color: Color(
                                                                      0xFF664229),
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'we358szx' /* To be successful */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Quicksand',
                                                                color: Color(
                                                                    0xFFD9D9D9),
                                                                fontSize: 13.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
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
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 20.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'r5r1m796' /* My Vitals */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Quicksand',
                                                          color:
                                                              Color(0xFFD9D9D9),
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '034birlx' /* Name */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    '${valueOrDefault(currentUserDocument?.firstName, '')} ${valueOrDefault(currentUserDocument?.lastName, '')}',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'hof4hb7j' /* Always Visible */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '9gojbpyx' /* Gender */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.gender,
                                                                        ''),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'a082ps5i' /* Visible */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 375.0,
                                              height: 65.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              child: Card(
                                                clipBehavior:
                                                    Clip.antiAliasWithSaveLayer,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 4.0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 20.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        7.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '2p71hz5n' /* Pronouns */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        Text(
                                                                  valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.pronouns,
                                                                      ''),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'y5n5niyx' /* Hidden */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Quicksand',
                                                                      color: Color(
                                                                          0xFF664229),
                                                                      fontSize:
                                                                          13.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'eka2gtoh' /* Sexuality */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.sexuality,
                                                                        ''),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'm6xu1vls' /* Hidden */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'p3ofboph' /* Age */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.age,
                                                                        ''),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'coykvl69' /* Always Visible */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'jyyvqiif' /* Height */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.height,
                                                                        ''),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '53pfdk7q' /* Always Visible */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'ep0kdbi3' /* Location */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    currentUserDocument!
                                                                        .location!
                                                                        .toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'r9njiwg5' /* Always Visible */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '41e4u97l' /* Ethnicity */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.ethnicity,
                                                                        ''),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '88m0abjd' /* Visible */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'h87pvdl5' /* Children */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.haveChildren,
                                                                        ''),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'h70um0ht' /* Hidden */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '9anzma2v' /* Family Plans */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.interestedInChildren,
                                                                        ''),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'q5t3ter2' /* Hidden */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '0uhsr75p' /* Covid Vaccination */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.covidVaccinated,
                                                                        ''),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'brlr9mr5' /* Hidden */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 20.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5ilyk88e' /* My Virtues */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Quicksand',
                                                          color:
                                                              Color(0xFFD9D9D9),
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '85iqgpva' /* Work */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.workplace,
                                                                        ''),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'o5bydbvg' /* Visible */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'r00omlal' /* Job Title */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.job,
                                                                        ''),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '7ceb6kev' /* Hidden */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '0k6ategg' /* School */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.schoolAttended,
                                                                        ''),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'mwgypd2w' /* Visible */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'vvdd95tc' /* Education Level */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '1u6vnn1m' /* Undergrad */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'jjwsct3o' /* Hidden */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'nj0rlk5z' /* Religious Beliefs */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.religiousBelief,
                                                                        ''),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'stsk7dom' /* Visible */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'byndfw7f' /* Hometown */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.hometown,
                                                                        ''),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'cfjyhttl' /* Visible */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'meprnl3n' /* Political Preference */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.politicalBelief,
                                                                        ''),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'op36to2l' /* Visible */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'cbmj3ze1' /* Languages Spoken */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.languagesSpoken,
                                                                        ''),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'r4t4nymz' /* Hidden */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'mfvu7dfa' /* Dating Intentions */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.datingIntentions,
                                                                        ''),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'vs63idkq' /* Hidden */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'mn5rl230' /* Relationship Type */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.relationshipType,
                                                                        ''),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'fu7mxl2y' /* Hidden */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 20.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8w307rpt' /* My Vices */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Quicksand',
                                                          color:
                                                              Color(0xFFD9D9D9),
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '154fbnoc' /* Drinking */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.drinking,
                                                                        ''),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'va29f5f9' /* Visible */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'vlvzt0a0' /* Smoking */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.smoking,
                                                                        ''),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'tjsn9j1q' /* Visible */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
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
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 20.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bfy9w9dc' /* My photos & Videos */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              Color(0xFFD9D9D9),
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '3m7lo5uz' /* Tap to edit */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFF987554),
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  width: 100.0,
                                                  height: 258.0,
                                                  decoration: BoxDecoration(),
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
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    children: [
                                                      Container(
                                                        width: 80.0,
                                                        height: 80.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFE8E6EA),
                                                            width: 2.0,
                                                          ),
                                                        ),
                                                        child:
                                                            AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                'profileSignUp28_a',
                                                                queryParameters:
                                                                    {
                                                                  'mediaLink':
                                                                      serializeParam(
                                                                    (currentUserDocument
                                                                            ?.photos
                                                                            ?.toList() ??
                                                                        [])[0],
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            child:
                                                                FlutterFlowMediaDisplay(
                                                              path:
                                                                  valueOrDefault<
                                                                      String>(
                                                                (currentUserDocument
                                                                        ?.photos
                                                                        ?.toList() ??
                                                                    [])[0],
                                                                'data:image/jpeg;base64,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',
                                                              ),
                                                              imageBuilder:
                                                                  (path) =>
                                                                      ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                                child: Image
                                                                    .network(
                                                                  path,
                                                                  width: 100.0,
                                                                  height: 100.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              videoPlayerBuilder:
                                                                  (path) =>
                                                                      FlutterFlowVideoPlayer(
                                                                path: path,
                                                                width: 120.0,
                                                                height: 120.0,
                                                                autoPlay: false,
                                                                looping: true,
                                                                showControls:
                                                                    true,
                                                                allowFullScreen:
                                                                    true,
                                                                allowPlaybackSpeedMenu:
                                                                    false,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 80.0,
                                                        height: 80.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFE8E6EA),
                                                            width: 2.0,
                                                          ),
                                                        ),
                                                        child:
                                                            AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                'profileSignUp28_a',
                                                                queryParameters:
                                                                    {
                                                                  'mediaLink':
                                                                      serializeParam(
                                                                    (currentUserDocument
                                                                            ?.photos
                                                                            ?.toList() ??
                                                                        [])[1],
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            child:
                                                                FlutterFlowMediaDisplay(
                                                              path:
                                                                  valueOrDefault<
                                                                      String>(
                                                                (currentUserDocument
                                                                        ?.photos
                                                                        ?.toList() ??
                                                                    [])[1],
                                                                'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw0QDQ0SEg0NEhIQDQ0NEBANDQ8NDxUPFREiFhUSExUYHCggGBolHRUVITEhKik3Ly4uFx8zOD84NyktOisBCgoKBQUFDgUFDisZExkrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEBAAMAAwEAAAAAAAAAAAAABwIFBgEECAP/xABDEAABAwECBw0GBQMEAwAAAAAAAQIDBBFUBQcWITWT0QYSFRcxQVFhc3SSsrMiMzRxgZQTYpGhwRQysUJywtJSgqL/xAAUAQEAAAAAAAAAAAAAAAAAAAAA/8QAFBEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8AuAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABn6gM4AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFvUBaAAAAAAAD8KuriiYr5ZGRsRUTfSORjbV5M6no5S4Ov1Jr49oG1BqspcHX6k18e0ZS4Ov1Jr49oG1BqspcHX6k18e0ZS4Nv1Jr49oG1BqspcG36k18e0ZS4Nv1Jr49oG1BqspMG36k18e0ZSYOv1Jr49oG1BqspMHX6k18e0ZSYOv1Jr49oG1BqspcHX6k18e0ZS4Ov1Jr49oG1BqspcHX6k18e0ZS4Ov1Jr49oG1BqspcG36k18e0ZS4Nv1Jr49oG1BqspcG36k18e09iiwvSTOVsVTBI5Gq9WxSNe7eotltiLyWqn6ge6AAAAAWoBagAAAAAAOVxl6Lk7WDzkhK9jL0XJ2sHnJLTpbJGnNv2IviA/IF54DoblS/bxbBwHQ3Kl+3i2AQYF54DobnS/bxbBwHQ3Ol+3i2AQYF54DobnS/bxbBwHQ3Ol+3i2AQYF54DobnS/bxbBwHQ3Ol+3i2AQYF54DobnS/bxbBwHQ3Ol+3i2AQYF54DobnS/bxbBwHQ3Ol+3i2AQYF54DoblS/bxbBwHQ3Kl+3i2AQYF54DobnS/bxbBwHQ3Ol+3i2AQc7LFVpCXuUnqsPwxlUsUVexscccbVpInb2NjWNtWR6W2Jz5k/Q/fFVpCXuUnqsAqwAAAABYBYAAAAAADlcZei5O1g85Jab3kfaM8xWsZei5O1g85Jab3kfaM8wH0IAAAB61fXQ08ayTSsjYma162Z+hE516kA9kHGVGMiga6xsVU9P8AyaxjU+iOci/sbTA27CgqnIxsiseuZsc7fw3KvQi2q1V6kUDfgAAAAAAAAAAAAJPjT0jH3OL1HmWKrSEvcpPVYY409Ix9zi9R5liq0hL3OT1WAVYAAAAAsAs6wAAAAAAcrjL0XJ2sHnJLS+8j7RnmK1jL0XJ2sHnJLS+8j7RnmA+hAABhLI1jXPcqI1rXOcq8iNRLVUh+6TDktbUOkcqoxFVIY+ZkfN/7LmtXYhW92Cu4NrbOX+nk8Nmf9rSHgAABWMXW6B9VC+GVyulgRtjlX2nxLmRV6VRcyr8jsCS4r1dwktnJ/Szb75b5v82FaAAAAAAAAAAACT41NIx9zi9R5liq0hL3OT1WGONTSMfc4vUeZYqtIS9yk9VgFWAAAAALF6QM/UAAAAAADlcZei5O1g85JaX3kfaM8xWsZei5O1g85JaX3kfaM8wH0IAAPzqIWyMexyWtexzHJ0tVLFIXh7A8tHUPiei2IqrG+zM+O3M5P5TmUvB6WFcFU9VHvJomvbyoq2o5q9LXJnRQIIeCnT4s6dXexVTNTocxkn0tzGzwNuGoad6PVHzPatqOmsVrV6UYiWW/O0D0sWuAXwRPnkarXzojWNcljmwpntXoVy2LZ0Ih2oAAAAD166thgjdJLI1jG8rnLm+SdK9SGr3Tbp6ehZ7XtyuS1kLV9pety/6W9f6Ekw3hqprJd/M+2y3eMbakbE6Gp/PKoHVYexizOVW0rEjamb8WVqPkXra1czfrb9DRxbtMKtdb/Vq7P/a+KFWr/wDP+DQACq7l93kVQ5sVQ1sUqqiNcir+C93Rn/tXqX9Tsz52K/i4whNPQL+I9XLFO6Frlzu3iMa5EVedfaVLfkByONTSMfc4vUeZYqtIS9yk9VhjjU0jH3OL1HmWKrSEvcpPVYBVgAAAADOBb1AAAAAAA5XGXouTtYPOSWl95H2jPMVrGXouTtYPOSWl95H2jPMB9CAHhypYqqtiJnVVzJYB5ByGG8YFHCqthRah6ZrWORsSL/vz2/RFNHDjNm33t0cStt5GSua5E+aotoFLBz+BN2NDVKjWyLHIuZI57GKq/lXkd8rbToAAAAHIbsd2TKTfRQ719QqWKvKyK3nd0u/L+vX6u7fdn+Dvqenciy52ySpnSP8AK3pf/j58kwVVVVVVVVVVVVVbVVV5VVekD9Kid8j3Pe9z3vXfOc5bXKvWfmAAAAAqmKn4CbvknpMJWVTFT8BN3yT0mAc3jU0jH3OL1HmWKrSEvcpPVYY41NIx9zi9R5liq0hL3OT1WAVYAAAAAtAtQAAAAAAHK4y9FydrB5yS0vvI+0Z5itYy9FydrB5yS03vI+0Z5gPoKWRGtc5Vsa1qucvUiWqR/dbuumrXOYxXR06LYjEzOf8Amk/68iFYwt8NU9hN5FIAnIgHkAAeDr9y+7iemVsc6umhzJaq2ysT8qr/AHJ1L9DkQB9A0NZFNE2SORr2PS1rm8ny6l6jR7vK6rgonOgbyrvZZGr7Uca/6mp+1vN+6TbcpukloZrc7oXqn4sX/NvQ5P35OiyywTRTxNe1WvjlZanO1zHJzov+APn4G93ZYCWiq1a1F/CktkhVc/s252W9LVzfJUNEAAAAAACqYqfgJu+SekwlZVMVPwE3fJPSYBzeNTSMfc4vUeZYqtIS9zk9VhjjU0jH3OL1HmWKrSEvcpPVYBVgAAAAC1AMwAAAAAAOVxl6Lk7WDzklpveR9ozzFaxl6Lk7WDzklpveR9ozzAXrC3w1T2E3kUgCciF/wt8NUdhN5FIAnIgHkAAAAAO7xa7oWxOkpppGtjVHTROe5Gta5M722ryIqZ/mi9JwgA77GBukoKmFIY99I9kiPbK1N7G1eRyWrncip0ZuRbcxwIAAAAAAAKpip+Am75J6TCVlUxU/ATd8k9JgHN41NIx9zi9R5liq0hL3KT1WGONTSMfc4vUeZYqdIS9yk9VgFWAAAAALALAAAAAAAcrjL0XJ2sHnJLTe8j7RnmK1jL0XJ2sHnJHE/euavQ5rv0W0D6CqoUfHIy2zfsey1OVN8llv7nDcWMF7m1bDPjNprrUeKPaOM2mutR4o9oGHFlBe5tWwcWUF7m1bDLjNprrUeKPaOM2mutR4o9oGPFlBe5tWwcWMF8m+sbDLjNprrUeKPaOM2mutR4o9oGHFjDfJdUzaOLGG+S6pm0z4zaa61Hij2nnjNprrUeKPaBhxZQXubVsHFlBe5tWwz4zaa61Hij2njjNprrUeKPaBjxZQXubVsHFlBe5tWwy4zaa61Hij2jjNprrUeKPaBjxZQXubVsHFlBe5tWwy4zaa61Hij2jjNprrUeKPaBjxZQXubVsOm3MYBZQwPibI56OldLa9EaqKrUbZm/2/uc3xm011qPFHtHGbTXWo8Ue0DRY1NIx9zi9R5liq0hL3OT1WGo3YYbZXVTZWRvYiQMiseqKtqPc63Nze1+xt8VWkJe5yeqwCrAAAAAFnWoFnWAAAAAADnN39HLNg57Io3yPWSFUaxN86xHZ1sJfkzhK5VOrUuYAhmTOErlU6tRkzhK5VOrUuYAhmTOErlU6tRkzhK5VOrUuYAhmTOErlU6tRkzhK5VOrUuYAhmTOErlU6tRkzhK5VOrUuYAhmTOErlU6tRkzhK5VOrUuYAhmTOErlU6tRkzhK5VOrUuYAhmTOErlU6tRkzhK5VOrUuYAhmTOErlU6tRkzhK5VOrUuYAhmTOErlU6tTq8W+B6uCuldLTzRtWkkYjpGK1N8sjFs+diL+hSAAAAAAAM4GcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC3qAt+YAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAG+AtADn+g5wAC8wcAAdyBeQAAgQAAgTnAAJyqOf6AAOcLzAAFDuQAAvIOYAAgaAATn+YTnAAc45wAC8wd/IABwUADEAAf/2Q==',
                                                              ),
                                                              imageBuilder:
                                                                  (path) =>
                                                                      ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                                child: Image
                                                                    .network(
                                                                  path,
                                                                  width: 100.0,
                                                                  height: 100.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              videoPlayerBuilder:
                                                                  (path) =>
                                                                      FlutterFlowVideoPlayer(
                                                                path: path,
                                                                width: 120.0,
                                                                height: 120.0,
                                                                autoPlay: false,
                                                                looping: true,
                                                                showControls:
                                                                    true,
                                                                allowFullScreen:
                                                                    true,
                                                                allowPlaybackSpeedMenu:
                                                                    false,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 80.0,
                                                        height: 80.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFE8E6EA),
                                                            width: 2.0,
                                                          ),
                                                        ),
                                                        child:
                                                            AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                'profileSignUp28_a',
                                                                queryParameters:
                                                                    {
                                                                  'mediaLink':
                                                                      serializeParam(
                                                                    (currentUserDocument
                                                                            ?.photos
                                                                            ?.toList() ??
                                                                        [])[2],
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            child:
                                                                FlutterFlowMediaDisplay(
                                                              path:
                                                                  valueOrDefault<
                                                                      String>(
                                                                (currentUserDocument
                                                                        ?.photos
                                                                        ?.toList() ??
                                                                    [])[2],
                                                                'data:image/jpeg;base64,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',
                                                              ),
                                                              imageBuilder:
                                                                  (path) =>
                                                                      ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child: Image
                                                                    .network(
                                                                  path,
                                                                  width: 100.0,
                                                                  height: 100.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              videoPlayerBuilder:
                                                                  (path) =>
                                                                      FlutterFlowVideoPlayer(
                                                                path: path,
                                                                width: 120.0,
                                                                height: 120.0,
                                                                autoPlay: false,
                                                                looping: true,
                                                                showControls:
                                                                    true,
                                                                allowFullScreen:
                                                                    true,
                                                                allowPlaybackSpeedMenu:
                                                                    false,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 80.0,
                                                        height: 80.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFE8E6EA),
                                                            width: 2.0,
                                                          ),
                                                        ),
                                                        child:
                                                            AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                'profileSignUp28_b',
                                                                queryParameters:
                                                                    {
                                                                  'videoLiink':
                                                                      serializeParam(
                                                                    (currentUserDocument
                                                                            ?.videos
                                                                            ?.toList() ??
                                                                        [])[0],
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            child:
                                                                FlutterFlowMediaDisplay(
                                                              path:
                                                                  valueOrDefault<
                                                                      String>(
                                                                (currentUserDocument
                                                                        ?.videos
                                                                        ?.toList() ??
                                                                    [])[0],
                                                                'data:image/jpeg;base64,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',
                                                              ),
                                                              imageBuilder:
                                                                  (path) =>
                                                                      ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                                child: Image
                                                                    .network(
                                                                  path,
                                                                  width: 100.0,
                                                                  height: 100.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              videoPlayerBuilder:
                                                                  (path) =>
                                                                      FlutterFlowVideoPlayer(
                                                                path: path,
                                                                width: 120.0,
                                                                height: 120.0,
                                                                autoPlay: false,
                                                                looping: true,
                                                                showControls:
                                                                    true,
                                                                allowFullScreen:
                                                                    true,
                                                                allowPlaybackSpeedMenu:
                                                                    false,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 80.0,
                                                        height: 80.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFE8E6EA),
                                                            width: 2.0,
                                                          ),
                                                        ),
                                                        child:
                                                            AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                'profileSignUp28_b',
                                                                queryParameters:
                                                                    {
                                                                  'videoLiink':
                                                                      serializeParam(
                                                                    (currentUserDocument
                                                                            ?.videos
                                                                            ?.toList() ??
                                                                        [])[1],
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            child:
                                                                FlutterFlowMediaDisplay(
                                                              path:
                                                                  valueOrDefault<
                                                                      String>(
                                                                (currentUserDocument
                                                                        ?.videos
                                                                        ?.toList() ??
                                                                    [])[1],
                                                                'data:image/jpeg;base64,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',
                                                              ),
                                                              imageBuilder:
                                                                  (path) =>
                                                                      ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                                child: Image
                                                                    .network(
                                                                  path,
                                                                  width: 100.0,
                                                                  height: 100.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              videoPlayerBuilder:
                                                                  (path) =>
                                                                      FlutterFlowVideoPlayer(
                                                                path: path,
                                                                width: 120.0,
                                                                height: 120.0,
                                                                autoPlay: false,
                                                                looping: true,
                                                                showControls:
                                                                    true,
                                                                allowFullScreen:
                                                                    true,
                                                                allowPlaybackSpeedMenu:
                                                                    false,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 80.0,
                                                        height: 80.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFE8E6EA),
                                                            width: 2.0,
                                                          ),
                                                        ),
                                                        child:
                                                            AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                'profileSignUp28_b',
                                                                queryParameters:
                                                                    {
                                                                  'videoLiink':
                                                                      serializeParam(
                                                                    (currentUserDocument
                                                                            ?.videos
                                                                            ?.toList() ??
                                                                        [])[2],
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            child:
                                                                FlutterFlowMediaDisplay(
                                                              path:
                                                                  valueOrDefault<
                                                                      String>(
                                                                (currentUserDocument
                                                                        ?.videos
                                                                        ?.toList() ??
                                                                    [])[2],
                                                                'data:image/jpeg;base64,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',
                                                              ),
                                                              imageBuilder:
                                                                  (path) =>
                                                                      ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                                child: Image
                                                                    .network(
                                                                  path,
                                                                  width: 100.0,
                                                                  height: 100.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              videoPlayerBuilder:
                                                                  (path) =>
                                                                      FlutterFlowVideoPlayer(
                                                                path: path,
                                                                width: 120.0,
                                                                height: 120.0,
                                                                autoPlay: false,
                                                                looping: true,
                                                                showControls:
                                                                    true,
                                                                allowFullScreen:
                                                                    true,
                                                                allowPlaybackSpeedMenu:
                                                                    false,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 20.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Flexible(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cjm7vchx' /* Written Prompt  */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Quicksand',
                                                              color: Color(
                                                                  0xFFD9D9D9),
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'a0gwo7n6' /* Tap to edit */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Quicksand',
                                                            color: Color(
                                                                0xFF987554),
                                                            fontSize: 16.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  border: Border.all(
                                                    color: Color(0xFFD9D9D9),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 20.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'a5pavhej' /* A life goal of mine */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Quicksand',
                                                                    color: Color(
                                                                        0xFF664229),
                                                                    fontSize:
                                                                        13.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'lo7ljly1' /* To be successful */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Quicksand',
                                                                  color: Color(
                                                                      0xFFD9D9D9),
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  border: Border.all(
                                                    color: Color(0xFFD9D9D9),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 20.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'hc76xaiq' /* A life goal of mine */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Quicksand',
                                                                    color: Color(
                                                                        0xFF664229),
                                                                    fontSize:
                                                                        13.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              't4cf7x9e' /* To be successful */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Quicksand',
                                                                  color: Color(
                                                                      0xFFD9D9D9),
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  border: Border.all(
                                                    color: Color(0xFFD9D9D9),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 20.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'xlx4eq84' /* A life goal of mine */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Quicksand',
                                                                    color: Color(
                                                                        0xFF664229),
                                                                    fontSize:
                                                                        13.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'c6jkvmwx' /* To be successful */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Quicksand',
                                                                  color: Color(
                                                                      0xFFD9D9D9),
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 20.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Flexible(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9cy63z2p' /* My Vitals */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Quicksand',
                                                              color: Color(
                                                                  0xFFD9D9D9),
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '11cbixnn' /* Tap to edit */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Quicksand',
                                                            color: Color(
                                                                0xFF987554),
                                                            fontSize: 16.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'ProfileName');
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    elevation: 4.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            7.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'gjnmysar' /* Name */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      '${valueOrDefault(currentUserDocument?.firstName, '')} ${valueOrDefault(currentUserDocument?.lastName, '')}',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'mfbbndeu' /* Always Visible */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'ProfileGender');
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    elevation: 4.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            7.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '72bij1g9' /* Gender */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.gender,
                                                                          ''),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '1drfhbi9' /* Visible */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'ProfilePronouns');
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    elevation: 4.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            7.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '7twdiz2h' /* Pronouns */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.pronouns,
                                                                          ''),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'h6bdn7to' /* Hidden */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'ProfileSexuality');
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    elevation: 4.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            7.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'ekwuty5f' /* Sexuality */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.sexuality,
                                                                          ''),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '7hx2g5el' /* Hidden */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'ProfileAge');
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    elevation: 4.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            7.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'x5zt5dnj' /* Age */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.age,
                                                                          ''),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'ousme51v' /* Always Visible */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'ProfileHeight');
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    elevation: 4.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            7.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'bqpv83vu' /* Height */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.height,
                                                                          ''),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'zurcd6rh' /* Always Visible */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'ProfileLocation');
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    elevation: 4.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            7.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'ho4dmfjg' /* Location */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      currentUserDocument!
                                                                          .location!
                                                                          .toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'y9wemyek' /* Always Visible */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'ProfileEthnicity');
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    elevation: 4.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            7.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'x0sps2sm' /* Ethnicity */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.ethnicity,
                                                                          ''),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'm77xfjxg' /* Visible */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'ProfileChildren');
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    elevation: 4.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            7.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'wl2offzc' /* Children */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.haveChildren,
                                                                          ''),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'qtx0muw6' /* Hidden */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'ProfileFamilyPlan');
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    elevation: 4.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            7.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '6wodvjo5' /* Family Plans */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.interestedInChildren,
                                                                          ''),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '2okrkdie' /* Hidden */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'ProfileCovid');
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    elevation: 4.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            7.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'ycxgeisk' /* Covid Vaccination */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        valueOrDefault(
                                                                            currentUserDocument?.covidVaccinated,
                                                                            ''),
                                                                        'None',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'lt3u1ume' /* Hidden */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 20.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'y2vcouai' /* My Virtues */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Quicksand',
                                                            color: Color(
                                                                0xFFD9D9D9),
                                                            fontSize: 16.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ),
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qeng05q7' /* Tap to Edit  */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Quicksand',
                                                          color:
                                                              Color(0xFF987554),
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'ProfileWork');
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    elevation: 4.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            7.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'o873wj99' /* Work */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.workplace,
                                                                          ''),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'z0ncah5s' /* Visible */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'ProfileJob');
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    elevation: 4.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            7.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        't1ihgog0' /* Job Title */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.job,
                                                                          ''),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'bwk2roqv' /* Hidden */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'ProfileSchool');
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    elevation: 4.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            7.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '5bmaw8s5' /* School */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.schoolAttended,
                                                                          ''),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'uzqo7f7i' /* Visible */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'ProfileEducation');
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    elevation: 4.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            7.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'vo749csv' /* Education Level */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.educationLevel,
                                                                          ''),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'itphsg3n' /* Hidden */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'ProfileReligion');
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    elevation: 4.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            7.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'ujg5p21g' /* Religious Beliefs */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.religiousBelief,
                                                                          ''),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'kwq6dvt1' /* Visible */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'ProfileHometown');
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    elevation: 4.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            7.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '658l164h' /* Hometown */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.hometown,
                                                                          ''),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'v3w5s6gl' /* Visible */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'ProfilePolitics');
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    elevation: 4.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            7.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '23r17c1t' /* Political Preference */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.politicalBelief,
                                                                          ''),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '9cx7inhi' /* Visible */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'cswkxw78' /* Languages Spoken */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.languagesSpoken,
                                                                        ''),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '4p8llacv' /* Hidden */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'i8au03fp' /* Dating Intentions */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.datingIntentions,
                                                                        ''),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'msbxn9cr' /* Hidden */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'omn62zc0' /* Relationship Type */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.relationshipType,
                                                                        ''),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'hfxb06d6' /* Hidden */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Quicksand',
                                                                        color: Color(
                                                                            0xFF664229),
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 20.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'exd8q2jv' /* My Vices */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Quicksand',
                                                            color: Color(
                                                                0xFFD9D9D9),
                                                            fontSize: 16.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ),
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'igekcyt9' /* Tap to edit */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Quicksand',
                                                          color:
                                                              Color(0xFF987554),
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'ProfileDrinking');
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    elevation: 4.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            7.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'yuu2rqdz' /* Drinking */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.drinking,
                                                                          ''),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'x3976p9o' /* Visible */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Container(
                                                width: 375.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'ProfileSmoking');
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    elevation: 4.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            7.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'cett3k60' /* Smoking */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.smoking,
                                                                          ''),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'znj765by' /* Visible */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          color:
                                                                              Color(0xFF664229),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
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
                                ),
                              ),
                            ],
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
