import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'match_page_model.dart';
export 'match_page_model.dart';

class MatchPageWidget extends StatefulWidget {
  const MatchPageWidget({Key? key}) : super(key: key);

  @override
  _MatchPageWidgetState createState() => _MatchPageWidgetState();
}

class _MatchPageWidgetState extends State<MatchPageWidget> {
  late MatchPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MatchPageModel());

    _model.textController ??= TextEditingController();
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (getCurrentTimestamp == getCurrentTimestamp)
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 60.0, 20.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 20.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'g6xseqpv' /* Matches */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Quicksand',
                                        color: Color(0xFF664229),
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: SvgPicture.asset(
                                'assets/images/cryptocurrency_chat.svg',
                                width: 300.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'jr23f1kg' /* You’re new here! No matches ye... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Quicksand',
                                        color: Color(0xFF664229),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 15.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'gbi66zx6' /* When a Like turns into a conne... */,
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Quicksand',
                                          color: Color(0xFF664229),
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: FFLocalizations.of(context).getText(
                              'hjv9vgvi' /* Try boosting your profile */,
                            ),
                            options: FFButtonOptions(
                              width: 270.0,
                              height: 48.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFF664229),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 60.0, 20.0, 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'p126jhbd' /* Matches */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFF664229),
                                            fontSize: 32.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 10.0),
                                child: TextFormField(
                                  controller: _model.textController,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      '49crw47c' /* Search */,
                                    ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Quicksand',
                                          color: Color(0xFF664229),
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    prefixIcon: Icon(
                                      FFIcons.ksearch,
                                      size: 24.0,
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Quicksand',
                                        color: Color(0xFF664229),
                                      ),
                                  validator: _model.textControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'pdzfs10p' /* New matches */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Quicksand',
                                            color: Color(0xFF664229),
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 15.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 5.0),
                                          child: AuthUserStreamWidget(
                                            builder: (context) => Container(
                                              width: 60.0,
                                              height: 60.0,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                valueOrDefault<String>(
                                                  currentUserPhoto,
                                                  'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIUAAACFCAMAAABCBMsOAAAAh1BMVEXw7+s9PT06Ojo9PTvw7u3w7+lIRkf+/Ps7Pjs9PD/7+fj18/Hy7uvw8ew3ODf49vVzc3FRUVEsKyoyMjLo5+WAgH5bXFmHh4UnJSVqa2hLSkjX1tX4+PPb3NgwMS62tLORkZCcnZsYGhgTFBCnpqWurqrPz8vExcAgIh6/vr1kYmEYFBUfHB3YrR5wAAADyElEQVR4nO2ba3ObOhBA9fIDVCQi8RBGAZzGxKb9/7+vAjtt6thK6ivkzq3OjPPBnoyPpdVqVwAghAAAxtc9OVrcHwIWi8W9JcDiL7BY3F/haHFvBTDOx90XSCAQCAQCgUAgEAgEAv8nCOWrVbxacUru1XMTSutdWSyXy6Jsa8rvokFJW61FIxFCrBG4agH1L6H7QjFsgBFcG9i+6GPfw0HLJwR/h30tPY8GGRr4Hjl4HYxFdUkCwqbyKKFTcVECYpFyXxLx8xWJUePZkwbJ9ueB+QskMj+xQUt5VcJEaOlnMDK5tlhg9ph4kOA7gW0Waqc9WNCKWS1Y5cMi26DIZoE32fwSSc+gzcIMRj3/KklelM1hTBkv828n9KCgbY1AqA7zWySHD8YC7n1YvFxN3x5nBPQSW2fES3SalWq3QBsfO4nJWlYLVlEPFvpZWC3Uzst2llnHAuEM+LgqScvL5d4R2fkpgU2VY9nO9oSALz409O56yhA7nQAPBYaZdJpfq7ZkrkGS+ChzwNSOXIxQOQCPN1JQXl2aFFF5bZkJIZ1kZw5MdomJTC+hOaIpIbzfqLceTG16DQiNKfFyFwOvK9OdE8oPqVKSjUil0sMqASTuh5p7yFo066TEuzEANM3arhqKoeoOGTHjQ+kON02XzZ63dF2ICCKVZ6bSThKqtVmX2vw1AcGzfI8xFkU9cxXO22/HPkDuu8eYUzBlhy8mT1H9WO7ZWINjtm/5nAs26QQy3zOFY8Oqts5oHGvO9aJuK9ascTR+aoajm3F3p7kwXQBeTxlr/M1NkZbdtivTQqopnZpPxz4hUvMd69BcwWj8tScLDJFZHrKRZqGcepRXi0jldJ5J0aUw3/G+JcKn11keLWfJo3xrFsdrUHwMFtsZai7af0dRNB0tfs5i/bV3HxuPCGF7g3rOWPs5RpuS4rOT8UqTO56TqSP79GycGLs0pxGqGbrBAmGnZ9K0/aA5vYJqHQ4GIcP1s0UbaHCYuswqvUkCwu/uViuJ0/Pq7rPIPHZmkT3caoEenOUM2jd/mip+0vSumhOzg9hPsiyIravAiFPrmbMVmbpKGaslunlG0GZF3NzgTJvbLWBDXd1mLf4wdb8BN64u92b/xcLZVZvstk3kiDOLxZMQ8hXTDyKGbEwt4wkhnlxtJHS77bqyzPM0raphKB4mNsvN8h3m/aIYhqFK0zzPy67bbp0dqZg+kMc6juPVO+Ijlz8w/8adllvENOLjkcDbh16uHlW8fd/xUzJ/w6MVgUAgEAgEAoFAIBAIBAL/Nj8AA8M+YkyJqloAAAAASUVORK5CYII=',
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '5y9dzu5s' /* You */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Quicksand',
                                                color: Color(0xFF664229),
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.68,
                                    decoration: BoxDecoration(),
                                    child: AuthUserStreamWidget(
                                      builder: (context) =>
                                          StreamBuilder<List<UsersRecord>>(
                                        stream: queryUsersRecord(
                                          queryBuilder: (usersRecord) => usersRecord
                                              .where('gender',
                                                  isNotEqualTo: valueOrDefault(
                                                      currentUserDocument
                                                          ?.gender,
                                                      ''))
                                              .where('interestedInDating',
                                                  isEqualTo: valueOrDefault(
                                                      currentUserDocument
                                                          ?.interestedInDating,
                                                      ''))
                                              .where('sexuality',
                                                  isEqualTo: valueOrDefault(
                                                      currentUserDocument
                                                          ?.sexuality,
                                                      '')),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    Color(0xFF664229),
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<UsersRecord> rowUsersRecordList =
                                              snapshot.data!;
                                          return SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: List.generate(
                                                  rowUsersRecordList.length,
                                                  (rowIndex) {
                                                final rowUsersRecord =
                                                    rowUsersRecordList[
                                                        rowIndex];
                                                return Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    5.0),
                                                        child: Container(
                                                          width: 60.0,
                                                          height: 60.0,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Image.network(
                                                            valueOrDefault<
                                                                String>(
                                                              rowUsersRecord
                                                                  .photoUrl,
                                                              'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIUAAACFCAMAAABCBMsOAAAAh1BMVEXw7+s9PT06Ojo9PTvw7u3w7+lIRkf+/Ps7Pjs9PD/7+fj18/Hy7uvw8ew3ODf49vVzc3FRUVEsKyoyMjLo5+WAgH5bXFmHh4UnJSVqa2hLSkjX1tX4+PPb3NgwMS62tLORkZCcnZsYGhgTFBCnpqWurqrPz8vExcAgIh6/vr1kYmEYFBUfHB3YrR5wAAADyElEQVR4nO2ba3ObOhBA9fIDVCQi8RBGAZzGxKb9/7+vAjtt6thK6ivkzq3OjPPBnoyPpdVqVwAghAAAxtc9OVrcHwIWi8W9JcDiL7BY3F/haHFvBTDOx90XSCAQCAQCgUAgEAgEAv8nCOWrVbxacUru1XMTSutdWSyXy6Jsa8rvokFJW61FIxFCrBG4agH1L6H7QjFsgBFcG9i+6GPfw0HLJwR/h30tPY8GGRr4Hjl4HYxFdUkCwqbyKKFTcVECYpFyXxLx8xWJUePZkwbJ9ueB+QskMj+xQUt5VcJEaOlnMDK5tlhg9ph4kOA7gW0Waqc9WNCKWS1Y5cMi26DIZoE32fwSSc+gzcIMRj3/KklelM1hTBkv828n9KCgbY1AqA7zWySHD8YC7n1YvFxN3x5nBPQSW2fES3SalWq3QBsfO4nJWlYLVlEPFvpZWC3Uzst2llnHAuEM+LgqScvL5d4R2fkpgU2VY9nO9oSALz409O56yhA7nQAPBYaZdJpfq7ZkrkGS+ChzwNSOXIxQOQCPN1JQXl2aFFF5bZkJIZ1kZw5MdomJTC+hOaIpIbzfqLceTG16DQiNKfFyFwOvK9OdE8oPqVKSjUil0sMqASTuh5p7yFo066TEuzEANM3arhqKoeoOGTHjQ+kON02XzZ63dF2ICCKVZ6bSThKqtVmX2vw1AcGzfI8xFkU9cxXO22/HPkDuu8eYUzBlhy8mT1H9WO7ZWINjtm/5nAs26QQy3zOFY8Oqts5oHGvO9aJuK9ascTR+aoajm3F3p7kwXQBeTxlr/M1NkZbdtivTQqopnZpPxz4hUvMd69BcwWj8tScLDJFZHrKRZqGcepRXi0jldJ5J0aUw3/G+JcKn11keLWfJo3xrFsdrUHwMFtsZai7af0dRNB0tfs5i/bV3HxuPCGF7g3rOWPs5RpuS4rOT8UqTO56TqSP79GycGLs0pxGqGbrBAmGnZ9K0/aA5vYJqHQ4GIcP1s0UbaHCYuswqvUkCwu/uViuJ0/Pq7rPIPHZmkT3caoEenOUM2jd/mip+0vSumhOzg9hPsiyIravAiFPrmbMVmbpKGaslunlG0GZF3NzgTJvbLWBDXd1mLf4wdb8BN64u92b/xcLZVZvstk3kiDOLxZMQ8hXTDyKGbEwt4wkhnlxtJHS77bqyzPM0raphKB4mNsvN8h3m/aIYhqFK0zzPy67bbp0dqZg+kMc6juPVO+Ijlz8w/8adllvENOLjkcDbh16uHlW8fd/xUzJ/w6MVgUAgEAgEAoFAIBAIBAL/Nj8AA8M+YkyJqloAAAAASUVORK5CYII=',
                                                            ),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        rowUsersRecord
                                                            .firstName,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Quicksand',
                                                                  color: Color(
                                                                      0xFF664229),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              }),
                                            ),
                                          );
                                        },
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'tgjyws8m' /* Messages */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Quicksand',
                                          color: Color(0xFF664229),
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    StreamBuilder<List<ChatsRecord>>(
                                      stream: queryChatsRecord(),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  Color(0xFF664229),
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<ChatsRecord>
                                            listViewChatsRecordList =
                                            snapshot.data!;
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewChatsRecordList.length,
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewChatsRecord =
                                                listViewChatsRecordList[
                                                    listViewIndex];
                                            return Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.9,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Visibility(
                                                visible:
                                                    (currentUserReference ==
                                                            listViewChatsRecord
                                                                .userA) ||
                                                        (currentUserReference ==
                                                            listViewChatsRecord
                                                                .userB),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      10.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 70.0,
                                                                height: 70.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  'https://picsum.photos/seed/902/600',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 70.0,
                                                                height: 70.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  'https://picsum.photos/seed/902/600',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Flexible(
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.75,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              10.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'ac7tzfpj' /* Emilie */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Quicksand',
                                                                                  color: Color(0xFF664229),
                                                                                  fontSize: 14.0,
                                                                                  fontWeight: FontWeight.bold,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              10.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '9436lmmi' /* Emilie */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Quicksand',
                                                                                  color: Color(0xFF664229),
                                                                                  fontSize: 14.0,
                                                                                  fontWeight: FontWeight.bold,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Text(
                                                                      listViewChatsRecord
                                                                          .lastMessage,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Quicksand',
                                                                            color:
                                                                                Color(0xFF664229),
                                                                            fontSize:
                                                                                14.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      dateTimeFormat(
                                                                        'relative',
                                                                        listViewChatsRecord
                                                                            .lastMessageTime!,
                                                                        locale:
                                                                            FFLocalizations.of(context).languageCode,
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
                                                                                12.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
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
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.7,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Divider(
                                                                thickness: 1.0,
                                                                color: Color(
                                                                    0xFFE8E6EA),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ],
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
    );
  }
}
