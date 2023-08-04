import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_sign_up26_model.dart';
export 'profile_sign_up26_model.dart';

class ProfileSignUp26Widget extends StatefulWidget {
  const ProfileSignUp26Widget({Key? key}) : super(key: key);

  @override
  _ProfileSignUp26WidgetState createState() => _ProfileSignUp26WidgetState();
}

class _ProfileSignUp26WidgetState extends State<ProfileSignUp26Widget> {
  late ProfileSignUp26Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileSignUp26Model());
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 150.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/classy.jpg',
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(33.0, 0.0, 33.0, 50.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '12xa1fyq' /* Show off the person behind the... */,
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Quicksand',
                                  color: Color(0xFF664229),
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('ProfileSignUp27');
                },
                text: FFLocalizations.of(context).getText(
                  '15vsos5y' /* Continue */,
                ),
                options: FFButtonOptions(
                  width: 500.0,
                  height: 93.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFF664229),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Quicksand',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
