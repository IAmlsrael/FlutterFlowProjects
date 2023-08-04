import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/hint_component/hint_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_media_display.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_sign_up28_b_model.dart';
export 'profile_sign_up28_b_model.dart';

class ProfileSignUp28BWidget extends StatefulWidget {
  const ProfileSignUp28BWidget({
    Key? key,
    this.videoLiink,
  }) : super(key: key);

  final String? videoLiink;

  @override
  _ProfileSignUp28BWidgetState createState() => _ProfileSignUp28BWidgetState();
}

class _ProfileSignUp28BWidgetState extends State<ProfileSignUp28BWidget> {
  late ProfileSignUp28BModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileSignUp28BModel());
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
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  '7r6c7ko2' /* Add info */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Quicksand',
                      color: Color(0xFF664229),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                FFLocalizations.of(context).getText(
                  'v0ee50lz' /* Done */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Quicksand',
                      color: Color(0xFF664229),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 54.0, 0.0, 0.0),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.dropDownValueController ??=
                        FormFieldController<String>(null),
                    options: [
                      FFLocalizations.of(context).getText(
                        'psly5dxm' /* Option 1 */,
                      )
                    ],
                    onChanged: (val) =>
                        setState(() => _model.dropDownValue = val),
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    height: 52.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Quicksand',
                          color: Color(0xFF664229),
                          fontWeight: FontWeight.bold,
                        ),
                    hintText: FFLocalizations.of(context).getText(
                      'r11vu8ty' /* Select a prompt for your photo... */,
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Color(0xFF664229),
                      size: 24.0,
                    ),
                    elevation: 2.0,
                    borderColor: Color(0xFF664229),
                    borderWidth: 2.0,
                    borderRadius: 8.0,
                    margin:
                        EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                    hidesUnderline: true,
                    isSearchable: false,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    height: MediaQuery.sizeOf(context).height * 0.35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Color(0xFF664229),
                        width: 2.0,
                      ),
                    ),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      height: MediaQuery.sizeOf(context).height * 0.35,
                      child: Stack(
                        children: [
                          FlutterFlowMediaDisplay(
                            path: valueOrDefault<String>(
                              _model.uploadedFileUrl != null &&
                                      _model.uploadedFileUrl != ''
                                  ? _model.uploadedFileUrl
                                  : widget.videoLiink,
                              'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw0QDQ0SEg0NEhIQDQ0NEBANDQ8NDxUPFREiFhUSExUYHCggGBolHRUVITEhKik3Ly4uFx8zOD84NyktOisBCgoKBQUFDgUFDisZExkrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEBAAMAAwEAAAAAAAAAAAAABwIFBgEECAP/xABDEAABAwECBw0GBQMEAwAAAAAAAQIDBBFUBQcWITWT0QYSFRcxQVFhc3SSsrMiMzRxgZQTYpGhwRQysUJywtJSgqL/xAAUAQEAAAAAAAAAAAAAAAAAAAAA/8QAFBEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8AuAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABn6gM4AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFvUBaAAAAAAAD8KuriiYr5ZGRsRUTfSORjbV5M6no5S4Ov1Jr49oG1BqspcHX6k18e0ZS4Ov1Jr49oG1BqspcHX6k18e0ZS4Nv1Jr49oG1BqspcG36k18e0ZS4Nv1Jr49oG1BqspMG36k18e0ZSYOv1Jr49oG1BqspMHX6k18e0ZSYOv1Jr49oG1BqspcHX6k18e0ZS4Ov1Jr49oG1BqspcHX6k18e0ZS4Ov1Jr49oG1BqspcG36k18e0ZS4Nv1Jr49oG1BqspcG36k18e09iiwvSTOVsVTBI5Gq9WxSNe7eotltiLyWqn6ge6AAAAAWoBagAAAAAAOVxl6Lk7WDzkhK9jL0XJ2sHnJLTpbJGnNv2IviA/IF54DoblS/bxbBwHQ3Kl+3i2AQYF54DobnS/bxbBwHQ3Ol+3i2AQYF54DobnS/bxbBwHQ3Ol+3i2AQYF54DobnS/bxbBwHQ3Ol+3i2AQYF54DobnS/bxbBwHQ3Ol+3i2AQYF54DobnS/bxbBwHQ3Ol+3i2AQYF54DoblS/bxbBwHQ3Kl+3i2AQYF54DobnS/bxbBwHQ3Ol+3i2AQc7LFVpCXuUnqsPwxlUsUVexscccbVpInb2NjWNtWR6W2Jz5k/Q/fFVpCXuUnqsAqwAAAABYBYAAAAAADlcZei5O1g85Jab3kfaM8xWsZei5O1g85Jab3kfaM8wH0IAAAB61fXQ08ayTSsjYma162Z+hE516kA9kHGVGMiga6xsVU9P8AyaxjU+iOci/sbTA27CgqnIxsiseuZsc7fw3KvQi2q1V6kUDfgAAAAAAAAAAAAJPjT0jH3OL1HmWKrSEvcpPVYY409Ix9zi9R5liq0hL3OT1WAVYAAAAAsAs6wAAAAAAcrjL0XJ2sHnJLS+8j7RnmK1jL0XJ2sHnJLS+8j7RnmA+hAABhLI1jXPcqI1rXOcq8iNRLVUh+6TDktbUOkcqoxFVIY+ZkfN/7LmtXYhW92Cu4NrbOX+nk8Nmf9rSHgAABWMXW6B9VC+GVyulgRtjlX2nxLmRV6VRcyr8jsCS4r1dwktnJ/Szb75b5v82FaAAAAAAAAAAACT41NIx9zi9R5liq0hL3OT1WGONTSMfc4vUeZYqtIS9yk9VgFWAAAAALF6QM/UAAAAAADlcZei5O1g85JaX3kfaM8xWsZei5O1g85JaX3kfaM8wH0IAAPzqIWyMexyWtexzHJ0tVLFIXh7A8tHUPiei2IqrG+zM+O3M5P5TmUvB6WFcFU9VHvJomvbyoq2o5q9LXJnRQIIeCnT4s6dXexVTNTocxkn0tzGzwNuGoad6PVHzPatqOmsVrV6UYiWW/O0D0sWuAXwRPnkarXzojWNcljmwpntXoVy2LZ0Ih2oAAAAD166thgjdJLI1jG8rnLm+SdK9SGr3Tbp6ehZ7XtyuS1kLV9pety/6W9f6Ekw3hqprJd/M+2y3eMbakbE6Gp/PKoHVYexizOVW0rEjamb8WVqPkXra1czfrb9DRxbtMKtdb/Vq7P/a+KFWr/wDP+DQACq7l93kVQ5sVQ1sUqqiNcir+C93Rn/tXqX9Tsz52K/i4whNPQL+I9XLFO6Frlzu3iMa5EVedfaVLfkByONTSMfc4vUeZYqtIS9yk9VhjjU0jH3OL1HmWKrSEvcpPVYBVgAAAADOBb1AAAAAAA5XGXouTtYPOSWl95H2jPMVrGXouTtYPOSWl95H2jPMB9CAHhypYqqtiJnVVzJYB5ByGG8YFHCqthRah6ZrWORsSL/vz2/RFNHDjNm33t0cStt5GSua5E+aotoFLBz+BN2NDVKjWyLHIuZI57GKq/lXkd8rbToAAAAHIbsd2TKTfRQ719QqWKvKyK3nd0u/L+vX6u7fdn+Dvqenciy52ySpnSP8AK3pf/j58kwVVVVVVVVVVVVVbVVV5VVekD9Kid8j3Pe9z3vXfOc5bXKvWfmAAAAAqmKn4CbvknpMJWVTFT8BN3yT0mAc3jU0jH3OL1HmWKrSEvcpPVYY41NIx9zi9R5liq0hL3OT1WAVYAAAAAtAtQAAAAAAHK4y9FydrB5yS0vvI+0Z5itYy9FydrB5yS03vI+0Z5gPoKWRGtc5Vsa1qucvUiWqR/dbuumrXOYxXR06LYjEzOf8Amk/68iFYwt8NU9hN5FIAnIgHkAAeDr9y+7iemVsc6umhzJaq2ysT8qr/AHJ1L9DkQB9A0NZFNE2SORr2PS1rm8ny6l6jR7vK6rgonOgbyrvZZGr7Uca/6mp+1vN+6TbcpukloZrc7oXqn4sX/NvQ5P35OiyywTRTxNe1WvjlZanO1zHJzov+APn4G93ZYCWiq1a1F/CktkhVc/s252W9LVzfJUNEAAAAAACqYqfgJu+SekwlZVMVPwE3fJPSYBzeNTSMfc4vUeZYqtIS9zk9VhjjU0jH3OL1HmWKrSEvcpPVYBVgAAAAC1AMwAAAAAAOVxl6Lk7WDzklpveR9ozzFaxl6Lk7WDzklpveR9ozzAXrC3w1T2E3kUgCciF/wt8NUdhN5FIAnIgHkAAAAAO7xa7oWxOkpppGtjVHTROe5Gta5M722ryIqZ/mi9JwgA77GBukoKmFIY99I9kiPbK1N7G1eRyWrncip0ZuRbcxwIAAAAAAAKpip+Am75J6TCVlUxU/ATd8k9JgHN41NIx9zi9R5liq0hL3KT1WGONTSMfc4vUeZYqdIS9yk9VgFWAAAAALALAAAAAAAcrjL0XJ2sHnJLTe8j7RnmK1jL0XJ2sHnJHE/euavQ5rv0W0D6CqoUfHIy2zfsey1OVN8llv7nDcWMF7m1bDPjNprrUeKPaOM2mutR4o9oGHFlBe5tWwcWUF7m1bDLjNprrUeKPaOM2mutR4o9oGPFlBe5tWwcWMF8m+sbDLjNprrUeKPaOM2mutR4o9oGHFjDfJdUzaOLGG+S6pm0z4zaa61Hij2nnjNprrUeKPaBhxZQXubVsHFlBe5tWwz4zaa61Hij2njjNprrUeKPaBjxZQXubVsHFlBe5tWwy4zaa61Hij2jjNprrUeKPaBjxZQXubVsHFlBe5tWwy4zaa61Hij2jjNprrUeKPaBjxZQXubVsOm3MYBZQwPibI56OldLa9EaqKrUbZm/2/uc3xm011qPFHtHGbTXWo8Ue0DRY1NIx9zi9R5liq0hL3OT1WGo3YYbZXVTZWRvYiQMiseqKtqPc63Nze1+xt8VWkJe5yeqwCrAAAAAFnWoFnWAAAAAADnN39HLNg57Io3yPWSFUaxN86xHZ1sJfkzhK5VOrUuYAhmTOErlU6tRkzhK5VOrUuYAhmTOErlU6tRkzhK5VOrUuYAhmTOErlU6tRkzhK5VOrUuYAhmTOErlU6tRkzhK5VOrUuYAhmTOErlU6tRkzhK5VOrUuYAhmTOErlU6tRkzhK5VOrUuYAhmTOErlU6tRkzhK5VOrUuYAhmTOErlU6tRkzhK5VOrUuYAhmTOErlU6tTq8W+B6uCuldLTzRtWkkYjpGK1N8sjFs+diL+hSAAAAAAAM4GcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC3qAt+YAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAG+AtADn+g5wAC8wcAAdyBeQAAgQAAgTnAAJyqOf6AAOcLzAAFDuQAAvIOYAAgaAATn+YTnAAc45wAC8wd/IABwUADEAAf/2Q==',
                            ),
                            imageBuilder: (path) => ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
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
                              width: 300.0,
                              autoPlay: false,
                              looping: true,
                              showControls: true,
                              allowFullScreen: true,
                              allowPlaybackSpeedMenu: false,
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if ((_model.uploadedFileUrl != null &&
                                      _model.uploadedFileUrl != '') ||
                                  (widget.videoLiink != null &&
                                      widget.videoLiink != '')) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Remove the added media before adding the another',
                                      style: GoogleFonts.getFont(
                                        'Quicksand',
                                        color: Color(0xFF664229),
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor: Color(0xFFE0DED3),
                                  ),
                                );
                              } else {
                                final selectedMedia =
                                    await selectMediaWithSourceBottomSheet(
                                  context: context,
                                  maxWidth: 200.00,
                                  maxHeight: 200.00,
                                  allowPhoto: true,
                                  allowVideo: true,
                                  backgroundColor: Color(0xFFE0DED3),
                                  textColor: Color(0xFF664229),
                                );
                                if (selectedMedia != null &&
                                    selectedMedia.every((m) =>
                                        validateFileFormat(
                                            m.storagePath, context))) {
                                  setState(() => _model.isDataUploading = true);
                                  var selectedUploadedFiles =
                                      <FFUploadedFile>[];

                                  var downloadUrls = <String>[];
                                  try {
                                    selectedUploadedFiles = selectedMedia
                                        .map((m) => FFUploadedFile(
                                              name:
                                                  m.storagePath.split('/').last,
                                              bytes: m.bytes,
                                              height: m.dimensions?.height,
                                              width: m.dimensions?.width,
                                              blurHash: m.blurHash,
                                            ))
                                        .toList();

                                    downloadUrls = (await Future.wait(
                                      selectedMedia.map(
                                        (m) async => await uploadData(
                                            m.storagePath, m.bytes),
                                      ),
                                    ))
                                        .where((u) => u != null)
                                        .map((u) => u!)
                                        .toList();
                                  } finally {
                                    _model.isDataUploading = false;
                                  }
                                  if (selectedUploadedFiles.length ==
                                          selectedMedia.length &&
                                      downloadUrls.length ==
                                          selectedMedia.length) {
                                    setState(() {
                                      _model.uploadedLocalFile =
                                          selectedUploadedFiles.first;
                                      _model.uploadedFileUrl =
                                          downloadUrls.first;
                                    });
                                  } else {
                                    setState(() {});
                                    return;
                                  }
                                }

                                await currentUserReference!.update({
                                  'videos': FieldValue.arrayUnion(
                                      [_model.uploadedFileUrl]),
                                });
                              }
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              height: MediaQuery.sizeOf(context).height * 0.35,
                              decoration: BoxDecoration(
                                color: Color(0x38664229),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.94, -0.94),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await currentUserReference!.update({
                                  'videos': FieldValue.arrayRemove([
                                    _model.uploadedFileUrl != null &&
                                            _model.uploadedFileUrl != ''
                                        ? _model.uploadedFileUrl
                                        : widget.videoLiink
                                  ]),
                                });
                              },
                              child: Icon(
                                Icons.cancel,
                                color: Color(0xFF664229),
                                size: 30.0,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.02, -0.12),
                            child: Icon(
                              Icons.add_rounded,
                              color: Color(0x81664229),
                              size: 200.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: wrapWithModel(
                          model: _model.hintComponentModel,
                          updateCallback: () => setState(() {}),
                          child: HintComponentWidget(
                            hint:
                                'Photos with prompts get more likes and spark more conversations',
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
      ),
    );
  }
}
